.class public final Lg/i0/e/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Lg/i0/e/a;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/i0/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Lg/i0/e/e;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/i0/e/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    iput-object p2, p0, Lg/i0/e/d;->f:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/i0/e/d;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic j(Lg/i0/e/d;Lg/i0/e/a;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lg/i0/e/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    invoke-virtual {v1, p0}, Lg/i0/e/e;->h(Lg/i0/e/d;)V

    :cond_2
    sget-object v1, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lg/i0/e/d;->b:Lg/i0/e/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/i0/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lg/i0/e/d;->d:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-object v2, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/i0/e/a;

    invoke-virtual {v3}, Lg/i0/e/a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/i0/e/a;

    sget-object v3, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {v3}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "canceled"

    invoke-static {v0, p0, v3}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final c()Lg/i0/e/a;
    .locals 1

    iget-object v0, p0, Lg/i0/e/d;->b:Lg/i0/e/a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/e/d;->d:Z

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/i0/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/i0/e/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/i0/e/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/e/d;->a:Z

    return v0
.end method

.method public final h()Lg/i0/e/e;
    .locals 1

    iget-object v0, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    return-object v0
.end method

.method public final i(Lg/i0/e/a;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/i0/e/d;->a:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lg/i0/e/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {p2}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    invoke-static {p1, p0, p2}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {p2}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    invoke-static {p1, p0, p2}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lg/i0/e/d;->k(Lg/i0/e/a;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    invoke-virtual {p1, p0}, Lg/i0/e/e;->h(Lg/i0/e/d;)V

    :cond_4
    sget-object p1, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final k(Lg/i0/e/a;JZ)Z
    .locals 10

    const-string v0, "task"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lg/i0/e/a;->e(Lg/i0/e/d;)V

    iget-object v0, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    invoke-virtual {v0}, Lg/i0/e/e;->g()Lg/i0/e/e$a;

    move-result-object v0

    invoke-interface {v0}, Lg/i0/e/e$a;->c()J

    move-result-wide v0

    add-long v2, v0, p2

    iget-object v4, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lg/i0/e/a;->c()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gtz v9, :cond_1

    sget-object p2, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {p2}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "already scheduled"

    invoke-static {p1, p0, p2}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_0
    return v6

    :cond_1
    iget-object v7, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v2, v3}, Lg/i0/e/a;->g(J)V

    sget-object v4, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {v4}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run again after "

    goto :goto_0

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduled after "

    :goto_0
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lg/i0/e/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p0, p4}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_4
    iget-object p4, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/i0/e/a;

    invoke-virtual {v3}, Lg/i0/e/a;->c()J

    move-result-wide v7

    sub-long/2addr v7, v0

    cmp-long v3, v7, p2

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, -0x1

    :goto_3
    if-ne v2, v5, :cond_8

    iget-object p2, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_8
    iget-object p2, p0, Lg/i0/e/d;->c:Ljava/util/List;

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v2, :cond_9

    const/4 v6, 0x1

    :cond_9
    return v6
.end method

.method public final l(Lg/i0/e/a;)V
    .locals 0

    iput-object p1, p0, Lg/i0/e/d;->b:Lg/i0/e/a;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/i0/e/d;->d:Z

    return-void
.end method

.method public final n()V
    .locals 4

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lg/i0/e/d;->a:Z

    invoke-virtual {p0}, Lg/i0/e/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/i0/e/d;->e:Lg/i0/e/e;

    invoke-virtual {v1, p0}, Lg/i0/e/e;->h(Lg/i0/e/d;)V

    :cond_2
    sget-object v1, Lf/n;->a:Lf/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/i0/e/d;->f:Ljava/lang/String;

    return-object v0
.end method
