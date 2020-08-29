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
