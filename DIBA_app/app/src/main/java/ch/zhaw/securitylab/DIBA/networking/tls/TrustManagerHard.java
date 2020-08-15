package ch.zhaw.securitylab.DIBA.networking.tls;



import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class TrustManagerHard implements X509TrustManager {

	private X509TrustManager trustManager;
	
	private TrustManagerHard(TrustManager[] trustManagers) {
		this.trustManager = (X509TrustManager) trustManagers[0];
	}
	
	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerHard(trustManagers)};
	}
	
	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
	}
	
	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		X509Certificate[] trusted = trustManager.getAcceptedIssuers();
		if (!trusted[0].equals(chain[0]))throw new CertificateException("untrusted Certificate");
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers()
	{
		return trustManager.getAcceptedIssuers();
	}
	
}
