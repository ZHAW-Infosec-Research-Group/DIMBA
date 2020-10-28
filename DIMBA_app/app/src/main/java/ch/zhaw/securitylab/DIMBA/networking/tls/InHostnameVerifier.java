package ch.zhaw.securitylab.DIMBA.networking.tls;

import ch.zhaw.securitylab.DIMBA.DIMBA;
import ch.zhaw.securitylab.DIMBA.data.metasettings.Metasettings;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public class InHostnameVerifier implements HostnameVerifier {
	// Let's assume your server app is hosting inside a server machine
	// which has a server certificate in which "Issued to" is "localhost",for example.
	// Then, inside verify method you can verify "localhost".
	// If not, you can temporarily return true
	@Override
	public boolean verify(String hostname, SSLSession session) {
		Metasettings metasettings = DIMBA.get().getMetasettingsDao().getSettings();
		String connectedIp = metasettings.getIp();
//		if(metasettings.getDifficulty() == Difficulty.LEVEL_5 || metasettings.getDifficulty() == Difficulty.LEVEL_4){
//		if(metasettings.getDifficulty() != Difficulty.LEVEL_1){
		if(false){
			System.out.println(connectedIp);
			System.out.println(hostname);
			return connectedIp.equals(hostname);
		}else{
			return true;
		}
	}
}
