.class public final Le/c/b/w/k/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/w/k/f$a;
    }
.end annotation


# instance fields
.field private final b:Le/c/b/w/c;

.field final c:Z


# direct methods
.method public constructor <init>(Le/c/b/w/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/w/k/f;->b:Le/c/b/w/c;

    iput-boolean p2, p0, Le/c/b/w/k/f;->c:Z

    return-void
.end method

.method private b(Le/c/b/f;Ljava/lang/reflect/Type;)Le/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/f;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Le/c/b/t<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Le/c/b/w/k/m;->f:Le/c/b/t;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
    .locals 11
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

    move-result-object v0

    invoke-virtual {p2}, Le/c/b/x/a;->c()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0}, Le/c/b/w/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Le/c/b/w/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Le/c/b/w/k/f;->b(Le/c/b/f;Ljava/lang/reflect/Type;)Le/c/b/t;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object v9

    iget-object v3, p0, Le/c/b/w/k/f;->b:Le/c/b/w/c;

    invoke-virtual {v3, p2}, Le/c/b/w/c;->a(Le/c/b/x/a;)Le/c/b/w/g;

    move-result-object v10

    new-instance p2, Le/c/b/w/k/f$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Le/c/b/w/k/f$a;-><init>(Le/c/b/w/k/f;Le/c/b/f;Ljava/lang/reflect/Type;Le/c/b/t;Ljava/lang/reflect/Type;Le/c/b/t;Le/c/b/w/g;)V

    return-object p2
.end method
