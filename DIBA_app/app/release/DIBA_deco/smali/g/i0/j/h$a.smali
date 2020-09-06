.class public final Lg/i0/j/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/j/h;
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

    invoke-direct {p0}, Lg/i0/j/h$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lg/i0/j/h$a;)Lg/i0/j/h;
    .locals 0

    invoke-direct {p0}, Lg/i0/j/h$a;->f()Lg/i0/j/h;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lg/i0/j/h;
    .locals 1

    sget-object v0, Lg/i0/j/i/c;->c:Lg/i0/j/i/c;

    invoke-virtual {v0}, Lg/i0/j/i/c;->b()V

    sget-object v0, Lg/i0/j/a;->f:Lg/i0/j/a$a;

    invoke-virtual {v0}, Lg/i0/j/a$a;->a()Lg/i0/j/h;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/i0/j/b;->g:Lg/i0/j/b$a;

    invoke-virtual {v0}, Lg/i0/j/b$a;->a()Lg/i0/j/h;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final e()Lg/i0/j/h;
    .locals 1

    invoke-direct {p0}, Lg/i0/j/h$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/i0/j/d;->f:Lg/i0/j/d$a;

    invoke-virtual {v0}, Lg/i0/j/d$a;->b()Lg/i0/j/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lg/i0/j/h$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/i0/j/c;->f:Lg/i0/j/c$a;

    invoke-virtual {v0}, Lg/i0/j/c$a;->a()Lg/i0/j/c;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lg/i0/j/h$a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lg/i0/j/g;->f:Lg/i0/j/g$a;

    invoke-virtual {v0}, Lg/i0/j/g$a;->a()Lg/i0/j/g;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lg/i0/j/f;->e:Lg/i0/j/f$a;

    invoke-virtual {v0}, Lg/i0/j/f$a;->a()Lg/i0/j/f;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lg/i0/j/e;->i:Lg/i0/j/e$b;

    invoke-virtual {v0}, Lg/i0/j/e$b;->a()Lg/i0/j/h;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lg/i0/j/h;

    invoke-direct {v0}, Lg/i0/j/h;-><init>()V

    return-object v0
.end method

.method private final f()Lg/i0/j/h;
    .locals 1

    invoke-virtual {p0}, Lg/i0/j/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lg/i0/j/h$a;->d()Lg/i0/j/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lg/i0/j/h$a;->e()Lg/i0/j/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final i()Z
    .locals 2

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final j()Z
    .locals 2

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    invoke-static {v1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final k()Z
    .locals 2

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenJSSE"

    invoke-static {v1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/b0;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/b0;

    sget-object v3, Lg/b0;->c:Lg/b0;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lf/o/j;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/b0;

    invoke-virtual {v1}, Lg/b0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public final c(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/b0;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/e;

    invoke-direct {v0}, Lh/e;-><init>()V

    invoke-virtual {p0, p1}, Lg/i0/j/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lh/e;->Y(I)Lh/e;

    invoke-virtual {v0, v1}, Lh/e;->d0(Ljava/lang/String;)Lh/e;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lh/e;->H()[B

    move-result-object p1

    return-object p1
.end method

.method public final g()Lg/i0/j/h;
    .locals 1

    invoke-static {}, Lg/i0/j/h;->a()Lg/i0/j/h;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-static {v1, v0}, Lf/s/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
