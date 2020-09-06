.class public final Lg/i0/j/i/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/i0/j/i/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/j/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/i0/j/c;->f:Lg/i0/j/c$a;

    invoke-virtual {v0}, Lg/i0/j/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Lg/i0/j/i/k;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/i0/j/i/g;

    invoke-direct {p1}, Lg/i0/j/i/g;-><init>()V

    return-object p1
.end method
