.class public final Lg/i0/j/a;
.super Lg/i0/j/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/j/a$a;
    }
.end annotation


# static fields
.field private static final e:Z

.field public static final f:Lg/i0/j/a$a;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/i0/j/i/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/i0/j/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/i0/j/a$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/i0/j/a;->f:Lg/i0/j/a$a;

    sget-object v0, Lg/i0/j/h;->c:Lg/i0/j/h$a;

    invoke-virtual {v0}, Lg/i0/j/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lg/i0/j/a;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lg/i0/j/h;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lg/i0/j/i/k;

    sget-object v1, Lg/i0/j/i/a;->a:Lg/i0/j/i/a$a;

    invoke-virtual {v1}, Lg/i0/j/i/a$a;->a()Lg/i0/j/i/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lg/i0/j/i/j;

    sget-object v2, Lg/i0/j/i/f;->g:Lg/i0/j/i/f$a;

    invoke-virtual {v2}, Lg/i0/j/i/f$a;->d()Lg/i0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/i0/j/i/j;-><init>(Lg/i0/j/i/j$a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lg/i0/j/i/j;

    sget-object v2, Lg/i0/j/i/i;->b:Lg/i0/j/i/i$b;

    invoke-virtual {v2}, Lg/i0/j/i/i$b;->a()Lg/i0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/i0/j/i/j;-><init>(Lg/i0/j/i/j$a;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lg/i0/j/i/j;

    sget-object v2, Lg/i0/j/i/g;->b:Lg/i0/j/i/g$b;

    invoke-virtual {v2}, Lg/i0/j/i/g$b;->a()Lg/i0/j/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/i0/j/i/j;-><init>(Lg/i0/j/i/j$a;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lf/o/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/i0/j/i/k;

    invoke-interface {v3}, Lg/i0/j/i/k;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lg/i0/j/a;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    sget-boolean v0, Lg/i0/j/a;->e:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Lg/i0/l/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/i0/j/i/b;->d:Lg/i0/j/i/b$a;

    invoke-virtual {v0, p1}, Lg/i0/j/i/b$a;->a(Ljavax/net/ssl/X509TrustManager;)Lg/i0/j/i/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lg/i0/j/h;->c(Ljavax/net/ssl/X509TrustManager;)Lg/i0/l/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lg/b0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/j/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/i0/j/i/k;

    invoke-interface {v2, p1}, Lg/i0/j/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lg/i0/j/i/k;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2, p3}, Lg/i0/j/i/k;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/j/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/i0/j/i/k;

    invoke-interface {v3, p1}, Lg/i0/j/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lg/i0/j/i/k;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lg/i0/j/i/k;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
