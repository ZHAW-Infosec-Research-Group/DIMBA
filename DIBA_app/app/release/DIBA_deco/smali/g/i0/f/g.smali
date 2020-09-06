.class public final Lg/i0/f/g;
.super Lg/i0/i/f$d;
.source ""

# interfaces
.implements Lg/k;


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/net/Socket;

.field private d:Lg/v;

.field private e:Lg/b0;

.field private f:Lg/i0/i/f;

.field private g:Lh/g;

.field private h:Lh/f;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lg/i0/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:J

.field private final q:Lg/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/i0/f/h;Lg/g0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg/i0/i/f$d;-><init>()V

    iput-object p2, p0, Lg/i0/f/g;->q:Lg/g0;

    const/4 p1, 0x1

    iput p1, p0, Lg/i0/f/g;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/i0/f/g;->o:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lg/i0/f/g;->p:J

    return-void
.end method

.method private final A(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g0;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g0;

    invoke-virtual {v0}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v3}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v3}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v3, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1
.end method

.method private final E(I)V
    .locals 8

    iget-object v0, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lg/i0/f/g;->g:Lh/g;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lg/i0/f/g;->h:Lh/f;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v5, Lg/i0/i/f$b;

    const/4 v6, 0x1

    sget-object v7, Lg/i0/e/e;->h:Lg/i0/e/e;

    invoke-direct {v5, v6, v7}, Lg/i0/i/f$b;-><init>(ZLg/i0/e/e;)V

    iget-object v6, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v6}, Lg/g0;->a()Lg/a;

    move-result-object v6

    invoke-virtual {v6}, Lg/a;->l()Lg/x;

    move-result-object v6

    invoke-virtual {v6}, Lg/x;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v2, v3}, Lg/i0/i/f$b;->m(Ljava/net/Socket;Ljava/lang/String;Lh/g;Lh/f;)Lg/i0/i/f$b;

    invoke-virtual {v5, p0}, Lg/i0/i/f$b;->k(Lg/i0/i/f$d;)Lg/i0/i/f$b;

    invoke-virtual {v5, p1}, Lg/i0/i/f$b;->l(I)Lg/i0/i/f$b;

    invoke-virtual {v5}, Lg/i0/i/f$b;->a()Lg/i0/i/f;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/g;->f:Lg/i0/i/f;

    sget-object v0, Lg/i0/i/f;->E:Lg/i0/i/f$c;

    invoke-virtual {v0}, Lg/i0/i/f$c;->a()Lg/i0/i/n;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/i/n;->d()I

    move-result v0

    iput v0, p0, Lg/i0/f/g;->n:I

    const/4 v0, 0x3

    invoke-static {p1, v4, v1, v0, v1}, Lg/i0/i/f;->p0(Lg/i0/i/f;ZLg/i0/e/e;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1

    :cond_2
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1
.end method

.method private final F(Lg/x;)Z
    .locals 4

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {p1}, Lg/x;->l()I

    move-result v1

    invoke-virtual {v0}, Lg/x;->l()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Lg/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lg/i0/f/g;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lg/i0/f/g;->d:Lg/v;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lg/i0/f/g;->e(Lg/x;Lg/v;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_5
    :goto_1
    return v3
.end method

.method public static final synthetic c(Lg/i0/f/g;)Lg/v;
    .locals 0

    iget-object p0, p0, Lg/i0/f/g;->d:Lg/v;

    return-object p0
.end method

.method private final e(Lg/x;Lg/v;)Z
    .locals 3

    invoke-virtual {p2}, Lg/v;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lg/i0/l/d;->a:Lg/i0/l/d;

    invoke-virtual {p1}, Lg/x;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Lg/i0/l/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    new-instance p1, Lf/k;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Lf/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final h(IILg/f;Lg/u;)V
    .locals 4

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lg/i0/f/f;->a:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lg/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    iput-object v1, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    iget-object v2, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v2}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Lg/u;->j(Lg/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {p2}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object p2

    iget-object p3, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {p3}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1}, Lg/i0/j/h;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lh/o;->f(Ljava/net/Socket;)Lh/a0;

    move-result-object p1

    invoke-static {p1}, Lh/o;->b(Lh/a0;)Lh/g;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/g;->g:Lh/g;

    invoke-static {v1}, Lh/o;->d(Ljava/net/Socket;)Lh/y;

    move-result-object p1

    invoke-static {p1}, Lh/o;->a(Lh/y;)Lh/f;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/g;->h:Lh/f;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {p4}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_3
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final i(Lg/i0/f/b;)V
    .locals 10

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    :try_start_0
    iget-object v3, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v4

    invoke-virtual {v4}, Lg/x;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v5

    invoke-virtual {v5}, Lg/x;->l()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lg/i0/f/b;->a(Ljavax/net/ssl/SSLSocket;)Lg/m;

    move-result-object p1

    invoke-virtual {p1}, Lg/m;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v3}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v3

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v4

    invoke-virtual {v4}, Lg/x;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lg/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lg/i0/j/h;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    sget-object v4, Lg/v;->e:Lg/v$a;

    const-string v5, "sslSocketSession"

    invoke-static {v3, v5}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lg/v$a;->a(Ljavax/net/ssl/SSLSession;)Lg/v;

    move-result-object v4

    invoke-virtual {v0}, Lg/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v7

    invoke-virtual {v7}, Lg/x;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lg/v;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lf/k;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, v0}, Lf/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n              |Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lg/h;->d:Lg/h$b;

    invoke-virtual {v0, p1}, Lg/h$b;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v5, "cert.subjectDN"

    invoke-static {v0, v5}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lg/i0/l/d;->a:Lg/i0/l/d;

    invoke-virtual {v0, p1}, Lg/i0/l/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v6, v2}, Lf/v/g;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Lg/a;->a()Lg/h;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v5, Lg/v;

    invoke-virtual {v4}, Lg/v;->e()Lg/h0;

    move-result-object v6

    invoke-virtual {v4}, Lg/v;->a()Lg/j;

    move-result-object v7

    invoke-virtual {v4}, Lg/v;->c()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lg/i0/f/g$a;

    invoke-direct {v9, v3, v4, v0}, Lg/i0/f/g$a;-><init>(Lg/h;Lg/v;Lg/a;)V

    invoke-direct {v5, v6, v7, v8, v9}, Lg/v;-><init>(Lg/h0;Lg/j;Ljava/util/List;Lf/s/a/a;)V

    iput-object v5, p0, Lg/i0/f/g;->d:Lg/v;

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lg/i0/f/g$b;

    invoke-direct {v4, p0}, Lg/i0/f/g$b;-><init>(Lg/i0/f/g;)V

    invoke-virtual {v3, v0, v4}, Lg/h;->b(Ljava/lang/String;Lf/s/a/a;)V

    invoke-virtual {p1}, Lg/m;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {p1}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg/i0/j/h;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v1, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    invoke-static {v1}, Lh/o;->f(Ljava/net/Socket;)Lh/a0;

    move-result-object p1

    invoke-static {p1}, Lh/o;->b(Lh/a0;)Lh/g;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/g;->g:Lh/g;

    invoke-static {v1}, Lh/o;->d(Ljava/net/Socket;)Lh/y;

    move-result-object p1

    invoke-static {p1}, Lh/o;->a(Lh/y;)Lh/f;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/g;->h:Lh/f;

    if-eqz v2, :cond_5

    sget-object p1, Lg/b0;->j:Lg/b0$a;

    invoke-virtual {p1, v2}, Lg/b0$a;->a(Ljava/lang/String;)Lg/b0;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p1, Lg/b0;->d:Lg/b0;

    :goto_0
    iput-object p1, p0, Lg/i0/f/g;->e:Lg/b0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    sget-object p1, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {p1}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg/i0/j/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_6
    return-void

    :cond_7
    :try_start_2
    invoke-static {}, Lf/s/b/f;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_8
    :try_start_3
    invoke-static {}, Lf/s/b/f;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :cond_9
    :try_start_4
    new-instance p1, Lf/k;

    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, v0}, Lf/k;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_a
    invoke-static {}, Lf/s/b/f;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :goto_1
    if-eqz v2, :cond_b

    sget-object v0, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v0}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lg/i0/j/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {v2}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_c
    throw p1
