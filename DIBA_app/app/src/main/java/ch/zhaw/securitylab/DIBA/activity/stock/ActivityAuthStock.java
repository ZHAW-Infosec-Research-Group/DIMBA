package ch.zhaw.securitylab.DIBA.activity.stock;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;


import com.github.mikephil.charting.charts.CandleStickChart;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.CandleData;
import com.github.mikephil.charting.data.CandleDataSet;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.interfaces.datasets.ICandleDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;

import java.util.ArrayList;
import java.util.Random;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;

//public class ActivityAuthStock extends AppCompatActivity implements OnChartGestureListener, OnChartValueSelectedListener {
public class ActivityAuthStock extends ActivityDIBAAbstract implements AdapterView.OnItemClickListener, SensorEventListener {

    private SharedPreferences defaultPreferences;
    private CandleStickChart candleStick;

    private SensorManager mSensorManager;
    private Sensor mAccelerometer;
    private Thread thread;
    private LineChart lineChart;
    private boolean plotData = true;

    private ListView currentListView;
    private String[] currentNames;


    public ActivityAuthStock() { super(R.layout.activity_auth_stock, ToolbarMode.NAV_AUTH, R.id.nav_go_Stock); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        defaultPreferences = PreferenceManager.getDefaultSharedPreferences(DIBA.get());

        //////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////       LINE CHART                         /////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////
        // https://github.com/laxmimerit/Real-Time-Accelerometer-Data-Plot/blob/master/app/src/main/java/com/example/mbreath/realtimeaccelerometer/MainActivity.java

        mSensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        mAccelerometer = mSensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);

        if (mAccelerometer != null) {
            mSensorManager.registerListener(this, mAccelerometer, SensorManager.SENSOR_DELAY_GAME);
        }

        lineChart = (LineChart) findViewById(R.id.lineChart);
        lineChart.getDescription().setEnabled(true);

        // enable touch gestures
        lineChart.setTouchEnabled(true);

        // enable scaling and dragging
        lineChart.setDragEnabled(true);
        lineChart.setScaleEnabled(true);
        lineChart.setDrawGridBackground(false);

        // if disabled, scaling can be done on x- and y-axis separately
        lineChart.setPinchZoom(true);

        // set an alternative background color
        lineChart.setBackgroundColor(Color.WHITE);

        LineData linedata = new LineData();
        linedata.setValueTextColor(Color.WHITE);

        // add empty data
        lineChart.setData(linedata);

        // get the legend (only possible after setting data)
        Legend l = lineChart.getLegend();
        l.setForm(Legend.LegendForm.LINE);
        l.setTextColor(Color.WHITE);

        XAxis xl = lineChart.getXAxis();
        xl.setTextColor(Color.WHITE);
        xl.setDrawGridLines(true);
        xl.setAvoidFirstLastClipping(true);
        xl.setEnabled(true);

        YAxis leftAxis = lineChart.getAxisLeft();
        leftAxis.setTextColor(Color.WHITE);
        leftAxis.setDrawGridLines(false);
        leftAxis.setAxisMaximum(10f);
        leftAxis.setAxisMinimum(0f);
        leftAxis.setDrawGridLines(true);

        YAxis rightAxis = lineChart.getAxisRight();
        rightAxis.setEnabled(false);

        lineChart.getAxisLeft().setDrawGridLines(false);
        lineChart.getXAxis().setDrawGridLines(false);
        lineChart.setDrawBorders(false);



        startPlot();


        //////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////       CANDLE STICK                       /////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////
        candleStick = (CandleStickChart) findViewById(R.id.candleStick);
        ArrayList<CandleEntry> values1 = randomValuesUp();
        ArrayList<String>      dates   = getDates();

//        linechart.setOnChartGestureListener(ActivityAuthStock.this);
//        linechart.setOnChartValueSelectedListener(ActivityAuthStock.this);

        candleStick.setDragEnabled(true);
        candleStick.setScaleEnabled(false);
        XAxis xAxis = candleStick.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setValueFormatter(new MyCustomFormatter(dates));

        CandleDataSet set1 = new CandleDataSet(values1, "USD/EUR 1");
        set1.setDecreasingColor(Color.RED);
        set1.setIncreasingColor(Color.GREEN);
        set1.setShadowColorSameAsCandle(true);
        set1.setShowCandleBar(true);
        set1.setShadowWidth(3f);

