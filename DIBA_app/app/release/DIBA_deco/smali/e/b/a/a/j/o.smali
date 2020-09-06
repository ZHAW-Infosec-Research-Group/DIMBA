.class public Le/b/a/a/j/o;
.super Le/b/a/a/j/n;
.source ""


# instance fields
.field protected r:Landroid/graphics/Path;

.field protected s:Landroid/graphics/Path;

.field protected t:[F


# direct methods
.method public constructor <init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/b/a/a/j/n;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/b/a/a/j/o;->r:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/b/a/a/j/o;->s:Landroid/graphics/Path;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Le/b/a/a/j/o;->t:[F

    iget-object p1, p0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->g()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    iget-object p2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p2}, Le/b/a/a/k/i;->h()F

    move-result p2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->j()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Le/b/a/a/k/f;->e(FF)Le/b/a/a/k/c;

    move-result-object p1

    iget-object p2, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->i()F

    move-result v0

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->j()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Le/b/a/a/k/f;->e(FF)Le/b/a/a/k/c;

    move-result-object p2

    if-nez p3, :cond_0

    iget-wide v0, p1, Le/b/a/a/k/c;->d:D

    double-to-float p3, v0

    iget-wide v0, p2, Le/b/a/a/k/c;->d:D

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Le/b/a/a/k/c;->d:D

    double-to-float p3, v0

    iget-wide v0, p1, Le/b/a/a/k/c;->d:D

    :goto_0
    double-to-float v0, v0

    invoke-static {p1}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    invoke-static {p2}, Le/b/a/a/k/c;->c(Le/b/a/a/k/c;)V

    move p1, p3

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Le/b/a/a/j/a;->b(FF)V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    iget v2, v1, Le/b/a/a/c/a;->n:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Le/b/a/a/c/a;->m(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/i;->S()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    iget v2, v2, Le/b/a/a/c/a;->n:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    sub-float v3, p2, p4

    iget-object v4, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Le/b/a/a/j/n;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Le/b/a/a/j/n;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/i;->R()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Le/b/a/a/j/n;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    invoke-virtual {v1, v3, v3}, Le/b/a/a/k/f;->c(FF)Le/b/a/a/k/c;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v3}, Le/b/a/a/c/i;->Q()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Le/b/a/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v3}, Le/b/a/a/c/i;->R()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Le/b/a/a/j/o;->r:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-wide v3, v1, Le/b/a/a/k/c;->d:D

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v5}, Le/b/a/a/k/i;->j()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-wide v5, v1, Le/b/a/a/k/c;->d:D

    double-to-float v1, v5

    sub-float/2addr v1, v4

    iget-object v3, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v3}, Le/b/a/a/k/i;->f()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Le/b/a/a/j/n;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public f()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Le/b/a/a/j/n;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Le/b/a/a/j/n;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Le/b/a/a/j/a;->b:Le/b/a/a/c/a;

    invoke-virtual {v1}, Le/b/a/a/c/a;->q()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Le/b/a/a/j/n;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected g()[F
    .locals 4

    iget-object v0, p0, Le/b/a/a/j/n;->l:[F

    array-length v0, v0

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    iget v1, v1, Le/b/a/a/c/a;->n:I

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iput-object v0, p0, Le/b/a/a/j/n;->l:[F

    :cond_0
    iget-object v0, p0, Le/b/a/a/j/n;->l:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    iget-object v2, v2, Le/b/a/a/c/a;->l:[F

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    invoke-virtual {v1, v0}, Le/b/a/a/k/f;->i([F)V

    return-object v0
.end method

.method protected h(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    aget v0, p3, p2

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    aget p2, p3, p2

    iget-object p3, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p3}, Le/b/a/a/k/i;->f()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/j/o;->g()[F

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Le/b/a/a/k/h;->e(F)F

    move-result v1

    iget-object v2, p0, Le/b/a/a/j/a;->e:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v3}, Le/b/a/a/c/i;->I()Le/b/a/a/c/i$a;

    move-result-object v3

    iget-object v4, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v4}, Le/b/a/a/c/i;->J()Le/b/a/a/c/i$b;

    move-result-object v4

    sget-object v5, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne v3, v5, :cond_1

    sget-object v2, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    iget-object v2, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->j()F

    move-result v2

    sub-float/2addr v2, v1

    goto :goto_0

    :cond_1
    sget-object v3, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    iget-object v3, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v3}, Le/b/a/a/k/i;->f()F

    move-result v3

    add-float/2addr v3, v2

    add-float v2, v3, v1

    :goto_0
    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/b;->e()F

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Le/b/a/a/j/o;->d(Landroid/graphics/Canvas;F[FF)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/a;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/a;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/i;->I()Le/b/a/a/c/i$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->h()F

    move-result v2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->j()F

    move-result v3

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->i()F

    move-result v4

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->j()F

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->h()F

    move-result v2

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->f()F

    move-result v3

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->i()F

    move-result v4

    iget-object v0, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->f()F

    move-result v5

    :goto_0
    iget-object v6, p0, Le/b/a/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public l(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Le/b/a/a/j/n;->h:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/a;->s()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v0, Le/b/a/a/j/o;->t:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v7, 0x2

    aput v5, v3, v7

    const/4 v8, 0x3

    aput v5, v3, v8

    iget-object v9, v0, Le/b/a/a/j/o;->s:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/b/a/a/c/g;

    invoke-virtual {v11}, Le/b/a/a/c/b;->f()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget-object v13, v0, Le/b/a/a/j/n;->q:Landroid/graphics/RectF;

    iget-object v14, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v14}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v13, v0, Le/b/a/a/j/n;->q:Landroid/graphics/RectF;

    invoke-virtual {v11}, Le/b/a/a/c/g;->n()F

    move-result v14

    neg-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-virtual {v13, v14, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v13, v0, Le/b/a/a/j/n;->q:Landroid/graphics/RectF;

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v11}, Le/b/a/a/c/g;->l()F

    move-result v13

    aput v13, v3, v4

    invoke-virtual {v11}, Le/b/a/a/c/g;->l()F

    move-result v13

    aput v13, v3, v7

    iget-object v13, v0, Le/b/a/a/j/a;->c:Le/b/a/a/k/f;

    invoke-virtual {v13, v3}, Le/b/a/a/k/f;->i([F)V

    iget-object v13, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v13}, Le/b/a/a/k/i;->j()F

    move-result v13

    aput v13, v3, v6

    iget-object v13, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v13}, Le/b/a/a/k/i;->f()F

    move-result v13

    aput v13, v3, v8

    aget v13, v3, v4

    aget v14, v3, v6

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    aget v13, v3, v7

    aget v14, v3, v8

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v13, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v13, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/g;->m()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v13, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/g;->i()Landroid/graphics/DashPathEffect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v13, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/g;->n()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v13, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v11}, Le/b/a/a/c/g;->j()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/g;->o()Landroid/graphics/Paint$Style;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v5, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/b;->a()I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/b;->c()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Le/b/a/a/c/b;->b()F

    move-result v14

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v11}, Le/b/a/a/c/g;->n()F

    move-result v5

    invoke-virtual {v11}, Le/b/a/a/c/b;->d()F

    move-result v14

    add-float/2addr v5, v14

    invoke-static {v15}, Le/b/a/a/k/h;->e(F)F

    move-result v14

    invoke-virtual {v11}, Le/b/a/a/c/b;->e()F

    move-result v15

    add-float/2addr v14, v15

    invoke-virtual {v11}, Le/b/a/a/c/g;->k()Le/b/a/a/c/g$a;

    move-result-object v11

    sget-object v15, Le/b/a/a/c/g$a;->d:Le/b/a/a/c/g$a;

    if-ne v11, v15, :cond_2

    iget-object v11, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-static {v11, v13}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v6, v3, v4

    add-float/2addr v6, v5

    iget-object v5, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v5}, Le/b/a/a/k/i;->j()F

    move-result v5

    add-float/2addr v5, v14

    add-float/2addr v5, v11

    :goto_1
    iget-object v11, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v6, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    sget-object v6, Le/b/a/a/c/g$a;->e:Le/b/a/a/c/g$a;

    if-ne v11, v6, :cond_3

    iget-object v6, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v6, v3, v4

    add-float/2addr v6, v5

    :goto_2
    iget-object v5, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v5}, Le/b/a/a/k/i;->f()F

    move-result v5

    sub-float/2addr v5, v14

    goto :goto_1

    :cond_3
    sget-object v6, Le/b/a/a/c/g$a;->b:Le/b/a/a/c/g$a;

    if-ne v11, v6, :cond_4

    iget-object v6, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-static {v6, v13}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    aget v11, v3, v4

    sub-float/2addr v11, v5

    iget-object v5, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v5}, Le/b/a/a/k/i;->j()F

    move-result v5

    add-float/2addr v5, v14

    add-float/2addr v5, v6

    iget-object v6, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v11, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    iget-object v6, v0, Le/b/a/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v6, v3, v4

    sub-float/2addr v6, v5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method
