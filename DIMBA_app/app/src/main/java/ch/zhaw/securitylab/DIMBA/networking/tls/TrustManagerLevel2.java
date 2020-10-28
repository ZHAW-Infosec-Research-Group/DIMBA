package ch.zhaw.securitylab.DIMBA.networking.tls;

import android.util.Log;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import ch.zhaw.securitylab.DIMBA.helpers.Extras;

public class TrustManagerLevel2 implements X509TrustManager {

	private X509TrustManager trustManager;
	
	private TrustManagerLevel2(TrustManager[] trustManagers) {
		this.trustManager = (X509TrustManager) trustManagers[0];
	}
	
	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerLevel2(trustManagers)};
	}
	
	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		if (chain != null && chain.length > 0) {
			chain[0].checkValidity();
		} else {
			trustManager.checkClientTrusted(chain, authType);
		}
	}
	
	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		if (chain != null && chain.length > 0) {
			X509Certificate receivedCertificate = chain[0];
			String owner = chain[0].getSubjectX500Principal().getName();
			String expectedOwner = "O=DIMBA Server";

			Log.println(Log.INFO, Extras.LOG_TAG, "Certificate Check Security - Level 2\n Check the certificate dates validity and owner.\n");
			Log.println(Log.INFO, Extras.LOG_TAG, "Dates: \n Not Before: " + receivedCertificate.getNotBefore().toString() +
					"\n Not After: "+receivedCertificate.getNotAfter().toString());
			receivedCertificate.checkValidity();

			Log.println(Log.INFO, Extras.LOG_TAG, "Expected owner: "+expectedOwner+"\n Received owner: "+owner);
			if (!owner.equals(expectedOwner)) throw new CertificateException("Untrusted owner");
		} else {
			trustManager.checkServerTrusted(chain, authType);
		}
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers()
	{
		return trustManager.getAcceptedIssuers();
	}
	
}
