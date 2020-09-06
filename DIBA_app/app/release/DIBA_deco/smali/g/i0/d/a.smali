.class public final Lg/i0/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/d/a$a;
    }
.end annotation


# static fields
.field public static final b:Lg/i0/d/a$a;


# instance fields
.field private final a:Lg/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/i0/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/i0/d/a$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    return-void
.end method

.method public constructor <init>(Lg/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/d/a;->a:Lg/d;

    return-void
.end method


# virtual methods
.method public a(Lg/y$a;)Lg/e0;
    .locals 7

    const-string v0, "chain"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lg/y$a;->call()Lg/f;

    move-result-object v0

    iget-object v1, p0, Lg/i0/d/a;->a:Lg/d;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v1, Lg/i0/d/c$b;

    invoke-interface {p1}, Lg/y$a;->b()Lg/c0;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lg/i0/d/c$b;-><init>(JLg/c0;Lg/e0;)V

    invoke-virtual {v1}, Lg/i0/d/c$b;->b()Lg/i0/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lg/i0/d/c;->b()Lg/c0;

    move-result-object v3

    invoke-virtual {v1}, Lg/i0/d/c;->a()Lg/e0;

    move-result-object v4

    iget-object v5, p0, Lg/i0/d/a;->a:Lg/d;

    if-nez v5, :cond_10

    instance-of v1, v0, Lg/i0/f/e;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lg/i0/f/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/i0/f/e;->m()Lg/u;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lg/u;->a:Lg/u;

    :goto_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    new-instance v2, Lg/e0$a;

    invoke-direct {v2}, Lg/e0$a;-><init>()V

    invoke-interface {p1}, Lg/y$a;->b()Lg/c0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/e0$a;->r(Lg/c0;)Lg/e0$a;

    sget-object p1, Lg/b0;->d:Lg/b0;

    invoke-virtual {v2, p1}, Lg/e0$a;->p(Lg/b0;)Lg/e0$a;

    const/16 p1, 0x1f8

    invoke-virtual {v2, p1}, Lg/e0$a;->g(I)Lg/e0$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v2, p1}, Lg/e0$a;->m(Ljava/lang/String;)Lg/e0$a;

    sget-object p1, Lg/i0/b;->c:Lg/f0;

    invoke-virtual {v2, p1}, Lg/e0$a;->b(Lg/f0;)Lg/e0$a;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lg/e0$a;->s(J)Lg/e0$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lg/e0$a;->q(J)Lg/e0$a;

    invoke-virtual {v2}, Lg/e0$a;->c()Lg/e0;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/u;->A(Lg/f;Lg/e0;)V

    return-object p1

    :cond_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lg/e0;->I()Lg/e0$a;

    move-result-object p1

    sget-object v2, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-static {v2, v4}, Lg/i0/d/a$a;->b(Lg/i0/d/a$a;Lg/e0;)Lg/e0;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/e0$a;->d(Lg/e0;)Lg/e0$a;

    invoke-virtual {p1}, Lg/e0$a;->c()Lg/e0;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lg/u;->b(Lg/f;Lg/e0;)V

    return-object p1

    :cond_3
    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v1, v0, v4}, Lg/u;->a(Lg/f;Lg/e0;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lg/i0/d/a;->a:Lg/d;

    if-eqz v5, :cond_6

    invoke-virtual {v1, v0}, Lg/u;->c(Lg/f;)V

    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {p1, v3}, Lg/y$a;->a(Lg/c0;)Lg/e0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lg/e0;->t()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_9

    invoke-virtual {v4}, Lg/e0;->I()Lg/e0$a;

    move-result-object v0

    sget-object v1, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-virtual {v4}, Lg/e0;->F()Lg/w;

    move-result-object v3

    invoke-virtual {p1}, Lg/e0;->F()Lg/w;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lg/i0/d/a$a;->a(Lg/i0/d/a$a;Lg/w;Lg/w;)Lg/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/e0$a;->k(Lg/w;)Lg/e0$a;

    invoke-virtual {p1}, Lg/e0;->N()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lg/e0$a;->s(J)Lg/e0$a;

    invoke-virtual {p1}, Lg/e0;->L()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lg/e0$a;->q(J)Lg/e0$a;

    sget-object v1, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-static {v1, v4}, Lg/i0/d/a$a;->b(Lg/i0/d/a$a;Lg/e0;)Lg/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/e0$a;->d(Lg/e0;)Lg/e0$a;

    sget-object v1, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-static {v1, p1}, Lg/i0/d/a$a;->b(Lg/i0/d/a$a;Lg/e0;)Lg/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/e0$a;->n(Lg/e0;)Lg/e0$a;

    invoke-virtual {v0}, Lg/e0$a;->c()Lg/e0;

    invoke-virtual {p1}, Lg/e0;->g()Lg/f0;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lg/f0;->close()V

    iget-object p1, p0, Lg/i0/d/a;->a:Lg/d;

    if-nez p1, :cond_7

    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :cond_7
    invoke-virtual {p1}, Lg/d;->r()V

    throw v2

    :cond_8
    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :cond_9
    invoke-virtual {v4}, Lg/e0;->g()Lg/f0;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lg/i0/b;->i(Ljava/io/Closeable;)V

    :cond_a
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lg/e0;->I()Lg/e0$a;

    move-result-object v0

    sget-object v1, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-static {v1, v4}, Lg/i0/d/a$a;->b(Lg/i0/d/a$a;Lg/e0;)Lg/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/e0$a;->d(Lg/e0;)Lg/e0$a;

    sget-object v1, Lg/i0/d/a;->b:Lg/i0/d/a$a;

    invoke-static {v1, p1}, Lg/i0/d/a$a;->b(Lg/i0/d/a$a;Lg/e0;)Lg/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/e0$a;->n(Lg/e0;)Lg/e0$a;

    invoke-virtual {v0}, Lg/e0$a;->c()Lg/e0;

    move-result-object p1

    iget-object v0, p0, Lg/i0/d/a;->a:Lg/d;

    if-eqz v0, :cond_e

    invoke-static {p1}, Lg/i0/g/e;->b(Lg/e0;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lg/i0/d/c;->c:Lg/i0/d/c$a;

    invoke-virtual {v0, p1, v3}, Lg/i0/d/c$a;->a(Lg/e0;Lg/c0;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lg/i0/d/a;->a:Lg/d;

    invoke-virtual {v0, p1}, Lg/d;->n(Lg/e0;)Lg/i0/d/b;

    throw v2

    :cond_c
    :goto_3
    sget-object v0, Lg/i0/g/f;->a:Lg/i0/g/f;

    invoke-virtual {v3}, Lg/c0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/i0/g/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    :try_start_1
    iget-object v0, p0, Lg/i0/d/a;->a:Lg/d;

    invoke-virtual {v0, v3}, Lg/d;->o(Lg/c0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    :cond_e
    :goto_4
    return-object p1

    :cond_f
    invoke-static {}, Lf/s/b/f;->g()V

    throw v2

    :catchall_0
    move-exception p1

    throw p1

    :cond_10
    invoke-virtual {v5, v1}, Lg/d;->t(Lg/i0/d/c;)V

    throw v2

    :cond_11
    invoke-interface {p1}, Lg/y$a;->b()Lg/c0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/d;->g(Lg/c0;)Lg/e0;

    throw v2
.end method
