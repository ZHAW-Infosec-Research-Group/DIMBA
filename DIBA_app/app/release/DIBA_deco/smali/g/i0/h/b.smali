.class public final Lg/i0/h/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/i0/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/h/b$e;,
        Lg/i0/h/b$b;,
        Lg/i0/h/b$a;,
        Lg/i0/h/b$d;,
        Lg/i0/h/b$c;,
        Lg/i0/h/b$f;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lg/i0/h/a;

.field private c:Lg/w;

.field private final d:Lg/a0;

.field private final e:Lg/i0/f/g;

.field private final f:Lh/g;

.field private final g:Lh/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/a0;Lg/i0/f/g;Lh/g;Lh/f;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/h/b;->d:Lg/a0;

    iput-object p2, p0, Lg/i0/h/b;->e:Lg/i0/f/g;

    iput-object p3, p0, Lg/i0/h/b;->f:Lh/g;

    iput-object p4, p0, Lg/i0/h/b;->g:Lh/f;

    new-instance p1, Lg/i0/h/a;

    iget-object p2, p0, Lg/i0/h/b;->f:Lh/g;

    invoke-direct {p1, p2}, Lg/i0/h/a;-><init>(Lh/g;)V

    iput-object p1, p0, Lg/i0/h/b;->b:Lg/i0/h/a;

    return-void
.end method

