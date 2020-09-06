.class final Le/c/b/w/k/f$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/t<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Le/c/b/w/k/f;


# direct methods
.method public constructor <init>(Le/c/b/w/k/f;Le/c/b/f;Ljava/lang/reflect/Type;Le/c/b/t;Ljava/lang/reflect/Type;Le/c/b/t;Le/c/b/w/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/f;",
            "Ljava/lang/reflect/Type;",
            "Le/c/b/t<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Le/c/b/t<",
            "TV;>;",
            "Le/c/b/w/g<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/c/b/w/k/f$a;->c:Le/c/b/w/k/f;

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    new-instance p1, Le/c/b/w/k/l;

    invoke-direct {p1, p2, p4, p3}, Le/c/b/w/k/l;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le/c/b/w/k/f$a;->a:Le/c/b/t;

    new-instance p1, Le/c/b/w/k/l;

    invoke-direct {p1, p2, p6, p5}, Le/c/b/w/k/l;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le/c/b/w/k/f$a;->b:Le/c/b/t;

    return-void
.end method

.method private d(Le/c/b/k;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Le/c/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Le/c/b/k;->c()Le/c/b/p;

    move-result-object p1

    invoke-virtual {p1}, Le/c/b/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/c/b/p;->j()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Le/c/b/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/c/b/p;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Le/c/b/p;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/c/b/p;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Le/c/b/k;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/f$a;->e(Le/c/b/y/a;Ljava/util/Map;)V

    return-void
.end method

.method public e(Le/c/b/y/a;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    iget-object v0, p0, Le/c/b/w/k/f$a;->c:Le/c/b/w/k/f;

    iget-boolean v0, v0, Le/c/b/w/k/f;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    iget-object v1, p0, Le/c/b/w/k/f$a;->b:Le/c/b/t;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Le/c/b/w/k/f$a;->a:Le/c/b/t;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/c/b/t;->b(Ljava/lang/Object;)Le/c/b/k;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Le/c/b/k;->d()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Le/c/b/k;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Le/c/b/y/a;->o()Le/c/b/y/a;

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Le/c/b/y/a;->o()Le/c/b/y/a;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/c/b/k;

    invoke-static {p2, p1}, Le/c/b/w/i;->a(Le/c/b/k;Le/c/b/y/a;)V

    iget-object p2, p0, Le/c/b/w/k/f$a;->b:Le/c/b/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    invoke-virtual {p1}, Le/c/b/y/a;->A()Le/c/b/y/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Le/c/b/y/a;->A()Le/c/b/y/a;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/c/b/k;

    invoke-direct {p0, p2}, Le/c/b/w/k/f$a;->d(Le/c/b/k;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    iget-object p2, p0, Le/c/b/w/k/f$a;->b:Le/c/b/t;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    :goto_6
    return-void
.end method
