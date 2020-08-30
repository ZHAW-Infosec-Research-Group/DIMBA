package ch.zhaw.securitylab.DIBA.networking.tls;

import androidx.annotation.NonNull;
import android.util.Log;
import ch.zhaw.securitylab.DIBA.DIBA;
import ch.zhaw.securitylab.DIBA.R;
import ch.zhaw.securitylab.DIBA.data.metasettings.Difficulty;
import ch.zhaw.securitylab.DIBA.data.metasettings.Metasettings;
import ch.zhaw.securitylab.DIBA.helpers.Extras;
import com.android.volley.toolbox.HurlStack;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProxySelector;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;

/**
 * HurlStack implementation for volley, offers different degrees of security based on Metasettings Difficulty.
 */
public class InHttpsStack extends HurlStack {

	@Override
	protected HttpURLConnection createConnection(URL url) throws IOException {
		HttpsURLConnection httpsURLConnection = (HttpsURLConnection) super.createConnection(url);
		java.net.Proxy proxy = null;
		try {
			proxy = ProxySelector.getDefault().select(url.toURI()).get(0);
		} catch (Exception e) {
			Log.e(Extras.LOG_TAG, e.getMessage());
		}
		
		if (proxy == null) {
			httpsURLConnection = (HttpsURLConnection) url.openConnection();
		} else {
			httpsURLConnection = (HttpsURLConnection) url.openConnection(proxy);
		}
		
		try {
			httpsURLConnection.setSSLSocketFactory(getSSLSocketFactory());
			httpsURLConnection.setHostnameVerifier(new InHostnameVerifier());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return httpsURLConnection;
	}
	
	private SSLSocketFactory getSSLSocketFactory()
		throws CertificateException, KeyStoreException, IOException, NoSuchAlgorithmException, KeyManagementException {
		Metasettings metasettings = DIBA.get().getMetasettingsDao().getSettings();
		KeyStore keyStore = getKeyStore(metasettings.getDifficulty());
		
		// Get and initialize TrustManagerFactory
		String tmfAlgorithm = TrustManagerFactory.getDefaultAlgorithm();
		TrustManagerFactory tmf = TrustManagerFactory.getInstance(tmfAlgorithm);
		tmf.init(keyStore);
		
		TrustManager[] wrappedTrustManagers = getTrustManagers(tmf, metasettings.getDifficulty());
		
		// Create the SSLContext with the wrapped trust manager
		SSLContext sslContext = SSLContext.getInstance("TLS");
		sslContext.init(null, wrappedTrustManagers, null);
		
		// Return the socker factory from the context
		return sslContext.getSocketFactory();
	}
	
	@NonNull
	private TrustManager[] getTrustManagers(TrustManagerFactory tmf, Difficulty difficulty) {
		if (difficulty == Difficulty.LEVEL_2) {
			return TrustManagerLevel2.getWrappedTrustManagers(tmf.getTrustManagers());
		} else if (difficulty == Difficulty.LEVEL_1) {
			return TrustManagerLevel1.getWrappedTrustManagers(tmf.getTrustManagers());
		} else if (difficulty == Difficulty.LEVEL_3) {
			return TrustManagerLevel3.getWrappedTrustManagers(tmf.getTrustManagers());
		} else {
			return tmf.getTrustManagers();
		}
	}
	
	@NonNull
	private KeyStore getKeyStore(Difficulty difficulty) throws CertificateException, IOException, KeyStoreException, NoSuchAlgorithmException {
		// Fetch and create certificate
		
		// Get and populate keystore
		//KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
		KeyStore keyStore = null;
		
		if (difficulty == Difficulty.LEVEL_5 || difficulty == Difficulty.LEVEL_3) {
			keyStore = KeyStore.getInstance("BKS");
			
			CertificateFactory cf = CertificateFactory.getInstance("X.509");
//			InputStream caInput = DIBA.get().getResources().openRawResource(R.raw.in_bank_cert);
			InputStream caInput = DIBA.get().getResources().openRawResource(R.raw.diba_cert);
			Certificate ca = cf.generateCertificate(caInput);
			caInput.close();
			
			keyStore.load(null, null);
			keyStore.setCertificateEntry("ca", ca);

		} else if (difficulty == Difficulty.LEVEL_4) {
			keyStore = KeyStore.getInstance("BKS");
			
			CertificateFactory cf = CertificateFactory.getInstance("X.509");
//			InputStream caInput = DIBA.get().getResources().openRawResource(R.raw.in_bank_root_cert);
			InputStream caInput = DIBA.get().getResources().openRawResource(R.raw.ca_cert);
			Certificate ca = cf.generateCertificate(caInput);
			caInput.close();
			
			keyStore.load(null, null);
			keyStore.setCertificateEntry("ca", ca);

		} else {
			
			keyStore = KeyStore.getInstance("AndroidCAStore");
			keyStore.load(null);
		}
		
		return keyStore;
	}
}
