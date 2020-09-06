.class final Le/c/b/w/k/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/f;",
            "Le/c/b/x/a<",
            "TT;>;)",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p2}, Le/c/b/w/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object v0

    new-instance v1, Le/c/b/w/k/a;

    invoke-static {p2}, Le/c/b/w/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Le/c/b/w/k/a;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/Class;)V

    return-object v1
.end method
