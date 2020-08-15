package ch.zhaw.securitylab.DIBA.networking.tls;


import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class TrustManagerVeryEasy implements X509TrustManager {

	private X509TrustManager trustManager;
	
	private TrustManagerVeryEasy(TrustManager[] trustManagers) {
		this.trustManager = (X509TrustManager) trustManagers[0];
	}
	
	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerVeryEasy(trustManagers)};
	}
	
	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException
	{
	}
	
	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException
	{
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers()
	{
		return trustManager.getAcceptedIssuers();
	}
	
}
