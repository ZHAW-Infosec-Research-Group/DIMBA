.class public Lch/zhaw/securitylab/DIBA/g/e/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>([Ljavax/net/ssl/TrustManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/e/c;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public static a([Ljavax/net/ssl/TrustManager;)[Ljavax/net/ssl/TrustManager;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/e/c;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/g/e/c;-><init>([Ljavax/net/ssl/TrustManager;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x4

    const-string p2, "DIBA"

    const-string v0, "Certificate Check Security - Level 1\n No checks."

    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/e/c;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
