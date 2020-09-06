.class public final Lg/a0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Lg/i0/f/i;

.field private a:Lg/r;

.field private b:Lg/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lg/u$b;

.field private f:Z

.field private g:Lg/c;

.field private h:Z

.field private i:Z

.field private j:Lg/p;

.field private k:Lg/d;

.field private l:Lg/t;

.field private m:Ljava/net/Proxy;

.field private n:Ljava/net/ProxySelector;

.field private o:Lg/c;

.field private p:Ljavax/net/SocketFactory;

.field private q:Ljavax/net/ssl/SSLSocketFactory;

.field private r:Ljavax/net/ssl/X509TrustManager;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lg/b0;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljavax/net/ssl/HostnameVerifier;

.field private v:Lg/h;

.field private w:Lg/i0/l/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/r;

    invoke-direct {v0}, Lg/r;-><init>()V

    iput-object v0, p0, Lg/a0$a;->a:Lg/r;

    new-instance v0, Lg/l;

    invoke-direct {v0}, Lg/l;-><init>()V

    iput-object v0, p0, Lg/a0$a;->b:Lg/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/a0$a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/a0$a;->d:Ljava/util/List;

    sget-object v0, Lg/u;->a:Lg/u;

    invoke-static {v0}, Lg/i0/b;->e(Lg/u;)Lg/u$b;

    move-result-object v0

    iput-object v0, p0, Lg/a0$a;->e:Lg/u$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a0$a;->f:Z

    sget-object v1, Lg/c;->a:Lg/c;

    iput-object v1, p0, Lg/a0$a;->g:Lg/c;

    iput-boolean v0, p0, Lg/a0$a;->h:Z

    iput-boolean v0, p0, Lg/a0$a;->i:Z

    sget-object v0, Lg/p;->a:Lg/p;

    iput-object v0, p0, Lg/a0$a;->j:Lg/p;

    sget-object v0, Lg/t;->a:Lg/t;

    iput-object v0, p0, Lg/a0$a;->l:Lg/t;

    sget-object v0, Lg/c;->a:Lg/c;

    iput-object v0, p0, Lg/a0$a;->o:Lg/c;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/a0$a;->p:Ljavax/net/SocketFactory;

    sget-object v0, Lg/a0;->G:Lg/a0$b;

    invoke-virtual {v0}, Lg/a0$b;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0$a;->s:Ljava/util/List;

    sget-object v0, Lg/a0;->G:Lg/a0$b;

    invoke-virtual {v0}, Lg/a0$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/a0$a;->t:Ljava/util/List;

    sget-object v0, Lg/i0/l/d;->a:Lg/i0/l/d;

    iput-object v0, p0, Lg/a0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lg/h;->c:Lg/h;

    iput-object v0, p0, Lg/a0$a;->v:Lg/h;

    const/16 v0, 0x2710

    iput v0, p0, Lg/a0$a;->y:I

    iput v0, p0, Lg/a0$a;->z:I

    iput v0, p0, Lg/a0$a;->A:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lg/a0$a;->C:J

    return-void
.end method


# virtual methods
.method public final A()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final B()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lg/a0$a;->A:I

    return v0
.end method

.method public final D()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final a()Lg/c;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->g:Lg/c;

    return-object v0
.end method

.method public final b()Lg/d;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->k:Lg/d;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lg/a0$a;->x:I

    return v0
.end method

.method public final d()Lg/i0/l/c;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->w:Lg/i0/l/c;

    return-object v0
.end method

.method public final e()Lg/h;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->v:Lg/h;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lg/a0$a;->y:I

    return v0
.end method

.method public final g()Lg/l;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->b:Lg/l;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0$a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lg/p;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->j:Lg/p;

    return-object v0
.end method

.method public final j()Lg/r;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->a:Lg/r;

    return-object v0
.end method

.method public final k()Lg/t;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->l:Lg/t;

    return-object v0
.end method

.method public final l()Lg/u$b;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->e:Lg/u$b;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0$a;->h:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0$a;->i:Z

    return v0
.end method

.method public final o()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lg/a0$a;->C:J

    return-wide v0
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

    iget-object v0, p0, Lg/a0$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lg/a0$a;->B:I

    return v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/b0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/a0$a;->t:Ljava/util/List;

    return-object v0
.end method

.method public final u()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public final v()Lg/c;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->o:Lg/c;

    return-object v0
.end method

.method public final w()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->n:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lg/a0$a;->z:I

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lg/a0$a;->f:Z

    return v0
.end method

.method public final z()Lg/i0/f/i;
    .locals 1

    iget-object v0, p0, Lg/a0$a;->D:Lg/i0/f/i;

    return-object v0
.end method
