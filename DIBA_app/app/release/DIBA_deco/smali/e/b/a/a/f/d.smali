.class public Le/b/a/a/f/d;
.super Le/b/a/a/f/a;
.source ""


# direct methods
.method public constructor <init>(Le/b/a/a/g/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Le/b/a/a/f/a;-><init>(Le/b/a/a/g/a/a;)V

    return-void
.end method


# virtual methods
.method public a(FF)Le/b/a/a/f/c;
    .locals 4

    iget-object v0, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    check-cast v0, Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Le/b/a/a/f/b;->j(FF)Le/b/a/a/k/c;

    move-result-object v1

    iget-wide v2, v1, Le/b/a/a/k/c;->e:D

    double-to-float v2, v2

    invoke-virtual {p0, v2, p2, p1}, Le/b/a/a/f/b;->f(FFF)Le/b/a/a/f/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result p2

    invoke-virtual {v0, p2}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object p2

    check-cast p2, Le/b/a/a/g/b/a;

    invoke-interface {p2}, Le/b/a/a/g/b/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, v1, Le/b/a/a/k/c;->e:D

    double-to-float v0, v2

    iget-wide v1, v1, Le/b/a/a/k/c;->d:D

    double-to-float v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Le/b/a/a/f/a;->l(Le/b/a/a/f/c;Le/b/a/a/g/b/a;FF)Le/b/a/a/f/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

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

    check-cast v1, Le/b/a/a/g/a/a;

    invoke-interface {p1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v2

    invoke-interface {v1, v2}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v1

    invoke-virtual {p4}, Le/b/a/a/d/f;->b()F

    move-result v2

    invoke-virtual {p4}, Le/b/a/a/d/l;->e()F

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

.method protected e(FFFF)F
    .locals 0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
