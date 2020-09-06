.class public Le/b/a/a/j/m;
.super Le/b/a/a/j/l;
.source ""


# instance fields
.field protected p:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Le/b/a/a/k/i;Le/b/a/a/c/h;Le/b/a/a/k/f;Lcom/github/mikephil/charting/charts/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/b/a/a/j/l;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/h;Le/b/a/a/k/f;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/b/a/a/j/m;->p:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->k()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    iget-object p2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p2}, Le/b/a/a/k/i;->h()F

    move-result p2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->f()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Le/b/a/a/k/f;->e(FF)Le/b/a/a/k/c;

    move-result-object p1

    iget-object p2, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->h()F

    move-result v0

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->j()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Le/b/a/a/k/f;->e(FF)Le/b/a/a/k/c;

    move-result-object p2

    if-eqz p3, :cond_0

    iget-wide v0, p2, Le/b/a/a/k/c;->e:D

    double-to-float p3, v0

    iget-wide v0, p1, Le/b/a/a/k/c;->e:D

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Le/b/a/a/k/c;->e:D

    double-to-float p3, v0

    iget-wide v0, p2, Le/b/a/a/k/c;->e:D

    :goto_0
    double-to-float v0, v0

    invoke-static {p1}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    invoke-static {p2}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    move p1, p3

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Le/b/a/a/j/l;->b(FF)V

    return-void
.end method

