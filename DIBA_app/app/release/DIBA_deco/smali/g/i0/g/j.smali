.class public final Lg/i0/g/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/y;


# instance fields
.field private final a:Lg/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/a0;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/g/j;->a:Lg/a0;

    return-void
.end method

.method private final b(Lg/e0;Ljava/lang/String;)Lg/c0;
    .locals 8

    iget-object v0, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "Location"

    invoke-static {p1, v2, v1, v0, v1}, Lg/e0;->E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v2

    invoke-virtual {v2}, Lg/c0;->i()Lg/x;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg/x;->o(Ljava/lang/String;)Lg/x;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lg/x;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v3

    invoke-virtual {v3}, Lg/c0;->i()Lg/x;

    move-result-object v3

    invoke-virtual {v3}, Lg/x;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->o()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v2

    invoke-virtual {v2}, Lg/c0;->h()Lg/c0$a;

    move-result-object v2

    invoke-static {p2}, Lg/i0/g/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lg/e0;->t()I

    move-result v3

    sget-object v4, Lg/i0/g/f;->a:Lg/i0/g/f;

    invoke-virtual {v4, p2}, Lg/i0/g/f;->d(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x133

    const/16 v6, 0x134

    if-nez v4, :cond_3

    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    sget-object v7, Lg/i0/g/f;->a:Lg/i0/g/f;

    invoke-virtual {v7, p2}, Lg/i0/g/f;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_4

    const-string p2, "GET"

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v1

    invoke-virtual {v1}, Lg/c0;->a()Lg/d0;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-virtual {v2, p2, v1}, Lg/c0$a;->d(Ljava/lang/String;Lg/d0;)Lg/c0$a;

    if-nez v4, :cond_6

    const-string p2, "Transfer-Encoding"

    invoke-virtual {v2, p2}, Lg/c0$a;->e(Ljava/lang/String;)Lg/c0$a;

    const-string p2, "Content-Length"

    invoke-virtual {v2, p2}, Lg/c0$a;->e(Ljava/lang/String;)Lg/c0$a;

    const-string p2, "Content-Type"

    invoke-virtual {v2, p2}, Lg/c0$a;->e(Ljava/lang/String;)Lg/c0$a;

    :cond_6
    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object p1

    invoke-virtual {p1}, Lg/c0;->i()Lg/x;

    move-result-object p1

    invoke-static {p1, v0}, Lg/i0/b;->g(Lg/x;Lg/x;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Authorization"

    invoke-virtual {v2, p1}, Lg/c0$a;->e(Ljava/lang/String;)Lg/c0$a;

    :cond_7
    invoke-virtual {v2, v0}, Lg/c0$a;->g(Lg/x;)Lg/c0$a;

    invoke-virtual {v2}, Lg/c0$a;->a()Lg/c0;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1
.end method

.method private final c(Lg/e0;Lg/i0/f/c;)Lg/c0;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/i0/f/c;->h()Lg/i0/f/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lg/e0;->t()I

    move-result v2

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v3

    invoke-virtual {v3}, Lg/c0;->g()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    if-eq v2, v4, :cond_11

    const/16 v4, 0x134

    if-eq v2, v4, :cond_11

    const/16 v4, 0x191

    if-eq v2, v4, :cond_10

    const/16 v4, 0x1a5

    if-eq v2, v4, :cond_c

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_9

    const/16 p2, 0x197

    if-eq v2, p2, :cond_6

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    :cond_1
    iget-object v1, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->B()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v1

    invoke-virtual {v1}, Lg/c0;->a()Lg/d0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lg/d0;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lg/e0;->J()Lg/e0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/e0;->t()I

    move-result v1

    if-ne v1, p2, :cond_4

    return-object v0

    :cond_4
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lg/i0/g/j;->g(Lg/e0;I)I

    move-result p2

    if-lez p2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {p2}, Lg/a0;->y()Lg/c;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lg/c;->a(Lg/g0;Lg/e0;)Lg/c0;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_9
    invoke-virtual {p1}, Lg/e0;->J()Lg/e0;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lg/e0;->t()I

    move-result v1

    if-ne v1, p2, :cond_a

    return-object v0

    :cond_a
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lg/i0/g/j;->g(Lg/e0;I)I

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object v1

    invoke-virtual {v1}, Lg/c0;->a()Lg/d0;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lg/d0;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lg/i0/f/c;->k()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {p2}, Lg/i0/f/c;->h()Lg/i0/f/g;

    move-result-object p2

    invoke-virtual {p2}, Lg/i0/f/g;->x()V

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_1
    return-object v0

    :cond_10
    iget-object p2, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {p2}, Lg/a0;->c()Lg/c;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lg/c;->a(Lg/g0;Lg/e0;)Lg/c0;

    move-result-object p1

    return-object p1

    :cond_11
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lg/i0/g/j;->b(Lg/e0;Ljava/lang/String;)Lg/c0;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Ljava/io/IOException;Z)Z
    .locals 3

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private final e(Ljava/io/IOException;Lg/i0/f/e;Lg/c0;Z)Z
    .locals 2

    iget-object v0, p0, Lg/i0/g/j;->a:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p3}, Lg/i0/g/j;->f(Ljava/io/IOException;Lg/c0;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p4}, Lg/i0/g/j;->d(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lg/i0/f/e;->w()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private final f(Ljava/io/IOException;Lg/c0;)Z
    .locals 0

    invoke-virtual {p2}, Lg/c0;->a()Lg/d0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/d0;->d()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final g(Lg/e0;I)I
    .locals 3

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lg/e0;->E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lf/v/f;

    const-string v0, "\\d+"

    invoke-direct {p2, v0}, Lf/v/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lf/v/f;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(header)"

    invoke-static {p1, p2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return p2
.end method


# virtual methods
.method public a(Lg/y$a;)Lg/e0;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/i0/g/g;

    invoke-virtual {p1}, Lg/i0/g/g;->i()Lg/c0;

    move-result-object v0

    invoke-virtual {p1}, Lg/i0/g/g;->e()Lg/i0/f/e;

    move-result-object v1

    invoke-static {}, Lf/o/j;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v7, v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1, v0, v6}, Lg/i0/f/e;->i(Lg/c0;Z)V

    :try_start_0
    invoke-virtual {v1}, Lg/i0/f/e;->q()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_9

    :try_start_1
    invoke-virtual {p1, v0}, Lg/i0/g/g;->a(Lg/c0;)Lg/e0;

    move-result-object v0
    :try_end_1
    .catch Lg/i0/f/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lg/e0;->I()Lg/e0$a;

    move-result-object v0

    invoke-virtual {v7}, Lg/e0;->I()Lg/e0$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lg/e0$a;->b(Lg/f0;)Lg/e0$a;

    invoke-virtual {v6}, Lg/e0$a;->c()Lg/e0;

    move-result-object v6

    invoke-virtual {v0, v6}, Lg/e0$a;->o(Lg/e0;)Lg/e0$a;

    invoke-virtual {v0}, Lg/e0$a;->c()Lg/e0;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-virtual {v1}, Lg/i0/f/e;->n()Lg/i0/f/c;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lg/i0/g/j;->c(Lg/e0;Lg/i0/f/c;)Lg/c0;

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/i0/f/c;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lg/i0/f/e;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-virtual {v1, v5}, Lg/i0/f/e;->j(Z)V

    return-object v7

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lg/c0;->a()Lg/d0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/d0;->d()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v5}, Lg/i0/f/e;->j(Z)V

    return-object v7

    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lg/e0;->g()Lg/f0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lg/i0/b;->i(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x14

    if-gt v8, v0, :cond_5

    invoke-virtual {v1, v4}, Lg/i0/f/e;->j(Z)V

    move-object v0, v6

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    :try_start_5
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v6

    instance-of v9, v6, Lg/i0/i/a;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    invoke-direct {p0, v6, v1, v0, v9}, Lg/i0/g/j;->e(Ljava/io/IOException;Lg/i0/f/e;Lg/c0;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v6, v2}, Lg/i0/b;->S(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw v6

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Lg/i0/f/j;->c()Ljava/io/IOException;

    move-result-object v9

    invoke-direct {p0, v9, v1, v0, v5}, Lg/i0/g/j;->e(Ljava/io/IOException;Lg/i0/f/e;Lg/c0;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Lg/i0/f/j;->b()Ljava/io/IOException;

    move-result-object v6

    :goto_2
    invoke-static {v2, v6}, Lf/o/j;->A(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1, v4}, Lg/i0/f/e;->j(Z)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {v6}, Lg/i0/f/j;->b()Ljava/io/IOException;

    move-result-object p1

    invoke-static {p1, v2}, Lg/i0/b;->S(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1, v4}, Lg/i0/f/e;->j(Z)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
