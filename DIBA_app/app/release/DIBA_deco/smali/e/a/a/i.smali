.class public Le/a/a/i;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Le/a/a/h;

.field private final d:Le/a/a/b;

.field private final e:Le/a/a/q;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Le/a/a/h;Le/a/a/b;Le/a/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/n<",
            "*>;>;",
            "Le/a/a/h;",
            "Le/a/a/b;",
            "Le/a/a/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/a/i;->f:Z

    iput-object p1, p0, Le/a/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Le/a/a/i;->c:Le/a/a/h;

    iput-object p3, p0, Le/a/a/i;->d:Le/a/a/b;

    iput-object p4, p0, Le/a/a/i;->e:Le/a/a/q;

    return-void
.end method

.method private a(Le/a/a/n;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/n<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Le/a/a/n;->x()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private b(Le/a/a/n;Le/a/a/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/n<",
            "*>;",
            "Le/a/a/u;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Le/a/a/n;->E(Le/a/a/u;)Le/a/a/u;

    iget-object v0, p0, Le/a/a/i;->e:Le/a/a/q;

    invoke-interface {v0, p1, p2}, Le/a/a/q;->a(Le/a/a/n;Le/a/a/u;)V

    return-void
.end method

.method private c()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Le/a/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/n;

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a/a/n;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    invoke-virtual {v2, v3}, Le/a/a/n;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a/a/n;->C()V

    return-void

    :cond_0
    invoke-direct {p0, v2}, Le/a/a/i;->a(Le/a/a/n;)V

    iget-object v3, p0, Le/a/a/i;->c:Le/a/a/h;

    invoke-interface {v3, v2}, Le/a/a/h;->a(Le/a/a/n;)Le/a/a/k;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Le/a/a/n;->b(Ljava/lang/String;)V

    iget-boolean v4, v3, Le/a/a/k;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Le/a/a/n;->z()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Le/a/a/n;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a/a/n;->C()V

    return-void

    :cond_1
    invoke-virtual {v2, v3}, Le/a/a/n;->F(Le/a/a/k;)Le/a/a/p;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a/a/n;->L()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Le/a/a/p;->b:Le/a/a/b$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Le/a/a/i;->d:Le/a/a/b;

    invoke-virtual {v2}, Le/a/a/n;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Le/a/a/p;->b:Le/a/a/b$a;

    invoke-interface {v4, v5, v6}, Le/a/a/b;->b(Ljava/lang/String;Le/a/a/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Le/a/a/n;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Le/a/a/n;->B()V

    iget-object v4, p0, Le/a/a/i;->e:Le/a/a/q;

    invoke-interface {v4, v2, v3}, Le/a/a/q;->b(Le/a/a/n;Le/a/a/p;)V

    invoke-virtual {v2, v3}, Le/a/a/n;->D(Le/a/a/p;)V
    :try_end_0
    .catch Le/a/a/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Le/a/a/v;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Le/a/a/u;

    invoke-direct {v4, v3}, Le/a/a/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Le/a/a/u;->a(J)V

    iget-object v0, p0, Le/a/a/i;->e:Le/a/a/q;

    invoke-interface {v0, v2, v4}, Le/a/a/q;->a(Le/a/a/n;Le/a/a/u;)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Le/a/a/u;->a(J)V

    invoke-direct {p0, v2, v3}, Le/a/a/i;->b(Le/a/a/n;Le/a/a/u;)V

    :goto_0
    invoke-virtual {v2}, Le/a/a/n;->C()V

    :goto_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/i;->f:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Le/a/a/i;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Le/a/a/i;->f:Z

    if-eqz v0, :cond_0

    return-void
.end method
