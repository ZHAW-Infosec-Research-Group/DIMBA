.class public final Lg/i0/f/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/f/e$a;,
        Lg/i0/f/e$b;
    }
.end annotation


# instance fields
.field private final b:Lg/i0/f/h;

.field private final c:Lg/u;

.field private final d:Lg/i0/f/e$c;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/lang/Object;

.field private g:Lg/i0/f/d;

.field private h:Lg/i0/f/g;

.field private i:Z

.field private j:Lg/i0/f/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private volatile n:Z

.field private volatile o:Lg/i0/f/c;

.field private volatile p:Lg/i0/f/g;

.field private final q:Lg/a0;

.field private final r:Lg/c0;

.field private final s:Z


# direct methods
.method public constructor <init>(Lg/a0;Lg/c0;Z)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/f/e;->q:Lg/a0;

    iput-object p2, p0, Lg/i0/f/e;->r:Lg/c0;

    iput-boolean p3, p0, Lg/i0/f/e;->s:Z

    invoke-virtual {p1}, Lg/a0;->h()Lg/l;

    move-result-object p1

    invoke-virtual {p1}, Lg/l;->a()Lg/i0/f/h;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/e;->b:Lg/i0/f/h;

    iget-object p1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {p1}, Lg/a0;->m()Lg/u$b;

    move-result-object p1

    invoke-interface {p1, p0}, Lg/u$b;->a(Lg/f;)Lg/u;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/e;->c:Lg/u;

    new-instance p1, Lg/i0/f/e$c;

    invoke-direct {p1, p0}, Lg/i0/f/e$c;-><init>(Lg/i0/f/e;)V

    iget-object p2, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {p2}, Lg/a0;->e()I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    iput-object p1, p0, Lg/i0/f/e;->d:Lg/i0/f/e$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lg/i0/f/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/i0/f/e;->m:Z

    return-void
.end method

.method private final A()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/i0/f/e;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/i0/f/e;->s:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/i0/f/e;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a(Lg/i0/f/e;)Lg/i0/f/e$c;
    .locals 0

    iget-object p0, p0, Lg/i0/f/e;->d:Lg/i0/f/e$c;

    return-object p0
.end method

.method public static final synthetic b(Lg/i0/f/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lg/i0/f/e;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

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
    iget-object v0, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    if-eqz v0, :cond_8

    sget-boolean v1, Lg/i0/b;->g:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lg/i0/f/e;->v()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v2, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v1}, Lg/i0/b;->j(Ljava/net/Socket;)V

    :cond_4
    iget-object v1, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-virtual {v1, p0, v0}, Lg/u;->l(Lg/f;Lg/k;)V

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_8
    :goto_3
    invoke-direct {p0, p1}, Lg/i0/f/e;->z(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lg/i0/f/e;->c:Lg/u;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0, v0}, Lg/u;->e(Lg/f;Ljava/io/IOException;)V

    goto :goto_4

    :cond_9
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_a
    iget-object p1, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-virtual {p1, p0}, Lg/u;->d(Lg/f;)V

    :goto_4
    return-object v0
.end method

.method private final e()V
    .locals 2

    sget-object v0, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v0}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lg/i0/j/h;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lg/i0/f/e;->f:Ljava/lang/Object;

    iget-object v0, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-virtual {v0, p0}, Lg/u;->f(Lg/f;)V

    return-void
.end method

