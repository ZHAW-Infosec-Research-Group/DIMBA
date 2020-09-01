package ch.zhaw.securitylab.DIBA.networking.tls;



import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class TrustManagerLevel3 implements X509TrustManager {

	private X509TrustManager trustManager;
	
	private TrustManagerLevel3(TrustManager[] trustManagers) {
		this.trustManager = (X509TrustManager) trustManagers[0];
	}
	
	public static TrustManager[] getWrappedTrustManagers(TrustManager[] trustManagers) {
		return new TrustManager[]{new TrustManagerLevel3(trustManagers)};
	}
	
	@Override
	public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {}

	@Override
	public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		X509Certificate[] trusted = trustManager.getAcceptedIssuers();
//		System.out.println(trusted[0]);
//		System.out.println("Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....Otherwise....");
//		System.out.println(chain[0]);
//		System.out.println("Subject x500 Principal Name \n" +chain[0].getSubjectX500Principal().getName());
		chain[0].checkValidity();
		String x500Principal = chain[0].getSubjectX500Principal().getName();
		System.out.println("Expected: OU=DIBA,O=ZHAW DIBA,L=Winterthur,ST=Zuerich,C=CH\n Received: "+x500Principal);
		if (!x500Principal.equals("OU=DIBA,O=ZHAW DIBA,L=Winterthur,ST=Zuerich,C=CH")) throw new CertificateException("untrusted Certificate");
		if (!trusted[0].equals(chain[0]))throw new CertificateException("untrusted Certificate");
	}
	
	@Override
	public X509Certificate[] getAcceptedIssuers() {
		return trustManager.getAcceptedIssuers();
	}
	
}
