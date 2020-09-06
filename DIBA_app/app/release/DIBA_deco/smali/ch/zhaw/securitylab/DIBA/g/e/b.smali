.class public Lch/zhaw/securitylab/DIBA/g/e/b;
.super Le/a/a/w/j;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/a/w/j;-><init>()V

    return-void
.end method

.method private k(Lch/zhaw/securitylab/DIBA/data/metasettings/b;)Ljava/security/KeyStore;
    .locals 5

    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->f:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "ca"

    const-string v2, "X.509"

    const-string v3, "BKS"

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f110000

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p1, v1, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->g:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    if-ne p1, v0, :cond_1

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    goto :goto_0

    :cond_1
    const-string p1, "AndroidCAStore"

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    :goto_1
    return-object p1
.end method

.method private l()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a()Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/zhaw/securitylab/DIBA/g/e/b;->k(Lch/zhaw/securitylab/DIBA/data/metasettings/b;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a()Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lch/zhaw/securitylab/DIBA/g/e/b;->m(Ljavax/net/ssl/TrustManagerFactory;Lch/zhaw/securitylab/DIBA/data/metasettings/b;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private m(Ljavax/net/ssl/TrustManagerFactory;Lch/zhaw/securitylab/DIBA/data/metasettings/b;)[Ljavax/net/ssl/TrustManager;
    .locals 1

    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/g/e/c;->a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/g/e/d;->a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->e:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/g/e/e;->a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->f:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/g/e/f;->a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->g:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    if-ne p2, v0, :cond_4

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/g/e/g;->a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    :cond_4
    return-object p1
.end method


# virtual methods
.method protected f(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    invoke-super {p0, p1}, Le/a/a/w/j;->f(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIBA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    :goto_1
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    :try_start_1
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/e/b;->l()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/e/a;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/e/a;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p1
.end method
