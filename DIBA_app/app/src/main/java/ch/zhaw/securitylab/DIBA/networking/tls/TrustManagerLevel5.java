package ch.zhaw.securitylab.DIBA.networking.tls;


import android.util.Log;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import ch.zhaw.securitylab.DIBA.helpers.Extras;

public class TrustManagerLevel5 implements X509TrustManager {

	private X509TrustManager trustManager;


	private TrustManagerLevel5(TrustManager[] trustManagers) {
		super();
		this.trustManager = (X509TrustManager) trustManagers[0];
	}

	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerLevel5(trustManagers)};
	}

	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		this.trustManager.checkClientTrusted(chain, authType);
	}

	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		X509Certificate receivedCertificate = chain[0];

		System.out.println(receivedCertificate.toString());
		System.out.println("******************************************************************");
		System.out.println(getAcceptedIssuers()[0].toString());

		String owner = receivedCertificate.getSubjectX500Principal().getName();
		String issuer = receivedCertificate.getIssuerDN().getName();
		String expectedOwner  = "O=DIBA Server";
		String expectedIssuer = "O=DIBA CA";
		Log.println(Log.INFO, Extras.LOG_TAG, "Certificate Check Security - Level 5\n Check the certificate dates validity, the owner, the issuer and the issuer pinned public key.\n");
		Log.println(Log.INFO, Extras.LOG_TAG, "Dates: \n Not Before: " + receivedCertificate.getNotBefore().toString() +
				"\n Not After: "+receivedCertificate.getNotAfter().toString());
		receivedCertificate.checkValidity();

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected owner: "+expectedOwner+"\n Received owner: "+owner);
		if (!owner.equals(expectedOwner)) throw new CertificateException("Untrusted owner");

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected issuer: "+expectedIssuer+"\n Received issuer: "+issuer);
		if(!expectedIssuer.equals(issuer)) throw new CertificateException("Untrusted issuer");
		// Check that issuer certificate is trusted
		X509Certificate trusted = getAcceptedIssuers()[0];
		if (! trusted.equals(receivedCertificate))throw new CertificateException("Untrusted certificate");
//		this.trustManager.checkServerTrusted(chain, authType);
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers() {
		return trustManager.getAcceptedIssuers();
	}
	
}
