.class public final Lg/i0/f/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/f/c$a;,
        Lg/i0/f/c$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lg/i0/f/g;

.field private final c:Lg/i0/f/e;

.field private final d:Lg/u;

.field private final e:Lg/i0/f/d;

.field private final f:Lg/i0/g/d;


# direct methods
.method public constructor <init>(Lg/i0/f/e;Lg/u;Lg/i0/f/d;Lg/i0/g/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    iput-object p2, p0, Lg/i0/f/c;->d:Lg/u;

    iput-object p3, p0, Lg/i0/f/c;->e:Lg/i0/f/d;

    iput-object p4, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {p4}, Lg/i0/g/d;->h()Lg/i0/f/g;

    move-result-object p1

    iput-object p1, p0, Lg/i0/f/c;->b:Lg/i0/f/g;

    return-void
.end method

.method private final s(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lg/i0/f/c;->e:Lg/i0/f/d;

    invoke-virtual {v0, p1}, Lg/i0/f/d;->h(Ljava/io/IOException;)V

    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->h()Lg/i0/f/g;

    move-result-object v0

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/i0/f/g;->G(Lg/i0/f/e;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    if-eqz p5, :cond_1

    invoke-virtual {v0, v1, p5}, Lg/u;->s(Lg/f;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Lg/u;->q(Lg/f;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object p2, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {p1, p2, p5}, Lg/u;->x(Lg/f;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1, p2}, Lg/u;->v(Lg/f;J)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {p1, p0, p4, p3, p5}, Lg/i0/f/e;->r(Lg/i0/f/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->cancel()V

    return-void
.end method

.method public final c(Lg/c0;Z)Lh/y;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lg/i0/f/c;->a:Z

    invoke-virtual {p1}, Lg/c0;->a()Lg/d0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/d0;->a()J

    move-result-wide v0

    iget-object p2, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v2, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {p2, v2}, Lg/u;->r(Lg/f;)V

    iget-object p2, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {p2, p1, v0, v1}, Lg/i0/g/d;->d(Lg/c0;J)Lh/y;

    move-result-object p1

    new-instance p2, Lg/i0/f/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lg/i0/f/c$a;-><init>(Lg/i0/f/c;Lh/y;J)V

    return-object p2

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->cancel()V

    iget-object v0, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lg/i0/f/e;->r(Lg/i0/f/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v2, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v1, v2, v0}, Lg/u;->s(Lg/f;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    throw v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v2, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v1, v2, v0}, Lg/u;->s(Lg/f;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    throw v0
.end method

.method public final g()Lg/i0/f/e;
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    return-object v0
.end method

.method public final h()Lg/i0/f/g;
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->b:Lg/i0/f/g;

    return-object v0
.end method

.method public final i()Lg/u;
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    return-object v0
.end method

.method public final j()Lg/i0/f/d;
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->e:Lg/i0/f/d;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lg/i0/f/c;->e:Lg/i0/f/d;

    invoke-virtual {v0}, Lg/i0/f/d;->d()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/i0/f/c;->b:Lg/i0/f/g;

    invoke-virtual {v1}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1

    invoke-virtual {v1}, Lg/g0;->a()Lg/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/a;->l()Lg/x;

    move-result-object v1

    invoke-virtual {v1}, Lg/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/f/c;->a:Z

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0}, Lg/i0/g/d;->h()Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/f/g;->y()V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lg/i0/f/e;->r(Lg/i0/f/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final o(Lg/e0;)Lg/f0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lg/e0;->E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v1, p1}, Lg/i0/g/d;->e(Lg/e0;)J

    move-result-wide v1

    iget-object v3, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v3, p1}, Lg/i0/g/d;->f(Lg/e0;)Lh/a0;

    move-result-object p1

    new-instance v3, Lg/i0/f/c$b;

    invoke-direct {v3, p0, p1, v1, v2}, Lg/i0/f/c$b;-><init>(Lg/i0/f/c;Lh/a0;J)V

    new-instance p1, Lg/i0/g/h;

    invoke-static {v3}, Lh/o;->b(Lh/a0;)Lh/g;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lg/i0/g/h;-><init>(Ljava/lang/String;JLh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/u;->x(Lg/f;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    throw p1
.end method

.method public final p(Z)Lg/e0$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0, p1}, Lg/i0/g/d;->g(Z)Lg/e0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lg/e0$a;->l(Lg/i0/f/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/u;->x(Lg/f;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    throw p1
.end method

.method public final q(Lg/e0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/u;->y(Lg/f;Lg/e0;)V

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1}, Lg/u;->z(Lg/f;)V

    return-void
.end method

.method public final t(Lg/c0;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1}, Lg/u;->u(Lg/f;)V

    iget-object v0, p0, Lg/i0/f/c;->f:Lg/i0/g/d;

    invoke-interface {v0, p1}, Lg/i0/g/d;->b(Lg/c0;)V

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/u;->t(Lg/f;Lg/c0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lg/i0/f/c;->d:Lg/u;

    iget-object v1, p0, Lg/i0/f/c;->c:Lg/i0/f/e;

    invoke-virtual {v0, v1, p1}, Lg/u;->s(Lg/f;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Lg/i0/f/c;->s(Ljava/io/IOException;)V

    throw p1
.end method
