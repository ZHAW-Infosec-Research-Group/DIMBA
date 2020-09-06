.class abstract Lg/i0/h/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
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

    iput-object p1, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/k;

    invoke-static {p1}, Lg/i0/h/b;->m(Lg/i0/h/b;)Lh/g;

    move-result-object p1

    invoke-interface {p1}, Lh/a0;->b()Lh/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lh/k;-><init>(Lh/b0;)V

    iput-object v0, p0, Lg/i0/h/b$a;->b:Lh/k;

    return-void
.end method


# virtual methods
.method public b()Lh/b0;
    .locals 1

    iget-object v0, p0, Lg/i0/h/b$a;->b:Lh/k;

    return-object v0
.end method

.method protected final g()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/h/b$a;->c:Z

    return v0
.end method

.method public i(Lh/e;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-static {v0}, Lg/i0/h/b;->m(Lg/i0/h/b;)Lh/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lh/a0;->i(Lh/e;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-virtual {p2}, Lg/i0/h/b;->h()Lg/i0/f/g;

    move-result-object p2

    invoke-virtual {p2}, Lg/i0/f/g;->y()V

    invoke-virtual {p0}, Lg/i0/h/b$a;->n()V

    throw p1
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-static {v0}, Lg/i0/h/b;->n(Lg/i0/h/b;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-static {v0}, Lg/i0/h/b;->n(Lg/i0/h/b;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    iget-object v2, p0, Lg/i0/h/b$a;->b:Lh/k;

    invoke-static {v0, v2}, Lg/i0/h/b;->i(Lg/i0/h/b;Lh/k;)V

    iget-object v0, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-static {v0, v1}, Lg/i0/h/b;->p(Lg/i0/h/b;I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/i0/h/b$a;->d:Lg/i0/h/b;

    invoke-static {v2}, Lg/i0/h/b;->n(Lg/i0/h/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/i0/h/b$a;->c:Z

    return-void
.end method
