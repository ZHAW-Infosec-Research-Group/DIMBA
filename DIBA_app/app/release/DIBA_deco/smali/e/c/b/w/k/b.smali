.class public final Le/c/b/w/k/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/w/k/b$a;
    }
.end annotation


# instance fields
.field private final b:Le/c/b/w/c;


# direct methods
.method public constructor <init>(Le/c/b/w/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/w/k/b;->b:Le/c/b/w/c;

    return-void
.end method


# virtual methods
.method public a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
    .locals 3
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

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Le/c/b/w/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object v1

    iget-object v2, p0, Le/c/b/w/k/b;->b:Le/c/b/w/c;

    invoke-virtual {v2, p2}, Le/c/b/w/c;->a(Le/c/b/x/a;)Le/c/b/w/g;

    move-result-object p2

    new-instance v2, Le/c/b/w/k/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Le/c/b/w/k/b$a;-><init>(Le/c/b/f;Ljava/lang/reflect/Type;Le/c/b/t;Le/c/b/w/g;)V

    return-object v2
.end method