        ArrayList<ICandleDataSet> datasets = new ArrayList<>();
        datasets.add(set1);
        CandleData data = new CandleData(datasets);
        candleStick.setData(data);



        //////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////       LIST                               /////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////
        runOnUiThread(() ->
        {
            currentNames = new String[]{"USD/CHF\t +1,4%", "CHF/EUR\t +0.2%", "EUR/USD\t -1%"};
            currentListView = findViewById(R.id.currentList);
            ArrayAdapter<String> stockAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, currentNames);
            currentListView.setAdapter(stockAdapter);
            currentListView.setOnItemClickListener(this);
        });
    }

    private void startPlot() {
        if(thread!=null) {
            thread.interrupt();
        }
        thread = new Thread(new Runnable() {
            @Override
            public void run() {
                while(true) {
                    plotData = true;
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        thread.start();
    }

    private void addEntry(SensorEvent event) {

        LineData data = lineChart.getData();

        if (data != null) {
            ILineDataSet set = data.getDataSetByIndex(0);
            if (set == null) {
                set = createSet();
                data.addDataSet(set);
            }

            Random rand = new Random();
            int randomNum = rand.nextInt(2) ;
            data.addEntry(new Entry(set.getEntryCount(), event.values[0] + randomNum), 0);

            if (set.getEntryCount() >= 20) {
                set.removeFirst();
                for (int i=0; i<set.getEntryCount(); i++) {
                    Entry entryToChange = set.getEntryForIndex(i);
                    entryToChange.setX(entryToChange.getX() - 1);
                }
            }

            data.notifyDataChanged();
            lineChart.notifyDataSetChanged();
            lineChart.setVisibleXRangeMaximum(150);
            lineChart.moveViewToX(data.getEntryCount());

        }
    }

    private LineDataSet createSet() {
        LineDataSet set  = new LineDataSet(null, "Dynamic Data");
        set.setAxisDependency(YAxis.AxisDependency.LEFT);
        set.setLineWidth(3f);
        set.setColor(Color.BLUE);
        set.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        set.setCubicIntensity(0.2f);
        return set;
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        if(plotData) {
            addEntry(event);
            plotData = false;
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }

    private class MyCustomFormatter implements IAxisValueFormatter {

        private ArrayList<String> dates;

        private MyCustomFormatter(ArrayList<String> dates) {
            this.dates = dates;
        }

        public String getFormattedValue(float value, AxisBase axis) {
            return this.dates.get((int) value);
        }

        @Override
        public int getDecimalDigits() {
            return 0;
        }
    }

    private ArrayList<String> getDates() {
        ArrayList<String> dates =  new ArrayList<>();
        int n = 20;
        for ( int i=1; i<=n; i++) {
            dates.add(String.valueOf(i%30)+"-02-2020");
        }
        return dates;
    }

    private ArrayList<CandleEntry> randomValuesUp() {
        ArrayList<CandleEntry> values =  new ArrayList<>();
        int n = 20;
        int max = 200;
        int min = 180;
        for ( int i=1; i<=n; i++) {
                float v = (float) (Math.random() * ((max - min) + 1)) + min;
                values.add(new CandleEntry(i, v+4, v-15, v-12, v));
            }
        return values;
    }

    private ArrayList<CandleEntry> randomValuesDown() {
        ArrayList<CandleEntry> values =  new ArrayList<>();
        int n = 20;
        int max = 200;
        int min = 160;
        for ( int i=1; i<=n; i++) {
            float v = (float) (Math.random() * ((max - min) + 1)) + min;
            values.add(new CandleEntry(i, v+1, v-15, v+6, v-19));
        }
        return values;
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        Toast.makeText(ActivityAuthStock.this, "Should replace candleStick chart!", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onResume() {
        super.onResume();
        mSensorManager.registerListener(this, mAccelerometer, SensorManager.SENSOR_DELAY_GAME);
    }
    @Override
    protected void onPause() {
        super.onPause();
        if (thread!=null) {
            thread.interrupt();
        }
        mSensorManager.unregisterListener(this);
    }
    @Override
    protected void onDestroy() {
        mSensorManager.unregisterListener(ActivityAuthStock.this);
        thread.interrupt();
        super.onDestroy();
    }
}