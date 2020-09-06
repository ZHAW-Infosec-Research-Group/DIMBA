.class public final Lg/i0/f/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lg/i0/f/k$b;

.field private b:Lg/i0/f/k;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lg/g0;

.field private final g:Lg/i0/f/h;

.field private final h:Lg/a;

.field private final i:Lg/i0/f/e;

.field private final j:Lg/u;


# direct methods
.method public constructor <init>(Lg/i0/f/h;Lg/a;Lg/i0/f/e;Lg/u;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/f/d;->g:Lg/i0/f/h;

    iput-object p2, p0, Lg/i0/f/d;->h:Lg/a;

    iput-object p3, p0, Lg/i0/f/d;->i:Lg/i0/f/e;

    iput-object p4, p0, Lg/i0/f/d;->j:Lg/u;

    return-void
.end method

.method private final b(IIIIZ)Lg/i0/f/g;
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->q()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lg/i0/f/g;->p()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v5

    invoke-virtual {v5}, Lg/g0;->a()Lg/a;

    move-result-object v5

    invoke-virtual {v5}, Lg/a;->l()Lg/x;

    move-result-object v5

    invoke-virtual {p0, v5}, Lg/i0/f/d;->g(Lg/x;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v5, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v5}, Lg/i0/f/e;->v()Ljava/net/Socket;

    move-result-object v5

    :goto_1
    sget-object v6, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v5}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_5
    iget-object v5, v1, Lg/i0/f/d;->j:Lg/u;

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v5, v6, v2}, Lg/u;->l(Lg/f;Lg/k;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    :goto_3
    iput v3, v1, Lg/i0/f/d;->c:I

    iput v3, v1, Lg/i0/f/d;->d:I

    iput v3, v1, Lg/i0/f/d;->e:I

    iget-object v2, v1, Lg/i0/f/d;->g:Lg/i0/f/h;

    iget-object v5, v1, Lg/i0/f/d;->h:Lg/a;

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v2, v5, v6, v4, v3}, Lg/i0/f/h;->a(Lg/a;Lg/i0/f/e;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_4
    iget-object v2, v1, Lg/i0/f/d;->j:Lg/u;

    iget-object v3, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v2, v3, v0}, Lg/u;->k(Lg/f;Lg/k;)V

    return-object v0

    :cond_7
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_8
    iget-object v2, v1, Lg/i0/f/d;->f:Lg/g0;

    if-eqz v2, :cond_a

    if-eqz v2, :cond_9

    iput-object v4, v1, Lg/i0/f/d;->f:Lg/g0;

    :goto_5
    move-object v5, v4

    goto :goto_6

    :cond_9
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_a
    iget-object v2, v1, Lg/i0/f/d;->a:Lg/i0/f/k$b;

    if-eqz v2, :cond_d

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lg/i0/f/k$b;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lg/i0/f/d;->a:Lg/i0/f/k$b;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lg/i0/f/k$b;->c()Lg/g0;

    move-result-object v2

    goto :goto_5

    :cond_b
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_c
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_d
    iget-object v2, v1, Lg/i0/f/d;->b:Lg/i0/f/k;

    if-nez v2, :cond_e

    new-instance v2, Lg/i0/f/k;

    iget-object v5, v1, Lg/i0/f/d;->h:Lg/a;

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6}, Lg/i0/f/e;->k()Lg/a0;

    move-result-object v6

    invoke-virtual {v6}, Lg/a0;->p()Lg/i0/f/i;

    move-result-object v6

    iget-object v7, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    iget-object v8, v1, Lg/i0/f/d;->j:Lg/u;

    invoke-direct {v2, v5, v6, v7, v8}, Lg/i0/f/k;-><init>(Lg/a;Lg/i0/f/i;Lg/f;Lg/u;)V

    iput-object v2, v1, Lg/i0/f/d;->b:Lg/i0/f/k;

    :cond_e
    invoke-virtual {v2}, Lg/i0/f/k;->d()Lg/i0/f/k$b;

    move-result-object v2

    iput-object v2, v1, Lg/i0/f/d;->a:Lg/i0/f/k$b;

    invoke-virtual {v2}, Lg/i0/f/k$b;->a()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6}, Lg/i0/f/e;->q()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v1, Lg/i0/f/d;->g:Lg/i0/f/h;

    iget-object v7, v1, Lg/i0/f/d;->h:Lg/a;

    iget-object v8, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6, v7, v8, v5, v3}, Lg/i0/f/h;->a(Lg/a;Lg/i0/f/e;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_10
    invoke-virtual {v2}, Lg/i0/f/k$b;->c()Lg/g0;

    move-result-object v2

    :goto_6
    new-instance v3, Lg/i0/f/g;

    iget-object v6, v1, Lg/i0/f/d;->g:Lg/i0/f/h;

    invoke-direct {v3, v6, v2}, Lg/i0/f/g;-><init>(Lg/i0/f/h;Lg/g0;)V

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6, v3}, Lg/i0/f/e;->x(Lg/i0/f/g;)V

    :try_start_1
    iget-object v12, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    iget-object v13, v1, Lg/i0/f/d;->j:Lg/u;

    move-object v6, v3

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v13}, Lg/i0/f/g;->f(IIIIZLg/f;Lg/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6, v4}, Lg/i0/f/e;->x(Lg/i0/f/g;)V

    iget-object v6, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6}, Lg/i0/f/e;->k()Lg/a0;

    move-result-object v6

    invoke-virtual {v6}, Lg/a0;->p()Lg/i0/f/i;

    move-result-object v6

    invoke-virtual {v3}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg/i0/f/i;->a(Lg/g0;)V

    iget-object v6, v1, Lg/i0/f/d;->g:Lg/i0/f/h;

    iget-object v7, v1, Lg/i0/f/d;->h:Lg/a;

    iget-object v8, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v6, v7, v8, v5, v0}, Lg/i0/f/h;->a(Lg/a;Lg/i0/f/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object v2, v1, Lg/i0/f/d;->f:Lg/g0;

    invoke-virtual {v3}, Lg/i0/f/g;->D()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lg/i0/b;->j(Ljava/net/Socket;)V

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lf/s/b/f;->g()V

    throw v4

    :cond_12
    monitor-enter v3

    :try_start_2
    iget-object v0, v1, Lg/i0/f/d;->g:Lg/i0/f/h;

    invoke-virtual {v0, v3}, Lg/i0/f/h;->e(Lg/i0/f/g;)V

    iget-object v0, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0, v3}, Lg/i0/f/e;->c(Lg/i0/f/g;)V

    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    iget-object v0, v1, Lg/i0/f/d;->j:Lg/u;

    iget-object v2, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0, v2, v3}, Lg/u;->k(Lg/f;Lg/k;)V

    return-object v3

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    iget-object v2, v1, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v2, v4}, Lg/i0/f/e;->x(Lg/i0/f/g;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private final c(IIIIZZ)Lg/i0/f/g;
    .locals 2

    :goto_0
    invoke-direct/range {p0 .. p5}, Lg/i0/f/d;->b(IIIIZ)Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0, p6}, Lg/i0/f/g;->u(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lg/i0/f/g;->y()V

    iget-object v0, p0, Lg/i0/f/d;->f:Lg/g0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/i0/f/d;->a:Lg/i0/f/k$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/i0/f/k$b;->b()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/i0/f/d;->b:Lg/i0/f/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lg/i0/f/k;->b()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final f()Lg/g0;
    .locals 4

    iget v0, p0, Lg/i0/f/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_3

    iget v0, p0, Lg/i0/f/d;->d:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lg/i0/f/d;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/i0/f/d;->i:Lg/i0/f/e;

    invoke-virtual {v0}, Lg/i0/f/e;->l()Lg/i0/f/g;

    move-result-object v0

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lg/i0/f/g;->q()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    iget-object v3, p0, Lg/i0/f/d;->h:Lg/a;

    invoke-virtual {v3}, Lg/a;->l()Lg/x;

    move-result-object v3

    invoke-static {v1, v3}, Lg/i0/b;->g(Lg/x;Lg/x;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final a(Lg/a0;Lg/i0/g/g;)Lg/i0/g/d;
    .locals 8

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lg/i0/g/g;->f()I

    move-result v2

    invoke-virtual {p2}, Lg/i0/g/g;->h()I

    move-result v3

    invoke-virtual {p2}, Lg/i0/g/g;->j()I

    move-result v4

    invoke-virtual {p1}, Lg/a0;->v()I

    move-result v5

    invoke-virtual {p1}, Lg/a0;->B()Z

    move-result v6

    invoke-virtual {p2}, Lg/i0/g/g;->i()Lg/c0;

    move-result-object v0

    invoke-virtual {v0}, Lg/c0;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lg/i0/f/d;->c(IIIIZZ)Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/i0/f/g;->w(Lg/a0;Lg/i0/g/g;)Lg/i0/g/d;

    move-result-object p1
    :try_end_0
    .catch Lg/i0/f/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lg/i0/f/d;->h(Ljava/io/IOException;)V

    new-instance p2, Lg/i0/f/j;

    invoke-direct {p2, p1}, Lg/i0/f/j;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lg/i0/f/j;->c()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lg/i0/f/d;->h(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d()Lg/a;
    .locals 1

    iget-object v0, p0, Lg/i0/f/d;->h:Lg/a;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lg/i0/f/d;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lg/i0/f/d;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lg/i0/f/d;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lg/i0/f/d;->f:Lg/g0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lg/i0/f/d;->f()Lg/g0;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lg/i0/f/d;->f:Lg/g0;

    return v1

    :cond_2
    iget-object v0, p0, Lg/i0/f/d;->a:Lg/i0/f/k$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lg/i0/f/k$b;->b()Z

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lg/i0/f/d;->b:Lg/i0/f/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lg/i0/f/k;->b()Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public final g(Lg/x;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/f/d;->h:Lg/a;

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {p1}, Lg/x;->l()I

    move-result v1

    invoke-virtual {v0}, Lg/x;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lg/x;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/i0/f/d;->f:Lg/g0;

    instance-of v0, p1, Lg/i0/i/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/i0/i/o;

    iget-object v0, v0, Lg/i0/i/o;->b:Lg/i0/i/b;

    sget-object v1, Lg/i0/i/b;->g:Lg/i0/i/b;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lg/i0/f/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/i0/f/d;->c:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lg/i0/i/a;

    if-eqz p1, :cond_1

    iget p1, p0, Lg/i0/f/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/i0/f/d;->d:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lg/i0/f/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/i0/f/d;->e:I

    :goto_0
    return-void
.end method
