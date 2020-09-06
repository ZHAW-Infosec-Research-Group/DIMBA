.class public Lh/k;
.super Lh/b0;
.source ""


# instance fields
.field private e:Lh/b0;


# direct methods
.method public constructor <init>(Lh/b0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lh/b0;-><init>()V

    iput-object p1, p0, Lh/k;->e:Lh/b0;

    return-void
.end method


# virtual methods
.method public a()Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->a()Lh/b0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->b()Lh/b0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0, p1, p2}, Lh/b0;->d(J)Lh/b0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lh/b0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0, p1, p2, p3}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    move-result-object p1

    return-object p1
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/k;->e:Lh/b0;

    return-object v0
.end method

.method public final j(Lh/b0;)Lh/k;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lh/k;->e:Lh/b0;

    return-object p0
.end method
