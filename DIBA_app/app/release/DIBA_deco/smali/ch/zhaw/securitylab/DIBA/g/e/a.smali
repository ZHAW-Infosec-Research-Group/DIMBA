.class public Lch/zhaw/securitylab/DIBA/g/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object p1

    invoke-interface {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
