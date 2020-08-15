package ch.zhaw.securitylab.DIBA.activity.stock;

import android.app.TaskStackBuilder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.activity.ActivityDIBAAbstract;
import ch.zhaw.securitylab.DIBA.activity.ToolbarMode;

public class ActivityAuthStockList extends ActivityDIBAAbstract implements AdapterView.OnItemClickListener {

    private SharedPreferences defaultPreferences;
    private ListView stockListView;
    private ListView forexListView;
    private ListView commodityListView;
    private String[] stockNames;
    private String[] forexNames;
    private String[] commodityNames;

    public ActivityAuthStockList() {
        super(R.layout.activity_auth_stock_list, ToolbarMode.NAV_AUTH, R.id.nav_go_Stock);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        defaultPreferences = PreferenceManager.getDefaultSharedPreferences(DIBA.get());

        runOnUiThread(() ->
        {
            forexNames = new String[]{"USD/CHF\t +1,4%", "CHF/EUR\t +0.2%", "EUR/USD\t -1%"};
            addList(forexListView,forexNames, R.id.ForexList);
            commodityNames = new String[]{"Crude Oil", "Gold", "Corn", "Natural Gas"};
            addList(commodityListView,commodityNames, R.id.CommodityList);
            stockNames = new String[]{"APPL", "GOOGL", "MSFT"};
            addList(stockListView,stockNames, R.id.StockList);
        });
    }

    public void addList(ListView lv, String[] list, int id) {
        lv = findViewById(id);
        ArrayAdapter<String> stockAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, list);
        lv.setAdapter(stockAdapter);
        lv.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        Class clazz = ActivityAuthStock.class;

        TaskStackBuilder.create(this)
                .addParentStack(clazz)
                .addNextIntent(new Intent(this, clazz))
                .startActivities();
    }
}
