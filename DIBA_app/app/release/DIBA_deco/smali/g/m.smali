.class public final Lg/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/m$a;
    }
.end annotation


# static fields
.field private static final e:[Lg/j;

.field private static final f:[Lg/j;

.field public static final g:Lg/m;

.field public static final h:Lg/m;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v1, v0, [Lg/j;

    sget-object v2, Lg/j;->q:Lg/j;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/j;->r:Lg/j;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lg/j;->s:Lg/j;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lg/j;->k:Lg/j;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lg/j;->m:Lg/j;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lg/j;->l:Lg/j;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lg/j;->n:Lg/j;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lg/j;->p:Lg/j;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lg/j;->o:Lg/j;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lg/m;->e:[Lg/j;

    const/16 v1, 0x10

    new-array v1, v1, [Lg/j;

    sget-object v2, Lg/j;->q:Lg/j;

    aput-object v2, v1, v3

    sget-object v2, Lg/j;->r:Lg/j;

    aput-object v2, v1, v4

    sget-object v2, Lg/j;->s:Lg/j;

    aput-object v2, v1, v5

    sget-object v2, Lg/j;->k:Lg/j;

    aput-object v2, v1, v6

    sget-object v2, Lg/j;->m:Lg/j;

    aput-object v2, v1, v7

    sget-object v2, Lg/j;->l:Lg/j;

    aput-object v2, v1, v8

    sget-object v2, Lg/j;->n:Lg/j;

    aput-object v2, v1, v9

    sget-object v2, Lg/j;->p:Lg/j;

    aput-object v2, v1, v10

    sget-object v2, Lg/j;->o:Lg/j;

    aput-object v2, v1, v11

    sget-object v2, Lg/j;->i:Lg/j;

    aput-object v2, v1, v0

    sget-object v0, Lg/j;->j:Lg/j;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lg/j;->g:Lg/j;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lg/j;->h:Lg/j;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lg/j;->e:Lg/j;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lg/j;->f:Lg/j;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lg/j;->d:Lg/j;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lg/m;->f:[Lg/j;

    new-instance v0, Lg/m$a;

    invoke-direct {v0, v4}, Lg/m$a;-><init>(Z)V

    sget-object v1, Lg/m;->e:[Lg/j;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/j;

    invoke-virtual {v0, v1}, Lg/m$a;->c([Lg/j;)Lg/m$a;

    new-array v1, v5, [Lg/h0;

    sget-object v2, Lg/h0;->c:Lg/h0;

    aput-object v2, v1, v3

    sget-object v2, Lg/h0;->d:Lg/h0;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lg/m$a;->f([Lg/h0;)Lg/m$a;

    invoke-virtual {v0, v4}, Lg/m$a;->d(Z)Lg/m$a;

    invoke-virtual {v0}, Lg/m$a;->a()Lg/m;

    new-instance v0, Lg/m$a;

    invoke-direct {v0, v4}, Lg/m$a;-><init>(Z)V

    sget-object v1, Lg/m;->f:[Lg/j;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/j;

    invoke-virtual {v0, v1}, Lg/m$a;->c([Lg/j;)Lg/m$a;

    new-array v1, v5, [Lg/h0;

    sget-object v2, Lg/h0;->c:Lg/h0;

    aput-object v2, v1, v3

    sget-object v2, Lg/h0;->d:Lg/h0;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lg/m$a;->f([Lg/h0;)Lg/m$a;

    invoke-virtual {v0, v4}, Lg/m$a;->d(Z)Lg/m$a;

    invoke-virtual {v0}, Lg/m$a;->a()Lg/m;

    move-result-object v0

    sput-object v0, Lg/m;->g:Lg/m;

    new-instance v0, Lg/m$a;

    invoke-direct {v0, v4}, Lg/m$a;-><init>(Z)V

    sget-object v1, Lg/m;->f:[Lg/j;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/j;

    invoke-virtual {v0, v1}, Lg/m$a;->c([Lg/j;)Lg/m$a;

    new-array v1, v7, [Lg/h0;

    sget-object v2, Lg/h0;->c:Lg/h0;

    aput-object v2, v1, v3

    sget-object v2, Lg/h0;->d:Lg/h0;

    aput-object v2, v1, v4

    sget-object v2, Lg/h0;->e:Lg/h0;

    aput-object v2, v1, v5

    sget-object v2, Lg/h0;->f:Lg/h0;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lg/m$a;->f([Lg/h0;)Lg/m$a;

    invoke-virtual {v0, v4}, Lg/m$a;->d(Z)Lg/m$a;

    invoke-virtual {v0}, Lg/m$a;->a()Lg/m;

    new-instance v0, Lg/m$a;

    invoke-direct {v0, v3}, Lg/m$a;-><init>(Z)V

    invoke-virtual {v0}, Lg/m$a;->a()Lg/m;

    move-result-object v0

    sput-object v0, Lg/m;->h:Lg/m;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/m;->a:Z

    iput-boolean p2, p0, Lg/m;->b:Z

    iput-object p3, p0, Lg/m;->c:[Ljava/lang/String;

    iput-object p4, p0, Lg/m;->d:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lg/m;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/m;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lg/m;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/m;->d:[Ljava/lang/String;

    return-object p0
.end method

.method private final g(Ljavax/net/ssl/SSLSocket;Z)Lg/m;
    .locals 4

    iget-object v0, p0, Lg/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "sslSocket.enabledCipherSuites"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lg/m;->c:[Ljava/lang/String;

    sget-object v2, Lg/j;->t:Lg/j$b;

    invoke-virtual {v2}, Lg/j$b;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lg/i0/b;->A([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lg/m;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "sslSocket.enabledProtocols"

    invoke-static {v1, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lg/m;->d:[Ljava/lang/String;

    invoke-static {}, Lf/p/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lg/i0/b;->A([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string v2, "supportedCipherSuites"

    invoke-static {p1, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lg/j;->t:Lg/j$b;

    invoke-virtual {v2}, Lg/j$b;->c()Ljava/util/Comparator;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {p1, v3, v2}, Lg/i0/b;->t([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v2

    const-string v3, "cipherSuitesIntersection"

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    invoke-static {v0, v3}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p1, p1, v2

    const-string p2, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {p1, p2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lg/i0/b;->k([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p1, Lg/m$a;

    invoke-direct {p1, p0}, Lg/m$a;-><init>(Lg/m;)V

    invoke-static {v0, v3}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/m$a;->b([Ljava/lang/String;)Lg/m$a;

    const-string p2, "tlsVersionsIntersection"

    invoke-static {v1, p2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/m$a;->e([Ljava/lang/String;)Lg/m$a;

    invoke-virtual {p1}, Lg/m$a;->a()Lg/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lg/m;->g(Ljavax/net/ssl/SSLSocket;Z)Lg/m;

    move-result-object p2

    invoke-virtual {p2}, Lg/m;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lg/m;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lg/m;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lg/m;->c:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lg/j;->t:Lg/j$b;

    invoke-virtual {v5, v4}, Lg/j$b;->b(Ljava/lang/String;)Lg/j;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lf/o/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final e(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const-string v0, "socket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/m;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf/p/a;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lg/i0/b;->q([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lg/m;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lg/j;->t:Lg/j$b;

    invoke-virtual {v2}, Lg/j$b;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lg/i0/b;->q([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lg/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-boolean v2, p0, Lg/m;->a:Z

    check-cast p1, Lg/m;

    iget-boolean v3, p1, Lg/m;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lg/m;->c:[Ljava/lang/String;

    iget-object v3, p1, Lg/m;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lg/m;->d:[Ljava/lang/String;

    iget-object v3, p1, Lg/m;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lg/m;->b:Z

    iget-boolean p1, p1, Lg/m;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lg/m;->a:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lg/m;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lg/m;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20f

    iget-object v1, p0, Lg/m;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/m;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/m;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    :goto_1
    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/h0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lg/h0;->i:Lg/h0$a;

    invoke-virtual {v5, v4}, Lg/h0$a;->a(Ljava/lang/String;)Lg/h0;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lf/o/j;->F(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lg/m;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/m;->d()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tlsVersions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/m;->i()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/m;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
