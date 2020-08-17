package ch.zhaw.securitylab.DIBA;

import android.app.Application;

import androidx.room.Room;

import android.util.Log;

import ch.zhaw.securitylab.DIBA.data.invest.InvestmentDao;
import ch.zhaw.securitylab.DIBA.data.invest.InvestmentDb;
import ch.zhaw.securitylab.DIBA.data.messages.MessageDB;
import ch.zhaw.securitylab.DIBA.data.metasettings.Difficulty;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;
import ch.zhaw.securitylab.DIBA.data.metasettings.MetasettingsDao;
import ch.zhaw.securitylab.DIBA.data.metasettings.MetasettingsDb;
import ch.zhaw.securitylab.DIBA.data.payment.PaymentDao;
import ch.zhaw.securitylab.DIBA.data.payment.PaymentDb;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import ch.zhaw.securitylab.DIBA.networking.tls.InHttpsStack;

import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;

import net.sqlcipher.database.SupportFactory;


/**
 * This is the application Context of the DIBA app. It is started when the app first launches and its onCreate
 * method initializes crucial parts of the application such as the communication and databases.
 * It also stores the name and jwt of the currently logged in user.
 */
public class DIBA extends Application {
    // -------------------------------------------- //
    // NATIVE LIBRARY
    // -------------------------------------------- //
    public native String loadsecret();

    static {
        System.loadLibrary("native-lib");
    }

    private static final String NAME_DB_INVESTMENT   = "investments";
    private static final String NAME_DB_PAYMENT      = "payments";
    private static final String NAME_DB_METASETTINGS = "metasettings";

    // Databases
    private InvestmentDb investmentDb;

    public InvestmentDao getInvestmentDao() {
        return investmentDb == null ? null : investmentDb.investmentDao();
    }

    public void metaClearInvestments() {
        if (getInvestmentDao() != null) getInvestmentDao().metaReset();
    }

    private MessageDB messageDB;

    public MessageDB getMessageDB() {
        return this.messageDB;
    }

    public void metaClearMessages() {
        if (messageDB != null) messageDB.metaResetAllMessages();
    }

    private MetasettingsDb metasettingsDb;

    public MetasettingsDb getMetasettingsDb() {
        return this.metasettingsDb;
    }

    public MetasettingsDao getMetasettingsDao() {
        return metasettingsDb == null ? null : metasettingsDb.metasettingsDao();
    }

    public void metaClearMetasettings() {
        if (getMetasettingsDao() != null) getMetasettingsDao().metaReset();
    }

    private PaymentDb paymentDb;

    public PaymentDb getPaymentDb() {
        return paymentDb;
    }

    public PaymentDao getPaymentDao() {
        return paymentDb == null ? null : paymentDb.paymentDao();
    }

    public void metaClearPayments() {
        if (getPaymentDao() != null) getPaymentDao().metaReset();
    }

    // Connection
    private RequestQueue queue;

    public RequestQueue getQueue() {
        return this.queue;
    }

    // Current user
    private String userName = null;

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void resetUserName() {
        this.setUserName(null);
    }

    String jwtToken = null;

    public String getJwt() {
        return jwtToken;
    }

    public void setJwt(String jwt) {
        this.jwtToken = jwt;
    }

    public String getJwtOrThrow() {
        if (jwtToken == null) {
            throw new RuntimeException("No jwt was set.");
        }
        return jwtToken;
    }

    public void resetJwt() {
        this.setJwt(null);
    }

    String paySlip;

    public String getPaySlip() {
        return this.paySlip;
    }

    public void setPaySlip(String paySlip) {
        this.paySlip = paySlip;
    }

    // -------------------------------------------- //
    // CONSTRUCT & CREATE
    // -------------------------------------------- //

    private static DIBA i;

    public static DIBA get() {
        return i;
    }

    @Override
    public void onCreate() {
        super.onCreate();

        // Create database
        investmentDb   = Room.databaseBuilder(this, InvestmentDb.class, NAME_DB_INVESTMENT).build();
        metasettingsDb = Room.databaseBuilder(this, MetasettingsDb.class, NAME_DB_METASETTINGS).build();
        messageDB      = new MessageDB(this);

        // Encrypted payment DB
        final byte[] secret = loadsecret().getBytes();
        final SupportFactory factory = new SupportFactory(secret);
        paymentDb = Room.databaseBuilder(this, PaymentDb.class, NAME_DB_PAYMENT)
                .openHelperFactory(factory)
                .build();

        // Fill Database once with default values
        initMetasettingsDB();
        initRequestQueue();
        i = this;

        // SKIP LOGIN
//		Intent intent = new Intent(this, ActivitySurvey.class);
//		TaskStackBuilder.create(this)
//				.addNextIntent(intent)
//				.startActivities();

    }

    // -------------------------------------------- //
    // INITIALIZE
    // -------------------------------------------- //

    public void initRequestQueue() {
        queue = Volley.newRequestQueue(this, new InHttpsStack());
    }

    public void initMetasettingsDB() {
        new Thread(() ->
        {
            MetasettingsDao metasettingsDao = metasettingsDb.metasettingsDao();
            Metasettings metasettings = metasettingsDao.getSettings();
            if (metasettings == null) {
                metasettings = new Metasettings("10.0.2.2", Difficulty.HARD, 50000);
                metasettings.setUid(1);
                metasettingsDao.insert(metasettings);
                Log.i(Extras.LOG_TAG, "Create Metasettings Entry");
            }
        }).start();
    }

}