.method public static final synthetic i(Lg/i0/h/b;Lh/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/i0/h/b;->r(Lh/k;)V

    return-void
.end method

.method public static final synthetic j(Lg/i0/h/b;)Lg/a0;
    .locals 0

    iget-object p0, p0, Lg/i0/h/b;->d:Lg/a0;

    return-object p0
.end method

.method public static final synthetic k(Lg/i0/h/b;)Lg/i0/h/a;
    .locals 0

    iget-object p0, p0, Lg/i0/h/b;->b:Lg/i0/h/a;

    return-object p0
.end method

.method public static final synthetic l(Lg/i0/h/b;)Lh/f;
    .locals 0

    iget-object p0, p0, Lg/i0/h/b;->g:Lh/f;

    return-object p0
.end method

.method public static final synthetic m(Lg/i0/h/b;)Lh/g;
    .locals 0

    iget-object p0, p0, Lg/i0/h/b;->f:Lh/g;

    return-object p0
.end method

.method public static final synthetic n(Lg/i0/h/b;)I
    .locals 0

    iget p0, p0, Lg/i0/h/b;->a:I

    return p0
.end method

.method public static final synthetic o(Lg/i0/h/b;)Lg/w;
    .locals 0

    iget-object p0, p0, Lg/i0/h/b;->c:Lg/w;

    return-object p0
.end method

.method public static final synthetic p(Lg/i0/h/b;I)V
    .locals 0

    iput p1, p0, Lg/i0/h/b;->a:I

    return-void
.end method

.method public static final synthetic q(Lg/i0/h/b;Lg/w;)V
    .locals 0

    iput-object p1, p0, Lg/i0/h/b;->c:Lg/w;

    return-void
.end method

.method private final r(Lh/k;)V
    .locals 2

    invoke-virtual {p1}, Lh/k;->i()Lh/b0;

    move-result-object v0

    sget-object v1, Lh/b0;->d:Lh/b0;

    invoke-virtual {p1, v1}, Lh/k;->j(Lh/b0;)Lh/k;

    invoke-virtual {v0}, Lh/b0;->a()Lh/b0;

    invoke-virtual {v0}, Lh/b0;->b()Lh/b0;

    return-void
.end method

.method private final s(Lg/c0;)Z
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lg/c0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf/v/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final t(Lg/e0;)Z
    .locals 3

    const-string v0, "Transfer-Encoding"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lg/e0;->E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf/v/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final u()Lh/y;
    .locals 2

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lg/i0/h/b;->a:I

    new-instance v0, Lg/i0/h/b$b;

    invoke-direct {v0, p0}, Lg/i0/h/b$b;-><init>(Lg/i0/h/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/i0/h/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final v(Lg/x;)Lh/a0;
    .locals 2

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lg/i0/h/b;->a:I

    new-instance v0, Lg/i0/h/b$c;

    invoke-direct {v0, p0, p1}, Lg/i0/h/b$c;-><init>(Lg/i0/h/b;Lg/x;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/i0/h/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final w(J)Lh/a0;
    .locals 2

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lg/i0/h/b;->a:I

    new-instance v0, Lg/i0/h/b$d;

    invoke-direct {v0, p0, p1, p2}, Lg/i0/h/b$d;-><init>(Lg/i0/h/b;J)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lg/i0/h/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final x()Lh/y;
    .locals 2

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lg/i0/h/b;->a:I

    new-instance v0, Lg/i0/h/b$e;

    invoke-direct {v0, p0}, Lg/i0/h/b$e;-><init>(Lg/i0/h/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/i0/h/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final y()Lh/a0;
    .locals 2

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lg/i0/h/b;->a:I

    invoke-virtual {p0}, Lg/i0/h/b;->h()Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/f/g;->y()V

    new-instance v0, Lg/i0/h/b$f;

    invoke-direct {v0, p0}, Lg/i0/h/b$f;-><init>(Lg/i0/h/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/i0/h/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final A(Lg/w;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/i0/h/b;->g:Lh/f;

    invoke-interface {v0, p2}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    invoke-virtual {p1}, Lg/w;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lg/i0/h/b;->g:Lh/f;

    invoke-virtual {p1, v1}, Lg/w;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    move-result-object v3

    invoke-virtual {p1, v1}, Lg/w;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    move-result-object v3

    invoke-interface {v3, v0}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/i0/h/b;->g:Lh/f;

    invoke-interface {p1, v0}, Lh/f;->u(Ljava/lang/String;)Lh/f;

    iput v2, p0, Lg/i0/h/b;->a:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lg/i0/h/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lg/i0/h/b;->g:Lh/f;

    invoke-interface {v0}, Lh/f;->flush()V

    return-void
.end method

.method public b(Lg/c0;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/i0/g/i;->a:Lg/i0/g/i;

    invoke-virtual {p0}, Lg/i0/h/b;->h()Lg/i0/f/g;

    move-result-object v1

    invoke-virtual {v1}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v1

    invoke-virtual {v1}, Lg/g0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lg/i0/g/i;->a(Lg/c0;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/c0;->e()Lg/w;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lg/i0/h/b;->A(Lg/w;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lg/i0/h/b;->g:Lh/f;

    invoke-interface {v0}, Lh/f;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lg/i0/h/b;->h()Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/f/g;->d()V

    return-void
.end method

.method public d(Lg/c0;J)Lh/y;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/c0;->a()Lg/d0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg/c0;->a()Lg/d0;

    move-result-object v0

    invoke-virtual {v0}, Lg/d0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lg/i0/h/b;->s(Lg/c0;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lg/i0/h/b;->u()Lh/y;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lg/i0/h/b;->x()Lh/y;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    invoke-direct {p0, p1}, Lg/i0/h/b;->t(Lg/e0;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lg/i0/b;->r(Lg/e0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f(Lg/e0;)Lh/a0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/i0/g/e;->b(Lg/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lg/i0/h/b;->w(J)Lh/a0;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lg/i0/h/b;->t(Lg/e0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg/e0;->M()Lg/c0;

    move-result-object p1

    invoke-virtual {p1}, Lg/c0;->i()Lg/x;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/i0/h/b;->v(Lg/x;)Lh/a0;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lg/i0/b;->r(Lg/e0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lg/i0/h/b;->y()Lh/a0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public g(Z)Lg/e0$a;
    .locals 4

    iget v0, p0, Lg/i0/h/b;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    :try_start_0
    sget-object v0, Lg/i0/g/k;->d:Lg/i0/g/k$a;

    iget-object v2, p0, Lg/i0/h/b;->b:Lg/i0/h/a;

    invoke-virtual {v2}, Lg/i0/h/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/i0/g/k$a;->a(Ljava/lang/String;)Lg/i0/g/k;

    move-result-object v0

    new-instance v2, Lg/e0$a;

    invoke-direct {v2}, Lg/e0$a;-><init>()V

    iget-object v3, v0, Lg/i0/g/k;->a:Lg/b0;

    invoke-virtual {v2, v3}, Lg/e0$a;->p(Lg/b0;)Lg/e0$a;

    iget v3, v0, Lg/i0/g/k;->b:I

    invoke-virtual {v2, v3}, Lg/e0$a;->g(I)Lg/e0$a;

    iget-object v3, v0, Lg/i0/g/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/e0$a;->m(Ljava/lang/String;)Lg/e0$a;

    iget-object v3, p0, Lg/i0/h/b;->b:Lg/i0/h/a;

    invoke-virtual {v3}, Lg/i0/h/a;->a()Lg/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/e0$a;->k(Lg/w;)Lg/e0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lg/i0/g/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget p1, v0, Lg/i0/g/k;->b:I

    if-ne p1, v3, :cond_3

    iput v1, p0, Lg/i0/h/b;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Lg/i0/h/b;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lg/i0/h/b;->h()Lg/i0/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/f/g;->z()Lg/g0;

    move-result-object v0

    invoke-virtual {v0}, Lg/g0;->a()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->l()Lg/x;

    move-result-object v0

    invoke-virtual {v0}, Lg/x;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/i0/h/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lg/i0/f/g;
    .locals 1

    iget-object v0, p0, Lg/i0/h/b;->e:Lg/i0/f/g;

    return-object v0
.end method

.method public final z(Lg/e0;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/i0/b;->r(Lg/e0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lg/i0/h/b;->w(J)Lh/a0;

    move-result-object p1

    const v0, 0x7fffffff

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1}, Lg/i0/b;->G(Lh/a0;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {p1}, Lh/a0;->close()V

    return-void
.end method
