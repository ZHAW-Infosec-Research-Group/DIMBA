package ch.zhaw.securitylab.DIBA.networking.tls;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

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
			chain[0].checkValidity();
			String x500Principal = chain[0].getSubjectX500Principal().getName();
			String expected = "O=DIBA Server,L=Default City,C=XX";
			System.out.println("Expected: "+expected+"\n Received: "+x500Principal);
			if (!x500Principal.equals(expected)) throw new CertificateException("untrusted Certificate");
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