.method protected d()V
    .locals 5

    iget-object v0, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/a;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Le/b/a/a/k/h;->b(Landroid/graphics/Paint;Ljava/lang/String;)Le/b/a/a/k/a;

    move-result-object v0

    iget v1, v0, Le/b/a/a/k/a;->d:F

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->d()F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Le/b/a/a/k/a;->e:F

    iget v0, v0, Le/b/a/a/k/a;->d:F

    iget-object v4, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v4}, Le/b/a/a/c/h;->I()F

    move-result v4

    invoke-static {v0, v2, v4}, Le/b/a/a/k/h;->q(FFF)Le/b/a/a/k/a;

    move-result-object v0

    iget-object v4, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Le/b/a/a/c/h;->I:I

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Le/b/a/a/c/h;->J:I

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    iget v2, v0, Le/b/a/a/k/a;->d:F

    invoke-virtual {v1}, Le/b/a/a/c/b;->d()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Le/b/a/a/c/h;->K:I

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    iget v2, v0, Le/b/a/a/k/a;->e:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Le/b/a/a/c/h;->L:I

    invoke-static {v0}, Le/b/a/a/k/a;->c(Le/b/a/a/k/a;)V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    iget-object p2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p2}, Le/b/a/a/k/i;->i()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p2}, Le/b/a/a/k/i;->h()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Le/b/a/a/j/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected g(Landroid/graphics/Canvas;FLe/b/a/a/k/d;)V
    .locals 11

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->I()F

    move-result v0

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/a;->v()Z

    move-result v1

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    iget v2, v2, Le/b/a/a/c/a;->n:I

    mul-int/lit8 v8, v2, 0x2

    new-array v9, v8, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    if-eqz v1, :cond_0

    iget-object v5, v5, Le/b/a/a/c/a;->m:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    goto :goto_1

    :cond_0
    iget-object v5, v5, Le/b/a/a/c/a;->l:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    invoke-virtual {v1, v9}, Le/b/a/a/k/f;->i([F)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    add-int/lit8 v1, v10, 0x1

    aget v5, v9, v1

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1, v5}, Le/b/a/a/k/i;->D(F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/a;->u()Le/b/a/a/e/d;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    iget-object v3, v2, Le/b/a/a/c/a;->l:[F

    div-int/lit8 v4, v10, 0x2

    aget v3, v3, v4

    invoke-interface {v1, v3, v2}, Le/b/a/a/e/d;->a(FLe/b/a/a/c/a;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Le/b/a/a/j/l;->f(Landroid/graphics/Canvas;Ljava/lang/String;FFLe/b/a/a/k/d;F)V

    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Le/b/a/a/j/l;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Le/b/a/a/j/l;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Le/b/a/a/j/a;->b:Le/b/a/a/c/a;

    invoke-virtual {v1}, Le/b/a/a/c/a;->q()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Le/b/a/a/j/l;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/b;->d()F

    move-result v0

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Le/b/a/a/k/d;->b(FF)Le/b/a/a/k/d;

    move-result-object v2

    iget-object v3, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v3}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v3

    sget-object v4, Le/b/a/a/c/h$a;->b:Le/b/a/a/c/h$a;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    iput v1, v2, Le/b/a/a/k/d;->d:F

    iput v5, v2, Le/b/a/a/k/d;->e:F

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->i()F

    move-result v1

    :goto_0
    add-float/2addr v1, v0

    :goto_1
    invoke-virtual {p0, p1, v1, v2}, Le/b/a/a/j/m;->g(Landroid/graphics/Canvas;FLe/b/a/a/k/d;)V

    goto :goto_4

    :cond_1
    iget-object v3, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v3}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v3

    sget-object v4, Le/b/a/a/c/h$a;->e:Le/b/a/a/c/h$a;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    iput v6, v2, Le/b/a/a/k/d;->d:F

    iput v5, v2, Le/b/a/a/k/d;->e:F

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->i()F

    move-result v1

    :goto_2
    sub-float/2addr v1, v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v3}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v3

    sget-object v4, Le/b/a/a/c/h$a;->c:Le/b/a/a/c/h$a;

    if-ne v3, v4, :cond_3

    :goto_3
    iput v6, v2, Le/b/a/a/k/d;->d:F

    iput v5, v2, Le/b/a/a/k/d;->e:F

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->h()F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v3}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v3

    sget-object v4, Le/b/a/a/c/h$a;->f:Le/b/a/a/c/h$a;

    if-ne v3, v4, :cond_4

    iput v6, v2, Le/b/a/a/k/d;->d:F

    iput v5, v2, Le/b/a/a/k/d;->e:F

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->h()F

    move-result v1

    goto :goto_0

    :cond_4
    iput v1, v2, Le/b/a/a/k/d;->d:F

    iput v5, v2, Le/b/a/a/k/d;->e:F

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->i()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Le/b/a/a/j/m;->g(Landroid/graphics/Canvas;FLe/b/a/a/k/d;)V

    goto :goto_3

    :goto_4
    invoke-static {v2}, Le/b/a/a/k/d;->c(Le/b/a/a/k/d;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/a;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v1}, Le/b/a/a/c/a;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->b:Le/b/a/a/c/h$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->e:Le/b/a/a/c/h$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->d:Le/b/a/a/c/h$a;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->i()F

    move-result v2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->j()F

    move-result v3

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->i()F

    move-result v4

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->f()F

    move-result v5

    iget-object v6, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->c:Le/b/a/a/c/h$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->f:Le/b/a/a/c/h$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/h$a;->d:Le/b/a/a/c/h$a;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->h()F

    move-result v2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->j()F

    move-result v3

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->h()F

    move-result v4

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->f()F

    move-result v5

    iget-object v6, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public n(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Le/b/a/a/j/l;->h:Le/b/a/a/c/h;

    invoke-virtual {v0}, Le/b/a/a/c/a;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Le/b/a/a/j/l;->l:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v5, p0, Le/b/a/a/j/m;->p:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/b/a/a/c/g;

    invoke-virtual {v6}, Le/b/a/a/c/b;->f()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v8, p0, Le/b/a/a/j/l;->m:Landroid/graphics/RectF;

    iget-object v9, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v9}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, p0, Le/b/a/a/j/l;->m:Landroid/graphics/RectF;

    invoke-virtual {v6}, Le/b/a/a/c/g;->n()F

    move-result v9

    neg-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v3, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Le/b/a/a/j/l;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v8, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/g;->m()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/g;->n()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/g;->i()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v6}, Le/b/a/a/c/g;->l()F

    move-result v8

    aput v8, v1, v4

    iget-object v8, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    invoke-virtual {v8, v1}, Le/b/a/a/k/f;->i([F)V

    iget-object v8, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v8}, Le/b/a/a/k/i;->h()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v8}, Le/b/a/a/k/i;->i()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v6}, Le/b/a/a/c/g;->j()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/g;->o()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/b;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Le/b/a/a/c/b;->b()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-static {v9, v8}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Le/b/a/a/k/h;->e(F)F

    move-result v10

    invoke-virtual {v6}, Le/b/a/a/c/b;->d()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v6}, Le/b/a/a/c/g;->n()F

    move-result v11

    add-float/2addr v11, v9

    invoke-virtual {v6}, Le/b/a/a/c/b;->e()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v6}, Le/b/a/a/c/g;->k()Le/b/a/a/c/g$a;

    move-result-object v6

    sget-object v12, Le/b/a/a/c/g$a;->d:Le/b/a/a/c/g$a;

    if-ne v6, v12, :cond_2

    iget-object v6, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v6}, Le/b/a/a/k/i;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v10, v1, v4

    :goto_1
    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    sget-object v12, Le/b/a/a/c/g$a;->e:Le/b/a/a/c/g$a;

    if-ne v6, v12, :cond_3

    iget-object v6, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v6}, Le/b/a/a/k/i;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v9, v1, v4

    :goto_2
    add-float/2addr v9, v11

    iget-object v10, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    sget-object v12, Le/b/a/a/c/g$a;->b:Le/b/a/a/c/g$a;

    if-ne v6, v12, :cond_4

    iget-object v6, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v6}, Le/b/a/a/k/i;->h()F

    move-result v6

    add-float/2addr v6, v10

    aget v10, v1, v4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v6}, Le/b/a/a/k/i;->G()F

    move-result v6

    add-float/2addr v6, v10

    aget v9, v1, v4

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method
