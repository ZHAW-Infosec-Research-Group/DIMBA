.class public Le/b/a/a/f/a;
.super Le/b/a/a/f/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/a/f/b<",
        "Le/b/a/a/g/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/b/a/a/g/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Le/b/a/a/f/b;-><init>(Le/b/a/a/g/a/b;)V

    return-void
.end method


# virtual methods
.method public a(FF)Le/b/a/a/f/c;
    .locals 4

    invoke-super {p0, p1, p2}, Le/b/a/a/f/b;->a(FF)Le/b/a/a/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/b/a/a/f/b;->j(FF)Le/b/a/a/k/c;

    move-result-object p1

    iget-object p2, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    check-cast p2, Le/b/a/a/g/a/a;

    invoke-interface {p2}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object p2

    invoke-virtual {v0}, Le/b/a/a/f/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object p2

    check-cast p2, Le/b/a/a/g/b/a;

    invoke-interface {p2}, Le/b/a/a/g/b/a;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p1, Le/b/a/a/k/c;->d:D

    double-to-float v1, v1

    iget-wide v2, p1, Le/b/a/a/k/c;->e:D

    double-to-float p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Le/b/a/a/f/a;->l(Le/b/a/a/f/c;Le/b/a/a/g/b/a;FF)Le/b/a/a/f/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    return-object v0
.end method

.method protected d()Le/b/a/a/d/c;
    .locals 1

    iget-object v0, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    check-cast v0, Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected e(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method protected k([Le/b/a/a/f/f;F)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-gtz v1, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object p1, p1, v1

    iget p1, p1, Le/b/a/a/f/f;->b:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Le/b/a/a/f/f;->a(F)Z

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public l(Le/b/a/a/f/c;Le/b/a/a/g/b/a;FF)Le/b/a/a/f/c;
    .locals 11

    invoke-interface {p2, p3, p4}, Le/b/a/a/g/b/d;->m0(FF)Le/b/a/a/d/l;

    move-result-object p3

    check-cast p3, Le/b/a/a/d/b;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Le/b/a/a/d/b;->k()[F

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p3}, Le/b/a/a/d/b;->j()[Le/b/a/a/f/f;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_2

    invoke-virtual {p0, v1, p4}, Le/b/a/a/f/a;->k([Le/b/a/a/f/f;F)I

    move-result v9

    iget-object p4, p0, Le/b/a/a/f/b;->a:Le/b/a/a/g/a/b;

    check-cast p4, Le/b/a/a/g/a/a;

    invoke-interface {p2}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object p2

    invoke-interface {p4, p2}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object p2

    invoke-virtual {p1}, Le/b/a/a/f/c;->g()F

    move-result p4

    aget-object v0, v1, v9

    iget v0, v0, Le/b/a/a/f/f;->b:F

    invoke-virtual {p2, p4, v0}, Le/b/a/a/k/f;->c(FF)Le/b/a/a/k/c;

    move-result-object p2

    new-instance p4, Le/b/a/a/f/c;

    invoke-virtual {p3}, Le/b/a/a/d/l;->e()F

    move-result v4

    invoke-virtual {p3}, Le/b/a/a/d/b;->b()F

    move-result v5

    iget-wide v0, p2, Le/b/a/a/k/c;->d:D

    double-to-float v6, v0

    iget-wide v0, p2, Le/b/a/a/k/c;->e:D

    double-to-float v7, v0

    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result v8

    invoke-virtual {p1}, Le/b/a/a/f/c;->b()Le/b/a/a/c/i$a;

    move-result-object v10

    move-object v3, p4

    invoke-direct/range {v3 .. v10}, Le/b/a/a/f/c;-><init>(FFFFIILe/b/a/a/c/i$a;)V

    invoke-static {p2}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    return-object p4

    :cond_2
    return-object v0
.end method
