.class public final Lg/i0/i/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/i0/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/i/g$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lg/i0/i/g$a;


# instance fields
.field private volatile a:Lg/i0/i/i;

.field private final b:Lg/b0;

.field private volatile c:Z

.field private final d:Lg/i0/f/g;

.field private final e:Lg/i0/g/g;

.field private final f:Lg/i0/i/f;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg/i0/i/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/i0/i/g$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/i0/i/g;->i:Lg/i0/i/g$a;

    const-string v2, "connection"

    const-string v3, "host"

    const-string v4, "keep-alive"

    const-string v5, "proxy-connection"

    const-string v6, "te"

    const-string v7, "transfer-encoding"

    const-string v8, "encoding"

    const-string v9, "upgrade"

    const-string v10, ":method"

    const-string v11, ":path"

    const-string v12, ":scheme"

    const-string v13, ":authority"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/i0/b;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/i0/i/g;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/i0/b;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/i0/i/g;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lg/a0;Lg/i0/f/g;Lg/i0/g/g;Lg/i0/i/f;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/i0/i/g;->d:Lg/i0/f/g;

    iput-object p3, p0, Lg/i0/i/g;->e:Lg/i0/g/g;

    iput-object p4, p0, Lg/i0/i/g;->f:Lg/i0/i/f;

    invoke-virtual {p1}, Lg/a0;->w()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lg/b0;->g:Lg/b0;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lg/b0;->g:Lg/b0;

    goto :goto_0

    :cond_0
    sget-object p1, Lg/b0;->f:Lg/b0;

    :goto_0
    iput-object p1, p0, Lg/i0/i/g;->b:Lg/b0;

    return-void
.end method

.method public static final synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lg/i0/i/g;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lg/i0/i/g;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/i0/i/i;->n()Lh/y;

    move-result-object v0

    invoke-interface {v0}, Lh/y;->close()V

    return-void

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Lg/c0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/c0;->a()Lg/d0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lg/i0/i/g;->i:Lg/i0/i/g$a;

    invoke-virtual {v1, p1}, Lg/i0/i/g$a;->a(Lg/c0;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lg/i0/i/g;->f:Lg/i0/i/f;

    invoke-virtual {v1, p1, v0}, Lg/i0/i/f;->d0(Ljava/util/List;Z)Lg/i0/i/i;

    move-result-object p1

    iput-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    iget-boolean p1, p0, Lg/i0/i/g;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-nez p1, :cond_2

    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_2
    sget-object v0, Lg/i0/i/b;->h:Lg/i0/i/b;

    invoke-virtual {p1, v0}, Lg/i0/i/i;->f(Lg/i0/i/b;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lg/i0/i/i;->v()Lh/b0;

    move-result-object p1

    iget-object v1, p0, Lg/i0/i/g;->e:Lg/i0/g/g;

    invoke-virtual {v1}, Lg/i0/g/g;->h()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    iget-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lg/i0/i/i;->E()Lh/b0;

    move-result-object p1

    iget-object v0, p0, Lg/i0/i/g;->e:Lg/i0/g/g;

    invoke-virtual {v0}, Lg/i0/g/g;->j()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lh/b0;->g(JLjava/util/concurrent/TimeUnit;)Lh/b0;

    return-void

    :cond_4
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_5
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lg/i0/i/g;->f:Lg/i0/i/f;

    invoke-virtual {v0}, Lg/i0/i/f;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/i0/i/g;->c:Z

    iget-object v0, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz v0, :cond_0

    sget-object v1, Lg/i0/i/b;->h:Lg/i0/i/b;

    invoke-virtual {v0, v1}, Lg/i0/i/i;->f(Lg/i0/i/b;)V

    :cond_0
    return-void
.end method

.method public d(Lg/c0;J)Lh/y;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/i0/i/i;->n()Lh/y;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lg/e0;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/i0/g/e;->b(Lg/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lg/i0/b;->r(Lg/e0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f(Lg/e0;)Lh/a0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/i0/i/i;->p()Lg/i0/i/i$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Z)Lg/e0$a;
    .locals 4

    iget-object v0, p0, Lg/i0/i/g;->a:Lg/i0/i/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/i0/i/i;->C()Lg/w;

    move-result-object v0

    sget-object v2, Lg/i0/i/g;->i:Lg/i0/i/g$a;

    iget-object v3, p0, Lg/i0/i/g;->b:Lg/b0;

    invoke-virtual {v2, v0, v3}, Lg/i0/i/g$a;->b(Lg/w;Lg/b0;)Lg/e0$a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lg/e0$a;->h()I

    move-result p1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    throw v1
.end method

.method public h()Lg/i0/f/g;
    .locals 1

    iget-object v0, p0, Lg/i0/i/g;->d:Lg/i0/f/g;

    return-object v0
.end method