.method private final h(Lg/x;)Lg/a;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lg/x;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->D()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->q()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v3}, Lg/a0;->f()Lg/h;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_0
    new-instance v1, Lg/a;

    invoke-virtual/range {p1 .. p1}, Lg/x;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lg/x;->l()I

    move-result v6

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->l()Lg/t;

    move-result-object v7

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->C()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->y()Lg/c;

    move-result-object v12

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->x()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->w()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->i()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v2}, Lg/a0;->z()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lg/a;-><init>(Ljava/lang/String;ILg/t;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lg/h;Lg/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private final z(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lg/i0/f/e;->i:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/i0/f/e;->d:Lg/i0/f/e$c;

    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final c(Lg/i0/f/g;)V
    .locals 4

    const-string v0, "connection"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iput-object p1, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    invoke-virtual {p1}, Lg/i0/f/g;->n()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lg/i0/f/e$b;

    iget-object v1, p0, Lg/i0/f/e;->f:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lg/i0/f/e$b;-><init>(Lg/i0/f/e;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/i0/f/e;->g()Lg/i0/f/e;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lg/i0/f/e;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/i0/f/e;->n:Z

    iget-object v0, p0, Lg/i0/f/e;->o:Lg/i0/f/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/i0/f/c;->b()V

    :cond_1
    iget-object v0, p0, Lg/i0/f/e;->p:Lg/i0/f/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/i0/f/g;->d()V

    :cond_2
    iget-object v0, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-virtual {v0, p0}, Lg/u;->g(Lg/f;)V

    return-void
.end method

.method public g()Lg/i0/f/e;
    .locals 4

    new-instance v0, Lg/i0/f/e;

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    iget-object v2, p0, Lg/i0/f/e;->r:Lg/c0;

    iget-boolean v3, p0, Lg/i0/f/e;->s:Z

    invoke-direct {v0, v1, v2, v3}, Lg/i0/f/e;-><init>(Lg/a0;Lg/c0;Z)V

    return-object v0
.end method

.method public final i(Lg/c0;Z)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/f/e;->j:Lg/i0/f/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/i0/f/e;->l:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lg/i0/f/e;->k:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p2, :cond_1

    new-instance p2, Lg/i0/f/d;

    iget-object v0, p0, Lg/i0/f/e;->b:Lg/i0/f/h;

    invoke-virtual {p1}, Lg/c0;->i()Lg/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/i0/f/e;->h(Lg/x;)Lg/a;

    move-result-object p1

    iget-object v1, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-direct {p2, v0, p1, p0, v1}, Lg/i0/f/d;-><init>(Lg/i0/f/h;Lg/a;Lg/i0/f/e;Lg/u;)V

    iput-object p2, p0, Lg/i0/f/e;->g:Lg/i0/f/d;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/i0/f/e;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/i0/f/e;->o:Lg/i0/f/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/i0/f/c;->d()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lg/i0/f/e;->j:Lg/i0/f/c;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k()Lg/a0;
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    return-object v0
.end method

.method public final l()Lg/i0/f/g;
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    return-object v0
.end method

.method public final m()Lg/u;
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->c:Lg/u;

    return-object v0
.end method

.method public final n()Lg/i0/f/c;
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->j:Lg/i0/f/c;

    return-object v0
.end method

.method public final o()Lg/e0;
    .locals 10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lf/o/j;->o(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    new-instance v0, Lg/i0/g/j;

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-direct {v0, v1}, Lg/i0/g/j;-><init>(Lg/a0;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/i0/g/a;

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->j()Lg/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/i0/g/a;-><init>(Lg/p;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg/i0/d/a;

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->d()Lg/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/i0/d/a;-><init>(Lg/d;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lg/i0/f/a;->a:Lg/i0/f/a;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lg/i0/f/e;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lf/o/j;->o(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    :cond_0
    new-instance v0, Lg/i0/g/b;

    iget-boolean v1, p0, Lg/i0/f/e;->s:Z

    invoke-direct {v0, v1}, Lg/i0/g/b;-><init>(Z)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v9, Lg/i0/g/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lg/i0/f/e;->r:Lg/c0;

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->g()I

    move-result v6

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->A()I

    move-result v7

    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->F()I

    move-result v8

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lg/i0/g/g;-><init>(Lg/i0/f/e;Ljava/util/List;ILg/i0/f/c;Lg/c0;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg/i0/f/e;->r:Lg/c0;

    invoke-virtual {v9, v2}, Lg/i0/g/g;->a(Lg/c0;)Lg/e0;

    move-result-object v2

    invoke-virtual {p0}, Lg/i0/f/e;->q()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Lg/i0/f/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    :cond_1
    :try_start_1
    invoke-static {v2}, Lg/i0/b;->i(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lg/i0/f/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lf/k;

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v3}, Lf/k;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lg/i0/f/e;->s(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public final p(Lg/i0/g/g;)Lg/i0/f/c;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/i0/f/e;->m:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lg/i0/f/e;->l:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lg/i0/f/e;->k:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    iget-object v0, p0, Lg/i0/f/e;->g:Lg/i0/f/d;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0, v2, p1}, Lg/i0/f/d;->a(Lg/a0;Lg/i0/g/g;)Lg/i0/g/d;

    move-result-object p1

    new-instance v2, Lg/i0/f/c;

    iget-object v3, p0, Lg/i0/f/e;->c:Lg/u;

    invoke-direct {v2, p0, v3, v0, p1}, Lg/i0/f/c;-><init>(Lg/i0/f/e;Lg/u;Lg/i0/f/d;Lg/i0/g/d;)V

    iput-object v2, p0, Lg/i0/f/e;->j:Lg/i0/f/c;

    iput-object v2, p0, Lg/i0/f/e;->o:Lg/i0/f/c;

    monitor-enter p0

    :try_start_1
    iput-boolean v1, p0, Lg/i0/f/e;->k:Z

    iput-boolean v1, p0, Lg/i0/f/e;->l:Z

    sget-object p1, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-boolean p1, p0, Lg/i0/f/e;->n:Z

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :try_start_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/f/e;->n:Z

    return v0
.end method

.method public final r(Lg/i0/f/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lg/i0/f/c;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/f/e;->o:Lg/i0/f/c;

    invoke-static {p1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lg/i0/f/e;->k:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lg/i0/f/e;->l:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lg/i0/f/e;->k:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean p1, p0, Lg/i0/f/e;->l:Z

    :cond_4
    iget-boolean p2, p0, Lg/i0/f/e;->k:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lg/i0/f/e;->l:Z

    if-nez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    iget-boolean p3, p0, Lg/i0/f/e;->k:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lg/i0/f/e;->l:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lg/i0/f/e;->m:Z

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move p1, p2

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    sget-object p2, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lg/i0/f/e;->o:Lg/i0/f/c;

    iget-object p1, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lg/i0/f/g;->s()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-direct {p0, p4}, Lg/i0/f/e;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final s(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/i0/f/e;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/i0/f/e;->m:Z

    iget-boolean v0, p0, Lg/i0/f/e;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg/i0/f/e;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lg/i0/f/e;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t()Lg/e0;
    .locals 3

    iget-object v0, p0, Lg/i0/f/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/i0/f/e;->d:Lg/i0/f/e$c;

    invoke-virtual {v0}, Lh/d;->r()V

    invoke-direct {p0}, Lg/i0/f/e;->e()V

    :try_start_0
    iget-object v0, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v0}, Lg/a0;->k()Lg/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/r;->a(Lg/i0/f/e;)V

    invoke-virtual {p0}, Lg/i0/f/e;->o()Lg/e0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->k()Lg/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lg/r;->e(Lg/i0/f/e;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg/i0/f/e;->q:Lg/a0;

    invoke-virtual {v1}, Lg/a0;->k()Lg/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lg/r;->e(Lg/i0/f/e;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->r:Lg/c0;

    invoke-virtual {v0}, Lg/c0;->i()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/net/Socket;
    .locals 8

    iget-object v0, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget-boolean v2, Lg/i0/b;->g:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MUST hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg/i0/f/g;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/i0/f/e;

    invoke-static {v6, p0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-eq v5, v7, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v1, p0, Lg/i0/f/e;->h:Lg/i0/f/g;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lg/i0/f/g;->B(J)V

    iget-object v2, p0, Lg/i0/f/e;->b:Lg/i0/f/h;

    invoke-virtual {v2, v0}, Lg/i0/f/h;->c(Lg/i0/f/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lg/i0/f/g;->D()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {}, Lf/s/b/f;->g()V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lg/i0/f/e;->g:Lg/i0/f/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/i0/f/d;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final x(Lg/i0/f/g;)V
    .locals 0

    iput-object p1, p0, Lg/i0/f/e;->p:Lg/i0/f/g;

    return-void
.end method

.method public final y()V
    .locals 2

    iget-boolean v0, p0, Lg/i0/f/e;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lg/i0/f/e;->i:Z

    iget-object v0, p0, Lg/i0/f/e;->d:Lg/i0/f/e$c;

    invoke-virtual {v0}, Lh/d;->s()Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
