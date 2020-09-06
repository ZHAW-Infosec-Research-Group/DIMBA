.class public Lg/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a0$a;,
        Lg/a0$b;
    }
.end annotation


# static fields
.field private static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/b0;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final G:Lg/a0$b;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:Lg/i0/f/i;

.field private final b:Lg/r;

.field private final c:Lg/l;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lg/u$b;

.field private final g:Z

.field private final h:Lg/c;

.field private final i:Z

.field private final j:Z

.field private final k:Lg/p;

.field private final l:Lg/d;

.field private final m:Lg/t;

.field private final n:Ljava/net/Proxy;

.field private final o:Ljava/net/ProxySelector;

.field private final p:Lg/c;

.field private final q:Ljavax/net/SocketFactory;

.field private final r:Ljavax/net/ssl/SSLSocketFactory;

.field private final s:Ljavax/net/ssl/X509TrustManager;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/b0;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljavax/net/ssl/HostnameVerifier;

.field private final w:Lg/h;

.field private final x:Lg/i0/l/c;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/a0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a0$b;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/a0;->G:Lg/a0$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lg/b0;

    sget-object v2, Lg/b0;->f:Lg/b0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/b0;->d:Lg/b0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lg/i0/b;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lg/a0;->E:Ljava/util/List;

    new-array v0, v0, [Lg/m;

    sget-object v1, Lg/m;->g:Lg/m;

    aput-object v1, v0, v3

    sget-object v1, Lg/m;->h:Lg/m;

    aput-object v1, v0, v4

    invoke-static {v0}, Lg/i0/b;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/a0;->F:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lg/a0$a;

    invoke-direct {v0}, Lg/a0$a;-><init>()V

    invoke-direct {p0, v0}, Lg/a0;-><init>(Lg/a0$a;)V

    return-void
.end method

.method public constructor <init>(Lg/a0$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lg/a0$a;->j()Lg/r;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->b:Lg/r;

    invoke-virtual {p1}, Lg/a0$a;->g()Lg/l;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->c:Lg/l;

    invoke-virtual {p1}, Lg/a0$a;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/i0/b;->M(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->d:Ljava/util/List;

    invoke-virtual {p1}, Lg/a0$a;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/i0/b;->M(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->e:Ljava/util/List;

    invoke-virtual {p1}, Lg/a0$a;->l()Lg/u$b;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->f:Lg/u$b;

    invoke-virtual {p1}, Lg/a0$a;->y()Z

    move-result v0

    iput-boolean v0, p0, Lg/a0;->g:Z

    invoke-virtual {p1}, Lg/a0$a;->a()Lg/c;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->h:Lg/c;

    invoke-virtual {p1}, Lg/a0$a;->m()Z

    move-result v0

    iput-boolean v0, p0, Lg/a0;->i:Z

    invoke-virtual {p1}, Lg/a0$a;->n()Z

    move-result v0

    iput-boolean v0, p0, Lg/a0;->j:Z

    invoke-virtual {p1}, Lg/a0$a;->i()Lg/p;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->k:Lg/p;

    invoke-virtual {p1}, Lg/a0$a;->b()Lg/d;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->l:Lg/d;

    invoke-virtual {p1}, Lg/a0$a;->k()Lg/t;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->m:Lg/t;

    invoke-virtual {p1}, Lg/a0$a;->u()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->n:Ljava/net/Proxy;

    invoke-virtual {p1}, Lg/a0$a;->u()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lg/i0/k/a;->a:Lg/i0/k/a;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lg/a0$a;->w()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    iput-object v0, p0, Lg/a0;->o:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Lg/a0$a;->v()Lg/c;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->p:Lg/c;

    invoke-virtual {p1}, Lg/a0$a;->A()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->q:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Lg/a0$a;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->t:Ljava/util/List;

    invoke-virtual {p1}, Lg/a0$a;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->u:Ljava/util/List;

    invoke-virtual {p1}, Lg/a0$a;->o()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lg/a0;->v:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Lg/a0$a;->c()I

    move-result v0

    iput v0, p0, Lg/a0;->y:I

    invoke-virtual {p1}, Lg/a0$a;->f()I

    move-result v0

    iput v0, p0, Lg/a0;->z:I

    invoke-virtual {p1}, Lg/a0$a;->x()I

    move-result v0

    iput v0, p0, Lg/a0;->A:I

    invoke-virtual {p1}, Lg/a0$a;->C()I

    move-result v0

    iput v0, p0, Lg/a0;->B:I

    invoke-virtual {p1}, Lg/a0$a;->s()I

    move-result v0

    iput v0, p0, Lg/a0;->C:I

    invoke-virtual {p1}, Lg/a0$a;->q()J

    invoke-virtual {p1}, Lg/a0$a;->z()Lg/i0/f/i;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lg/i0/f/i;

    invoke-direct {v0}, Lg/i0/f/i;-><init>()V

    :goto_2
    iput-object v0, p0, Lg/a0;->D:Lg/i0/f/i;

    iget-object v0, p0, Lg/a0;->t:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/m;

    invoke-virtual {v1}, Lg/m;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    if-eqz v2, :cond_7

    iput-object v0, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lg/a0;->x:Lg/i0/l/c;

    iput-object v0, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lg/h;->c:Lg/h;

    :goto_4
    iput-object p1, p0, Lg/a0;->w:Lg/h;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lg/a0$a;->B()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lg/a0$a;->B()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lg/a0$a;->d()Lg/i0/l/c;

    move-result-object v1

    if-eqz v1, :cond_a

    iput-object v1, p0, Lg/a0;->x:Lg/i0/l/c;

    invoke-virtual {p1}, Lg/a0$a;->D()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1}, Lg/a0$a;->e()Lg/h;

    move-result-object p1

    iget-object v1, p0, Lg/a0;->x:Lg/i0/l/c;

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_9
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_a
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_b
    sget-object v1, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v1}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v1

    invoke-virtual {v1}, Lg/i0/j/h;->o()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    sget-object v1, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v1}, Lg/i0/j/h$a;->g()Lg/i0/j/h;

    move-result-object v1

    iget-object v2, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_e

    invoke-virtual {v1, v2}, Lg/i0/j/h;->n(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v1, Lg/i0/l/c;->a:Lg/i0/l/c$a;

    iget-object v2, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_d

    invoke-virtual {v1, v2}, Lg/i0/l/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lg/i0/l/c;

    move-result-object v1

    iput-object v1, p0, Lg/a0;->x:Lg/i0/l/c;

    invoke-virtual {p1}, Lg/a0$a;->e()Lg/h;

    move-result-object p1

    iget-object v1, p0, Lg/a0;->x:Lg/i0/l/c;

    if-eqz v1, :cond_c

    :goto_5
    invoke-virtual {p1, v1}, Lg/h;->e(Lg/i0/l/c;)Lg/h;

    move-result-object p1

    goto :goto_4

    :goto_6
    invoke-direct {p0}, Lg/a0;->E()V

    return-void

    :cond_c
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_d
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_e
    invoke-static {}, Lf/s/b/f;->g()V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private final E()V
    .locals 4

    iget-object v0, p0, Lg/a0;->d:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Lg/a0;->e:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_e

    iget-object v0, p0, Lg/a0;->t:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/m;

    invoke-virtual {v1}, Lg/m;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Check failed."

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/a0;->x:Lg/i0/l/c;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    iget-object v0, p0, Lg/a0;->w:Lg/h;

    sget-object v2, Lg/h;->c:Lg/h;

    invoke-static {v0, v2}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lg/a0;->x:Lg/i0/l/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lg/a0;->s:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x509TrustManager == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificateChainCleaner == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sslSocketFactory == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/a0;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Lf/k;

    invoke-direct {v0, v1}, Lf/k;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/a0;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Lf/k;

    invoke-direct {v0, v1}, Lf/k;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lg/a0;->F:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lg/a0;->E:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lg/a0;->A:I

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0;->g:Z

    return v0
.end method

.method public final C()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lg/a0;->q:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Lg/a0;->r:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lg/a0;->B:I

    return v0
.end method

.method public final c()Lg/c;
    .locals 1

    iget-object v0, p0, Lg/a0;->h:Lg/c;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lg/d;
    .locals 1

    iget-object v0, p0, Lg/a0;->l:Lg/d;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg/a0;->y:I

    return v0
.end method

.method public final f()Lg/h;
    .locals 1

    iget-object v0, p0, Lg/a0;->w:Lg/h;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lg/a0;->z:I

    return v0
.end method

.method public final h()Lg/l;
    .locals 1

    iget-object v0, p0, Lg/a0;->c:Lg/l;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0;->t:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lg/p;
    .locals 1

    iget-object v0, p0, Lg/a0;->k:Lg/p;

    return-object v0
.end method

.method public final k()Lg/r;
    .locals 1

    iget-object v0, p0, Lg/a0;->b:Lg/r;

    return-object v0
.end method

.method public final l()Lg/t;
    .locals 1

    iget-object v0, p0, Lg/a0;->m:Lg/t;

    return-object v0
.end method

.method public final m()Lg/u$b;
    .locals 1

    iget-object v0, p0, Lg/a0;->f:Lg/u$b;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0;->i:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0;->j:Z

    return v0
.end method

.method public final p()Lg/i0/f/i;
    .locals 1

    iget-object v0, p0, Lg/a0;->D:Lg/i0/f/i;

    return-object v0
.end method

.method public final q()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lg/a0;->v:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0;->d:Ljava/util/List;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0;->e:Ljava/util/List;

    return-object v0
.end method

.method public u(Lg/c0;)Lg/f;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/i0/f/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/i0/f/e;-><init>(Lg/a0;Lg/c0;Z)V

    return-object v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lg/a0;->C:I

    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/b0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0;->u:Ljava/util/List;

    return-object v0
.end method

.method public final x()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lg/a0;->n:Ljava/net/Proxy;

    return-object v0
.end method

.method public final y()Lg/c;
    .locals 1

    iget-object v0, p0, Lg/a0;->p:Lg/c;

    return-object v0
.end method

.method public final z()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lg/a0;->o:Ljava/net/ProxySelector;

    return-object v0
.end method
