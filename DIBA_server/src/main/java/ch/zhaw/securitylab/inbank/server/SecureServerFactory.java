package ch.zhaw.securitylab.inbank.server;

import io.javalin.Javalin;
//import io.javalin.embeddedserver.jetty.EmbeddedJettyFactory;
import org.eclipse.jetty.http.HttpVersion;
import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.SecureRequestCustomizer;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.SslConnectionFactory;
import org.eclipse.jetty.util.ssl.SslContextFactory;

import java.io.File;

public class SecureServerFactory {

	//public static void makeSecure(Javalin app) {
	public static Server makeSecure() {
		//app.embeddedServer(new EmbeddedJettyFactory(() -> {
		//app.server(server -> {
			Server server = new Server();
			
			//File keystore = new File("keystore/keystore").getAbsoluteFile();
			File keystore = new File("keystore/new/really/keystore.jks").getAbsoluteFile();
			// Initialize SSL Context factory with keystore
			SslContextFactory sslContextFactory = new SslContextFactory();
			sslContextFactory.setKeyStorePath(keystore.toString());
			sslContextFactory.setKeyStorePassword("password");
			sslContextFactory.setKeyManagerPassword("password");
			sslContextFactory.setExcludeCipherSuites("SSL_RSA_WITH_DES_CBC_SHA",
					                                 "SSL_DHE_RSA_WITH_DES_CBC_SHA", 
					                                 "SSL_DHE_DSS_WITH_DES_CBC_SHA",
					                                 "SSL_RSA_EXPORT_WITH_RC4_40_MD5",
					                                 "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA",
					                                 "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA",
					                                 "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");

			//  Add SSL HTTP Configuration
			HttpConfiguration https_config = new HttpConfiguration();
			https_config.addCustomizer(new SecureRequestCustomizer());

			// Create SSL Connector
			ServerConnector sslConnector = new ServerConnector(server,
				                                               new SslConnectionFactory(sslContextFactory, HttpVersion.HTTP_1_1.asString()),
				                                               new HttpConnectionFactory(https_config));
			sslConnector.setPort(8443);
			server.addConnector(sslConnector);
			
			return server;
		}//);//);
	//}
}
