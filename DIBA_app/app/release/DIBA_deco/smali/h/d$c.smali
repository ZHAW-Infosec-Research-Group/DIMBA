.class public final Lh/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/d;->v(Lh/y;)Lh/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lh/d;

.field final synthetic c:Lh/y;


# direct methods
.method constructor <init>(Lh/d;Lh/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/y;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lh/d$c;->b:Lh/d;

    iput-object p2, p0, Lh/d$c;->c:Lh/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lh/b0;
    .locals 1

    invoke-virtual {p0}, Lh/d$c;->g()Lh/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lh/d$c;->b:Lh/d;

    invoke-virtual {v0}, Lh/d;->r()V

    :try_start_0
    iget-object v1, p0, Lh/d$c;->c:Lh/y;

    invoke-interface {v1}, Lh/y;->close()V

    sget-object v1, Lf/n;->a:Lf/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v0

    throw v1
.end method

.method public e(Lh/e;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh/e;->Q()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lh/c;->b(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p1, Lh/e;->b:Lh/v;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    :goto_1
    const/high16 v4, 0x10000

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    iget v4, v2, Lh/v;->c:I

    iget v5, v2, Lh/v;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    cmp-long v4, v0, p2

    if-ltz v4, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lh/v;->f:Lh/v;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    throw v3

    :cond_2
    :goto_2
    iget-object v2, p0, Lh/d$c;->b:Lh/d;

    invoke-virtual {v2}, Lh/d;->r()V

    :try_start_0
    iget-object v4, p0, Lh/d$c;->c:Lh/y;

    invoke-interface {v4, p1, v0, v1}, Lh/y;->e(Lh/e;J)V

    sget-object v4, Lf/n;->a:Lf/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lh/d;->s()Z

    move-result v4

    if-nez v4, :cond_3

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v2}, Lh/d;->s()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, p1}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v2}, Lh/d;->s()Z

    move-result p2

    throw p1

    :cond_5
    invoke-static {}, Lf/s/b/f;->g()V

    throw v3

    :cond_6
    return-void
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lh/d$c;->b:Lh/d;

    invoke-virtual {v0}, Lh/d;->r()V

    :try_start_0
    iget-object v1, p0, Lh/d$c;->c:Lh/y;

    invoke-interface {v1}, Lh/y;->flush()V

    sget-object v1, Lf/n;->a:Lf/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lh/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lh/d;->s()Z

    move-result v0

    throw v1
.end method

.method public g()Lh/d;
    .locals 1

    iget-object v0, p0, Lh/d$c;->b:Lh/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/d$c;->c:Lh/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