.end method

.method private final j(IIILg/f;Lg/u;)V
    .locals 6

    invoke-direct {p0}, Lg/i0/f/g;->l()Lg/c0;

    move-result-object v0

    invoke-virtual {v0}, Lg/c0;->i()Lg/x;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Lg/i0/f/g;->h(IILg/f;Lg/u;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lg/i0/f/g;->k(IILg/c0;Lg/x;)Lg/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    iput-object v3, p0, Lg/i0/f/g;->h:Lh/f;

    iput-object v3, p0, Lg/i0/f/g;->g:Lh/g;

    iget-object v4, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v4}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v5}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lg/u;->h(Lg/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lg/b0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final k(IILg/c0;Lg/x;)Lg/c0;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lg/i0/b;->K(Lg/x;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-object v0, p0, Lg/i0/f/g;->g:Lh/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lg/i0/f/g;->h:Lh/f;

    if-eqz v3, :cond_6

    new-instance v4, Lg/i0/h/b;

    invoke-direct {v4, v2, p0, v0, v3}, Lg/i0/h/b;-><init>(Lg/a0;Lg/i0/f/g;Lh/g;Lh/f;)V

    invoke-interface {v0}, Lh/a0;->b()Lh/b0;

    move-result-object v5

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    invoke-interface {v3}, Lh/y;->b()Lh/b0;

    move-result-object v5

    int-to-long v6, p2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    invoke-virtual {p3}, Lg/c0;->e()Lg/w;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lg/i0/h/b;->A(Lg/w;Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/i0/h/b;->a()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lg/i0/h/b;->g(Z)Lg/e0$a;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, p3}, Lg/e0$a;->r(Lg/c0;)Lg/e0$a;

    invoke-virtual {v5}, Lg/e0$a;->c()Lg/e0;

    move-result-object p3

    invoke-virtual {v4, p3}, Lg/i0/h/b;->z(Lg/e0;)V

    invoke-virtual {p3}, Lg/e0;->t()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    const/16 v0, 0x197

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->h()Lg/c;

    move-result-object v0

    iget-object v3, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-interface {v0, v3, p3}, Lg/c;->a(Lg/g0;Lg/e0;)Lg/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    const-string v4, "Connection"

    invoke-static {p3, v4, v2, v3, v2}, Lg/e0;->E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "close"

    invoke-static {v2, p3, v1}, Lf/v/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lg/e0;->t()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {v0}, Lh/g;->a()Lh/e;

    move-result-object p1

    invoke-virtual {p1}, Lh/e;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v3}, Lh/f;->a()Lh/e;

    move-result-object p1

    invoke-virtual {p1}, Lh/e;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :cond_6
    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :cond_7
    invoke-static {}, Lf/s/b/f;->g()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private final l()Lg/c0;
    .locals 4

    new-instance v0, Lg/c0$a;

    invoke-direct {v0}, Lg/c0$a;-><init>()V

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/c0$a;->g(Lg/x;)Lg/c0$a;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/c0$a;->d(Ljava/lang/String;Lg/d0;)Lg/c0$a;

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lg/i0/b;->K(Lg/x;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lg/c0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lg/c0$a;

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lg/c0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lg/c0$a;

    const-string v1, "User-Agent"

    const-string v2, "okhttp/4.8.1"

    invoke-virtual {v0, v1, v2}, Lg/c0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lg/c0$a;

    invoke-virtual {v0}, Lg/c0$a;->a()Lg/c0;

    move-result-object v0

    new-instance v1, Lg/e0$a;

    invoke-direct {v1}, Lg/e0$a;-><init>()V

    invoke-virtual {v1, v0}, Lg/e0$a;->r(Lg/c0;)Lg/e0$a;

    sget-object v2, Lg/b0;->d:Lg/b0;

    invoke-virtual {v1, v2}, Lg/e0$a;->p(Lg/b0;)Lg/e0$a;

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lg/e0$a;->g(I)Lg/e0$a;

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lg/e0$a;->m(Ljava/lang/String;)Lg/e0$a;

    sget-object v2, Lg/i0/b;->c:Lg/f0;

    invoke-virtual {v1, v2}, Lg/e0$a;->b(Lg/f0;)Lg/e0$a;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lg/e0$a;->s(J)Lg/e0$a;

    invoke-virtual {v1, v2, v3}, Lg/e0$a;->q(J)Lg/e0$a;

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lg/e0$a;->j(Ljava/lang/String;Ljava/lang/String;)Lg/e0$a;

    invoke-virtual {v1}, Lg/e0$a;->c()Lg/e0;

    move-result-object v1

    iget-object v2, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v2}, Lg/g0;->a()Lg/a;

    move-result-object v2

    invoke-virtual {v2}, Lg/a;->h()Lg/c;

    move-result-object v2

    iget-object v3, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-interface {v2, v3, v1}, Lg/c;->a(Lg/g0;Lg/e0;)Lg/c0;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private final m(Lg/i0/f/b;ILg/f;Lg/u;)V
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {p1}, Lg/g0;->a()Lg/a;

    move-result-object p1

    invoke-virtual {p1}, Lg/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lg/b0;->g:Lg/b0;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    iput-object p1, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    sget-object p1, Lg/b0;->g:Lg/b0;

    iput-object p1, p0, Lg/i0/f/g;->e:Lg/b0;

    invoke-direct {p0, p2}, Lg/i0/f/g;->E(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    iput-object p1, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    sget-object p1, Lg/b0;->d:Lg/b0;

    iput-object p1, p0, Lg/i0/f/g;->e:Lg/b0;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lg/u;->C(Lg/f;)V

    invoke-direct {p0, p1}, Lg/i0/f/g;->i(Lg/i0/f/b;)V

    iget-object p1, p0, Lg/i0/f/g;->d:Lg/v;

    invoke-virtual {p4, p3, p1}, Lg/u;->B(Lg/f;Lg/v;)V

    iget-object p1, p0, Lg/i0/f/g;->e:Lg/b0;

    sget-object p3, Lg/b0;->f:Lg/b0;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lg/i0/f/g;->E(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final B(J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/f/g;->p:J

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/i0/f/g;->i:Z

    return-void
.end method

.method public D()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized G(Lg/i0/f/e;Ljava/io/IOException;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lg/i0/i/o;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lg/i0/i/o;

    iget-object v0, v0, Lg/i0/i/o;->b:Lg/i0/i/b;

    sget-object v2, Lg/i0/i/b;->g:Lg/i0/i/b;

    if-ne v0, v2, :cond_0

    iget p1, p0, Lg/i0/f/g;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Lg/i0/f/g;->m:I

    if-le p1, v1, :cond_5

    iput-boolean v1, p0, Lg/i0/f/g;->i:Z

    iget p1, p0, Lg/i0/f/g;->k:I

    :goto_0
    add-int/2addr p1, v1

    iput p1, p0, Lg/i0/f/g;->k:I

    goto :goto_1

    :cond_0
    check-cast p2, Lg/i0/i/o;

    iget-object p2, p2, Lg/i0/i/o;->b:Lg/i0/i/b;

    sget-object v0, Lg/i0/i/b;->h:Lg/i0/i/b;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lg/i0/f/e;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lg/i0/f/g;->i:Z

    iget p1, p0, Lg/i0/f/g;->k:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lg/i0/f/g;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lg/i0/i/a;

    if-eqz v0, :cond_5

    :cond_3
    iput-boolean v1, p0, Lg/i0/f/g;->i:Z

    iget v0, p0, Lg/i0/f/g;->l:I

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lg/i0/f/e;->k()Lg/a0;

    move-result-object p1

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {p0, p1, v0, p2}, Lg/i0/f/g;->g(Lg/a0;Lg/g0;Ljava/io/IOException;)V

    :cond_4
    iget p1, p0, Lg/i0/f/g;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized a(Lg/i0/i/f;Lg/i0/i/n;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/i0/i/n;->d()I

    move-result p1

    iput p1, p0, Lg/i0/f/g;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lg/i0/i/i;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/i0/i/b;->g:Lg/i0/i/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/i0/i/i;->d(Lg/i0/i/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final f(IIIIZLg/f;Lg/u;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    invoke-static {v8, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lg/i0/f/g;->e:Lg/b0;

    const/4 v10, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->b()Ljava/util/List;

    move-result-object v0

    new-instance v11, Lg/i0/f/b;

    invoke-direct {v11, v0}, Lg/i0/f/b;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lg/m;->h:Lg/m;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v1}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/i0/j/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lg/i0/f/j;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    new-instance v0, Lg/i0/f/j;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3
    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lg/b0;->g:Lg/b0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_1
    const/4 v12, 0x0

    move-object v13, v12

    :goto_2
    :try_start_0
    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lg/i0/f/g;->j(IIILg/f;Lg/u;)V

    iget-object v0, v7, Lg/i0/f/g;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v14, p1

    move/from16 v15, p2

    goto :goto_3

    :cond_5
    move/from16 v14, p1

    move/from16 v15, p2

    :try_start_1
    invoke-direct {v7, v14, v15, v8, v9}, Lg/i0/f/g;->h(IILg/f;Lg/u;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move/from16 v6, p4

    :try_start_2
    invoke-direct {v7, v11, v6, v8, v9}, Lg/i0/f/g;->m(Lg/i0/f/b;ILg/f;Lg/u;)V

    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lg/i0/f/g;->e:Lg/b0;

    invoke-virtual {v9, v8, v0, v1, v2}, Lg/u;->h(Lg/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lg/b0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    iget-object v0, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lg/i0/f/g;->b:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lg/i0/f/j;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lg/i0/f/g;->p:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v14, p1

    move/from16 v15, p2

    :goto_6
    move/from16 v6, p4

    :goto_7
    iget-object v1, v7, Lg/i0/f/g;->c:Ljava/net/Socket;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_8
    iget-object v1, v7, Lg/i0/f/g;->b:Ljava/net/Socket;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_9
    iput-object v12, v7, Lg/i0/f/g;->c:Ljava/net/Socket;

    iput-object v12, v7, Lg/i0/f/g;->b:Ljava/net/Socket;

    iput-object v12, v7, Lg/i0/f/g;->g:Lh/g;

    iput-object v12, v7, Lg/i0/f/g;->h:Lh/f;

    iput-object v12, v7, Lg/i0/f/g;->d:Lg/v;

    iput-object v12, v7, Lg/i0/f/g;->e:Lg/b0;

    iput-object v12, v7, Lg/i0/f/g;->f:Lg/i0/i/f;

    iput v10, v7, Lg/i0/f/g;->n:I

    iget-object v1, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lg/u;->i(Lg/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lg/b0;Ljava/io/IOException;)V

    if-nez v13, :cond_a

    new-instance v13, Lg/i0/f/j;

    invoke-direct {v13, v0}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v13, v0}, Lg/i0/f/j;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_b

    invoke-virtual {v11, v0}, Lg/i0/f/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_2

    :cond_b
    throw v13

    :cond_c
    new-instance v0, Lg/i0/f/j;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public final g(Lg/a0;Lg/g0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->i()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->q()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {p1}, Lg/a0;->p()Lg/i0/f/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg/i0/f/i;->b(Lg/g0;)V

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lg/i0/f/e;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lg/i0/f/g;->o:Ljava/util/List;

    return-object v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lg/i0/f/g;->p:J

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/f/g;->i:Z

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lg/i0/f/g;->k:I

    return v0
.end method

.method public r()Lg/v;
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->d:Lg/v;

    return-object v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lg/i0/f/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/i0/f/g;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t(Lg/a;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a;",
            "Ljava/util/List<",
            "Lg/g0;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/i0/f/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lg/i0/f/g;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b

    iget-boolean v0, p0, Lg/i0/f/g;->i:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/a;->d(Lg/a;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    invoke-virtual {v1}, Lg/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lg/i0/f/g;->f:Lg/i0/i/f;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_b

    invoke-direct {p0, p2}, Lg/i0/f/g;->A(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lg/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lg/i0/l/d;->a:Lg/i0/l/d;

    if-eq p2, v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Lg/a;->l()Lg/x;

    move-result-object p2

    invoke-direct {p0, p2}, Lg/i0/f/g;->F(Lg/x;)Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lg/a;->a()Lg/h;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lg/a;->l()Lg/x;

    move-result-object p1

    invoke-virtual {p1}, Lg/x;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lg/i0/f/g;->r()Lg/v;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lg/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg/h;->a(Ljava/lang/String;Ljava/util/List;)V

    return v1

    :cond_9
    invoke-static {}, Lf/s/b/f;->g()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :cond_a
    :try_start_1
    invoke-static {}, Lf/s/b/f;->g()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    :catch_0
    :cond_b
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    invoke-virtual {v1}, Lg/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    invoke-virtual {v1}, Lg/x;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->q:Lg/g0;

    invoke-virtual {v1}, Lg/g0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->d:Lg/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/v;->a()Lg/j;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/i0/f/g;->e:Lg/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)Z
    .locals 7

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lg/i0/f/g;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v4, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lg/i0/f/g;->g:Lh/g;

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lg/i0/f/g;->f:Lg/i0/i/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v1}, Lg/i0/i/f;->b0(J)Z

    move-result p1

    return p1

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lg/i0/f/g;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    const-wide v2, 0x2540be400L

    cmp-long v6, v0, v2

    if-ltz v6, :cond_4

    if-eqz p1, :cond_4

    invoke-static {v4, v5}, Lg/i0/b;->B(Ljava/net/Socket;Lh/g;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-static {}, Lf/s/b/f;->g()V

    throw v3

    :cond_7
    invoke-static {}, Lf/s/b/f;->g()V

    throw v3

    :cond_8
    invoke-static {}, Lf/s/b/f;->g()V

    throw v3
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->f:Lg/i0/i/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w(Lg/a0;Lg/i0/g/g;)Lg/i0/g/d;
    .locals 6

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/f/g;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lg/i0/f/g;->g:Lh/g;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lg/i0/f/g;->h:Lh/f;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lg/i0/f/g;->f:Lg/i0/i/f;

    if-eqz v1, :cond_0

    new-instance v0, Lg/i0/i/g;

    invoke-direct {v0, p1, p0, p2, v1}, Lg/i0/i/g;-><init>(Lg/a0;Lg/i0/f/g;Lg/i0/g/g;Lg/i0/i/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lg/i0/g/g;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v2}, Lh/a0;->b()Lh/b0;

    move-result-object v0

    invoke-virtual {p2}, Lg/i0/g/g;->h()I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    invoke-interface {v3}, Lh/y;->b()Lh/b0;

    move-result-object v0

    invoke-virtual {p2}, Lg/i0/g/g;->j()I

    move-result p2

    int-to-long v4, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, p2}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    new-instance v0, Lg/i0/h/b;

    invoke-direct {v0, p1, p0, v2, v3}, Lg/i0/h/b;-><init>(Lg/a0;Lg/i0/f/g;Lh/g;Lh/f;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1

    :cond_2
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1

    :cond_3
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1
.end method

.method public final declared-synchronized x()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lg/i0/f/g;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lg/i0/f/g;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()Lg/g0;
    .locals 1

    iget-object v0, p0, Lg/i0/f/g;->q:Lg/g0;

    return-object v0
.end method
