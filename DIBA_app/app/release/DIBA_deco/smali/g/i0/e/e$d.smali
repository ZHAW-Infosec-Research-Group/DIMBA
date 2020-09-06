.class public final Lg/i0/e/e$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/e/e;-><init>(Lg/i0/e/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lg/i0/e/e;


# direct methods
.method constructor <init>(Lg/i0/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg/i0/e/e$d;->b:Lg/i0/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/i0/e/e$d;->b:Lg/i0/e/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/i0/e/e$d;->b:Lg/i0/e/e;

    invoke-virtual {v1}, Lg/i0/e/e;->d()Lg/i0/e/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg/i0/e/a;->d()Lg/i0/e/d;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    sget-object v4, Lg/i0/e/e;->j:Lg/i0/e/e$b;

    invoke-virtual {v4}, Lg/i0/e/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lg/i0/e/d;->h()Lg/i0/e/e;

    move-result-object v2

    invoke-virtual {v2}, Lg/i0/e/e;->g()Lg/i0/e/e$a;

    move-result-object v2

    invoke-interface {v2}, Lg/i0/e/e$a;->c()J

    move-result-wide v2

    const-string v5, "starting"

    invoke-static {v1, v0, v5}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v5, p0, Lg/i0/e/e$d;->b:Lg/i0/e/e;

    invoke-static {v5, v1}, Lg/i0/e/e;->b(Lg/i0/e/e;Lg/i0/e/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v5, Lf/n;->a:Lf/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lg/i0/e/d;->h()Lg/i0/e/e;

    move-result-object v4

    invoke-virtual {v4}, Lg/i0/e/e;->g()Lg/i0/e/e$a;

    move-result-object v4

    invoke-interface {v4}, Lg/i0/e/e$a;->c()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished run in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lg/i0/e/b;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lg/i0/e/e$d;->b:Lg/i0/e/e;

    invoke-virtual {v6}, Lg/i0/e/e;->g()Lg/i0/e/e$a;

    move-result-object v6

    invoke-interface {v6, p0}, Lg/i0/e/e$a;->execute(Ljava/lang/Runnable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lg/i0/e/d;->h()Lg/i0/e/e;

    move-result-object v4

    invoke-virtual {v4}, Lg/i0/e/e;->g()Lg/i0/e/e$a;

    move-result-object v4

    invoke-interface {v4}, Lg/i0/e/e$a;->c()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed a run in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lg/i0/e/b;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lg/i0/e/b;->a(Lg/i0/e/a;Lg/i0/e/d;Ljava/lang/String;)V

    :cond_2
    throw v5

    :cond_3
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
