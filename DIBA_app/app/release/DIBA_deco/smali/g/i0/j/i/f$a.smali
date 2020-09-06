.class public final Lg/i0/j/i/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/j/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf/s/b/d;)V
    .locals 0

    invoke-direct {p0}, Lg/i0/j/i/f$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lg/i0/j/i/f$a;Ljava/lang/Class;)Lg/i0/j/i/f;
    .locals 0

    invoke-direct {p0, p1}, Lg/i0/j/i/f$a;->b(Ljava/lang/Class;)Lg/i0/j/i/f;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/Class;)Lg/i0/j/i/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;)",
            "Lg/i0/j/i/f;"
        }
    .end annotation

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenSSLSocketImpl"

    invoke-static {v1, v2}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No OpenSSLSocketImpl superclass of socket of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance p1, Lg/i0/j/i/f;

    if-eqz v0, :cond_2

    invoke-direct {p1, v0}, Lg/i0/j/i/f;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_2
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lg/i0/j/i/j$a;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/i0/j/i/f$a$a;

    invoke-direct {v0, p1}, Lg/i0/j/i/f$a$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lg/i0/j/i/j$a;
    .locals 1

    invoke-static {}, Lg/i0/j/i/f;->e()Lg/i0/j/i/j$a;

    move-result-object v0

    return-object v0
.end method
