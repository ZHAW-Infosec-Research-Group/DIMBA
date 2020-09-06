.class public Le/a/a/c;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c$b;
    }
.end annotation


# static fields
.field private static final h:Z


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

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Le/a/a/b;

.field private final e:Le/a/a/q;

.field private volatile f:Z

.field private final g:Le/a/a/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Le/a/a/v;->b:Z

    sput-boolean v0, Le/a/a/c;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Le/a/a/b;Le/a/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/n<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/n<",
            "*>;>;",
            "Le/a/a/b;",
            "Le/a/a/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/a/c;->f:Z

    iput-object p1, p0, Le/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Le/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Le/a/a/c;->d:Le/a/a/b;

    iput-object p4, p0, Le/a/a/c;->e:Le/a/a/q;

    new-instance p1, Le/a/a/c$b;

    invoke-direct {p1, p0}, Le/a/a/c$b;-><init>(Le/a/a/c;)V

    iput-object p1, p0, Le/a/a/c;->g:Le/a/a/c$b;

    return-void
.end method

.method static synthetic a(Le/a/a/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Le/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Le/a/a/c;)Le/a/a/q;
    .locals 0

    iget-object p0, p0, Le/a/a/c;->e:Le/a/a/q;

    return-object p0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Le/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/n;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/a/n;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Le/a/a/n;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Le/a/a/c;->d:Le/a/a/b;

    invoke-virtual {v0}, Le/a/a/n;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/b;->c(Ljava/lang/String;)Le/a/a/b$a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Le/a/a/n;->b(Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/c;->g:Le/a/a/c$b;

    invoke-static {v1, v0}, Le/a/a/c$b;->c(Le/a/a/c$b;Le/a/a/n;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Le/a/a/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/a/n;->G(Le/a/a/b$a;)Le/a/a/n;

    iget-object v1, p0, Le/a/a/c;->g:Le/a/a/c$b;

    invoke-static {v1, v0}, Le/a/a/c$b;->c(Le/a/a/c$b;Le/a/a/n;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Le/a/a/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Le/a/a/n;->b(Ljava/lang/String;)V

    new-instance v2, Le/a/a/k;

    iget-object v3, v1, Le/a/a/b$a;->a:[B

    iget-object v4, v1, Le/a/a/b$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Le/a/a/k;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Le/a/a/n;->F(Le/a/a/k;)Le/a/a/p;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Le/a/a/b$a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v1, p0, Le/a/a/c;->e:Le/a/a/q;

    invoke-interface {v1, v0, v2}, Le/a/a/q;->b(Le/a/a/n;Le/a/a/p;)V

    goto :goto_0

    :cond_6
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Le/a/a/n;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/a/n;->G(Le/a/a/b$a;)Le/a/a/n;

    const/4 v1, 0x1

    iput-boolean v1, v2, Le/a/a/p;->d:Z

    iget-object v1, p0, Le/a/a/c;->g:Le/a/a/c$b;

    invoke-static {v1, v0}, Le/a/a/c$b;->c(Le/a/a/c$b;Le/a/a/n;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Le/a/a/c;->e:Le/a/a/q;

    new-instance v3, Le/a/a/c$a;

    invoke-direct {v3, p0, v0}, Le/a/a/c$a;-><init>(Le/a/a/c;Le/a/a/n;)V

    invoke-interface {v1, v0, v2, v3}, Le/a/a/q;->c(Le/a/a/n;Le/a/a/p;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/c;->f:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    sget-boolean v0, Le/a/a/c;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start new dispatcher"

    invoke-static {v1, v0}, Le/a/a/v;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Le/a/a/c;->d:Le/a/a/b;

    invoke-interface {v0}, Le/a/a/b;->a()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Le/a/a/c;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Le/a/a/c;->f:Z

    if-eqz v0, :cond_1

    return-void
.end method
