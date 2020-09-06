.class public Le/b/a/a/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/b/a/a/g/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Le/b/a/a/f/e;"
    }
.end annotation


# instance fields
.field protected a:Le/b/a/a/g/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/a/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/a/g/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/f/b;->b:Ljava/util/List;

    iput-object p1, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    return-void
.end method


# virtual methods
.method public a(FF)Le/b/a/a/f/c;
    .locals 3

    invoke-virtual {p0, p1, p2}, Le/b/a/a/f/b;->j(FF)Le/b/a/a/k/c;

    move-result-object v0

    iget-wide v1, v0, Le/b/a/a/k/c;->d:D

    double-to-float v1, v1

    invoke-static {v0}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    invoke-virtual {p0, v1, p1, p2}, Le/b/a/a/f/b;->f(FFF)Le/b/a/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Le/b/a/a/g/b/d;IFLe/b/a/a/d/k$a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/g/b/d;",
            "IF",
            "Le/b/a/a/d/k$a;",
            ")",
            "Ljava/util/List<",
            "Le/b/a/a/f/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Le/b/a/a/g/b/d;->b(F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-interface {p1, p3, v2, p4}, Le/b/a/a/g/b/d;->N(FFLe/b/a/a/d/k$a;)Le/b/a/a/d/l;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Le/b/a/a/d/l;->e()F

    move-result p3

    invoke-interface {p1, p3}, Le/b/a/a/g/b/d;->b(F)Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/b/a/a/d/l;

    iget-object v1, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    invoke-interface {p1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v2

    invoke-interface {v1, v2}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v1

    invoke-virtual {p4}, Le/b/a/a/d/l;->e()F

    move-result v2

    invoke-virtual {p4}, Le/b/a/a/d/f;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Le/b/a/a/k/f;->c(FF)Le/b/a/a/k/c;

    move-result-object v1

    new-instance v9, Le/b/a/a/f/c;

    invoke-virtual {p4}, Le/b/a/a/d/l;->e()F

    move-result v3

    invoke-virtual {p4}, Le/b/a/a/d/f;->b()F

    move-result v4

    iget-wide v5, v1, Le/b/a/a/k/c;->d:D

    double-to-float v5, v5

    iget-wide v1, v1, Le/b/a/a/k/c;->e:D

    double-to-float v6, v1

    invoke-interface {p1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v8

    move-object v2, v9

    move v7, p2

    invoke-direct/range {v2 .. v8}, Le/b/a/a/f/c;-><init>(FFFFILe/b/a/a/c/i$a;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public c(Ljava/util/List;FFLe/b/a/a/c/i$a;F)Le/b/a/a/f/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/a/f/c;",
            ">;FF",
            "Le/b/a/a/c/i$a;",
            "F)",
            "Le/b/a/a/f/c;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/f/c;

    if-eqz p4, :cond_0

    invoke-virtual {v2}, Le/b/a/a/f/c;->b()Le/b/a/a/c/i$a;

    move-result-object v3

    if-ne v3, p4, :cond_1

    :cond_0
    invoke-virtual {v2}, Le/b/a/a/f/c;->h()F

    move-result v3

    invoke-virtual {v2}, Le/b/a/a/f/c;->j()F

    move-result v4

    invoke-virtual {p0, p2, p3, v3, v4}, Le/b/a/a/f/b;->e(FFFF)F

    move-result v3

    cmpg-float v4, v3, p5

    if-gez v4, :cond_1

    move-object v0, v2

    move p5, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected d()Le/b/a/a/d/c;
    .locals 1

    iget-object v0, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    invoke-interface {v0}, Le/b/a/a/g/a/b;->getData()Le/b/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected e(FFFF)F
    .locals 2

    sub-float/2addr p1, p3

    float-to-double v0, p1

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method protected f(FFF)Le/b/a/a/f/c;
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Le/b/a/a/f/b;->h(FFF)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v1, p3, p1}, Le/b/a/a/f/b;->i(Ljava/util/List;FLe/b/a/a/c/i$a;)F

    move-result p1

    sget-object v0, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v1, p3, v0}, Le/b/a/a/f/b;->i(Ljava/util/List;FLe/b/a/a/c/i$a;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    sget-object p1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    goto :goto_0

    :cond_1
    sget-object p1, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    :goto_0
    move-object v4, p1

    iget-object p1, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    invoke-interface {p1}, Le/b/a/a/g/a/d;->getMaxHighlightDistance()F

    move-result v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/f/b;->c(Ljava/util/List;FFLe/b/a/a/c/i$a;F)Le/b/a/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method protected g(Le/b/a/a/f/c;)F
    .locals 0

    invoke-virtual {p1}, Le/b/a/a/f/c;->j()F

    move-result p1

    return p1
.end method

.method protected h(FFF)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Le/b/a/a/f/c;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Le/b/a/a/f/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Le/b/a/a/f/b;->d()Le/b/a/a/d/c;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Le/b/a/a/f/b;->b:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p2}, Le/b/a/a/d/j;->h()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_2

    invoke-virtual {p2, p3}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object v1

    invoke-interface {v1}, Le/b/a/a/g/b/d;->R()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Le/b/a/a/f/b;->b:Ljava/util/List;

    sget-object v3, Le/b/a/a/d/k$a;->d:Le/b/a/a/d/k$a;

    invoke-virtual {p0, v1, p3, p1, v3}, Le/b/a/a/f/b;->b(Le/b/a/a/g/b/d;IFLe/b/a/a/d/k$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Le/b/a/a/f/b;->b:Ljava/util/List;

    return-object p1
.end method

.method protected i(Ljava/util/List;FLe/b/a/a/c/i$a;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/a/f/c;",
            ">;F",
            "Le/b/a/a/c/i$a;",
            ")F"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/f/c;

    invoke-virtual {v2}, Le/b/a/a/f/c;->b()Le/b/a/a/c/i$a;

    move-result-object v3

    if-ne v3, p3, :cond_0

    invoke-virtual {p0, v2}, Le/b/a/a/f/b;->g(Le/b/a/a/f/c;)F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected j(FF)Le/b/a/a/k/c;
    .locals 2

    iget-object v0, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-interface {v0, v1}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/b/a/a/k/f;->e(FF)Le/b/a/a/k/c;

    move-result-object p1

    return-object p1
.end method
