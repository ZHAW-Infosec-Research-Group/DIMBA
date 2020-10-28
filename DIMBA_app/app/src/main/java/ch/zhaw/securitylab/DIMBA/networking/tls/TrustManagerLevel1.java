package ch.zhaw.securitylab.DIMBA.networking.tls;


import android.util.Log;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import ch.zhaw.securitylab.DIMBA.helpers.Extras;

public class TrustManagerLevel1 implements X509TrustManager {

    private X509TrustManager trustManager;

    private TrustManagerLevel1(TrustManager[] trustManagers) {
        this.trustManager = (X509TrustManager) trustManagers[0];
    }

    public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
        return new TrustManager[]{new TrustManagerLevel1(trustManagers)};
    }

    @Override
    public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {}

    @Override
    public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        Log.println(Log.INFO, Extras.LOG_TAG, "Certificate Check Security - Level 1\n No checks.");
    }

    @Override
    public X509Certificate[] getAcceptedIssuers()
    {
        return trustManager.getAcceptedIssuers();
    }

}
