package ch.zhaw.securitylab.DIBA.networking.tls;


import android.os.Build;
import android.util.Log;

import androidx.annotation.RequiresApi;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Base64;

import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;

import ch.zhaw.securitylab.DIBA.helpers.Extras;

public class TrustManagerLevel4 implements X509TrustManager {

	private X509TrustManager trustManager;


	private TrustManagerLevel4(TrustManager[] trustManagers) {
		super();
		this.trustManager = (X509TrustManager) trustManagers[0];
	}

	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerLevel4(trustManagers)};
	}

	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		this.trustManager.checkClientTrusted(chain, authType);
	}

	@RequiresApi(api = Build.VERSION_CODES.O)
	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		X509Certificate receivedCertificate = chain[0];
		String owner = receivedCertificate.getSubjectX500Principal().getName();
		String issuer = receivedCertificate.getIssuerDN().getName();
		String expectedOwner  = "O=DIBA Server,L=Default City,C=XX";
		String expectedIssuer = "O=DIBA CA,L=Default City,C=XX";
		Log.println(Log.INFO, Extras.LOG_TAG, "Certificate Check Security - Level 4\n Check the certificate dates validity, the owner, the issuer and the issuer pinned public key.\n");
		Log.println(Log.INFO, Extras.LOG_TAG, "Dates: \n Not Before: " + receivedCertificate.getNotBefore().toString() +
				"\n Not After: "+receivedCertificate.getNotAfter().toString());
		receivedCertificate.checkValidity();

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected owner: "+expectedOwner+"\n Received owner: "+owner);
		if (!owner.equals(expectedOwner)) throw new CertificateException("Untrusted owner");

		Log.println(Log.INFO, Extras.LOG_TAG, "Expected issuer: "+expectedIssuer+"\n Received issuer: "+issuer);
		if(!expectedIssuer.equals(issuer)) throw new CertificateException("Untrusted issuer");
		// Check that issuer certificate is trusted
		this.trustManager.checkServerTrusted(chain, authType);
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers() {
		return trustManager.getAcceptedIssuers();
	}
	
}
