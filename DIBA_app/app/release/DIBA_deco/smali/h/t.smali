.class public final Lh/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/f;


# instance fields
.field public final b:Lh/e;

.field public c:Z

.field public final d:Lh/y;


# direct methods
.method public constructor <init>(Lh/y;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/t;->d:Lh/y;

    new-instance p1, Lh/e;

    invoke-direct {p1}, Lh/e;-><init>()V

    iput-object p1, p0, Lh/t;->b:Lh/e;

    return-void
.end method


# virtual methods
.method public a()Lh/e;
    .locals 1

    iget-object v0, p0, Lh/t;->b:Lh/e;

    return-object v0
.end method

.method public b()Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/t;->d:Lh/y;

    invoke-interface {v0}, Lh/y;->b()Lh/b0;

    move-result-object v0

    return-object v0
.end method

.method public c([B)Lh/f;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->V([B)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    iget-boolean v0, p0, Lh/t;->c:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v1}, Lh/e;->Q()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lh/t;->d:Lh/y;

    iget-object v2, p0, Lh/t;->b:Lh/e;

    iget-object v3, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v3}, Lh/e;->Q()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lh/y;->e(Lh/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lh/t;->d:Lh/y;

    invoke-interface {v1}, Lh/y;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/t;->c:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    throw v0
.end method

.method public d([BII)Lh/f;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1, p2, p3}, Lh/e;->W([BII)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lh/e;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1, p2, p3}, Lh/e;->e(Lh/e;J)V

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lh/h;)Lh/f;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->U(Lh/h;)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 5

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0}, Lh/e;->Q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lh/t;->d:Lh/y;

    iget-object v1, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v1}, Lh/e;->Q()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lh/y;->e(Lh/e;J)V

    :cond_0
    iget-object v0, p0, Lh/t;->d:Lh/y;

    invoke-interface {v0}, Lh/y;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lh/f;
    .locals 5

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0}, Lh/e;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lh/t;->d:Lh/y;

    iget-object v3, p0, Lh/t;->b:Lh/e;

    invoke-interface {v2, v3, v0, v1}, Lh/y;->e(Lh/e;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(J)Lh/f;
    .locals 1

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1, p2}, Lh/e;->Z(J)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m(I)Lh/f;
    .locals 1

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->b0(I)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(I)Lh/f;
    .locals 1

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->a0(I)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t;->d:Lh/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lh/f;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->d0(Ljava/lang/String;)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(I)Lh/f;
    .locals 1

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->Y(I)Lh/e;

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lh/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/t;->b:Lh/e;

    invoke-virtual {v0, p1}, Lh/e;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lh/t;->g()Lh/f;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
