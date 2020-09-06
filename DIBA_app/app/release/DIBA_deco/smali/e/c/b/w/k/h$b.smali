.class public final Le/c/b/w/k/h$b;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/c/b/w/k/h$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/c/b/w/g;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/w/g<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/c/b/w/k/h$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    iput-object p2, p0, Le/c/b/w/k/h$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    :try_start_0
    iget-object v0, p0, Le/c/b/w/k/h$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/b/w/k/h$c;

    invoke-virtual {v1, p2}, Le/c/b/w/k/h$c;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Le/c/b/w/k/h$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    invoke-virtual {v1, p1, p2}, Le/c/b/w/k/h$c;->a(Le/c/b/y/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
