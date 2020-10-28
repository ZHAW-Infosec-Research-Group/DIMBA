package ch.zhaw.securitylab.DIMBA.networking.tls;



import android.util.Log;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import ch.zhaw.securitylab.DIMBA.helpers.Extras;

public class TrustManagerLevel3 implements X509TrustManager {

	private X509TrustManager trustManager;


	private TrustManagerLevel3(TrustManager[] trustManagers) {
		super();
		this.trustManager = (X509TrustManager) trustManagers[0];
	}

	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerLevel3(trustManagers)};
	}

	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		this.trustManager.checkClientTrusted(chain, authType);
	}

	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		X509Certificate receivedCertificate = chain[0];
		String owner = receivedCertificate.getSubjectX500Principal().getName();
		String issuer = receivedCertificate.getIssuerDN().getName();
		String expectedOwner  = "O=DIMBA Server";
		String expectedIssuer = "O=DIMBA CA";
		Log.println(Log.INFO, Extras.LOG_TAG, "Certificate Check Security - Level 3\n Check the certificate dates validity, the owner, the issuer and if certificate is signed by a trusted CA.\n");
		Log.println(Log.INFO, Extras.LOG_TAG, "Dates: \n Not Before: " + receivedCertificate.getNotBefore().toString() +
													"\n Not After: "+receivedCertificate.getNotAfter().toString());
		receivedCertificate.checkValidity();

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected owner: "+expectedOwner+"\n Received owner: "+owner);
		if (!owner.equals(expectedOwner)) throw new CertificateException("Untrusted owner");

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected issuer: "+expectedIssuer+"\n Received issuer: "+issuer);
		if(!expectedIssuer.equals(issuer)) throw new CertificateException("Untrusted issuer");
		// Check certificate chain
		this.trustManager.checkServerTrusted(chain, authType);
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers() {
		return trustManager.getAcceptedIssuers();
	}
	
}
