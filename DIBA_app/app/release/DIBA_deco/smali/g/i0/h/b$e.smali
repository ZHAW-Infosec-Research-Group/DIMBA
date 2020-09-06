.class final Lg/i0/h/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final b:Lh/k;

.field private c:Z

.field final synthetic d:Lg/i0/h/b;


# direct methods
.method public constructor <init>(Lg/i0/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg/i0/h/b$e;->d:Lg/i0/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/k;

    invoke-static {p1}, Lg/i0/h/b;->l(Lg/i0/h/b;)Lh/f;

    move-result-object p1

    invoke-interface {p1}, Lh/y;->b()Lh/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lh/k;-><init>(Lh/b0;)V

    iput-object v0, p0, Lg/i0/h/b$e;->b:Lh/k;

    return-void
.end method


# virtual methods
.method public b()Lh/b0;
    .locals 1

    iget-object v0, p0, Lg/i0/h/b$e;->b:Lh/k;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lg/i0/h/b$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/i0/h/b$e;->c:Z

    iget-object v0, p0, Lg/i0/h/b$e;->d:Lg/i0/h/b;

    iget-object v1, p0, Lg/i0/h/b$e;->b:Lh/k;

    invoke-static {v0, v1}, Lg/i0/h/b;->i(Lg/i0/h/b;Lh/k;)V

    iget-object v0, p0, Lg/i0/h/b$e;->d:Lg/i0/h/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lg/i0/h/b;->p(Lg/i0/h/b;I)V

    return-void
.end method

.method public e(Lh/e;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/i0/h/b$e;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lh/e;->Q()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lg/i0/b;->h(JJJ)V

    iget-object v0, p0, Lg/i0/h/b$e;->d:Lg/i0/h/b;

    invoke-static {v0}, Lg/i0/h/b;->l(Lg/i0/h/b;)Lh/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lh/y;->e(Lh/e;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lg/i0/h/b$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/i0/h/b$e;->d:Lg/i0/h/b;

    invoke-static {v0}, Lg/i0/h/b;->l(Lg/i0/h/b;)Lh/f;

    move-result-object v0

    invoke-interface {v0}, Lh/f;->flush()V

    return-void
.end method
