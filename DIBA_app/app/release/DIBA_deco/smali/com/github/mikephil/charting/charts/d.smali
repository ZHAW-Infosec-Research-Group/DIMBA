.class public Lcom/github/mikephil/charting/charts/d;
.super Lcom/github/mikephil/charting/charts/a;
.source ""


# instance fields
.field private s0:Landroid/graphics/RectF;


# virtual methods
.method protected O()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v1, v1, Le/b/a/a/c/a;->H:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v4, v3, Le/b/a/a/c/a;->H:F

    iget v3, v3, Le/b/a/a/c/a;->G:F

    invoke-virtual {v0, v2, v1, v4, v3}, Le/b/a/a/k/f;->k(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v1, v1, Le/b/a/a/c/a;->H:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v4, v3, Le/b/a/a/c/a;->H:F

    iget v3, v3, Le/b/a/a/c/a;->G:F

    invoke-virtual {v0, v2, v1, v4, v3}, Le/b/a/a/k/f;->k(FFFF)V

    return-void
.end method

.method public g()V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/d;->s0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->z(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/d;->s0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/i;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v5}, Le/b/a/a/j/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/b/a/a/c/i;->M(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v3, v2

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/i;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v5}, Le/b/a/a/j/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/b/a/a/c/i;->M(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v5, v2, Le/b/a/a/c/h;->K:I

    int-to-float v5, v5

    invoke-virtual {v2}, Le/b/a/a/c/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->c:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v1, v5

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->b:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_3

    :goto_0
    add-float/2addr v4, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->d:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v1, v5

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getExtraRightOffset()F

    move-result v2

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getExtraBottomOffset()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/github/mikephil/charting/charts/b;->T:F

    invoke-static {v2}, Le/b/a/a/k/h;->e(F)F

    move-result v2

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v5, v6, v7, v8, v2}, Le/b/a/a/k/i;->K(FFFF)V

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetLeft: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetBottom: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->N()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/d;->O()V

    return-void
.end method

.method public getHighestVisibleX()F
    .locals 4

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->h()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->j()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->m0:Le/b/a/a/k/c;

    invoke-virtual {v0, v1, v2, v3}, Le/b/a/a/k/f;->f(FFLe/b/a/a/k/c;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->F:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->m0:Le/b/a/a/k/c;

    iget-wide v2, v2, Le/b/a/a/k/c;->e:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->h()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->f()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->l0:Le/b/a/a/k/c;

    invoke-virtual {v0, v1, v2, v3}, Le/b/a/a/k/f;->f(FFLe/b/a/a/k/c;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->G:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->l0:Le/b/a/a/k/c;

    iget-wide v2, v2, Le/b/a/a/k/c;->e:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public l(FF)Le/b/a/a/f/c;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getHighlighter()Le/b/a/a/f/e;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Le/b/a/a/f/e;->a(FF)Le/b/a/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method protected m(Le/b/a/a/f/c;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Le/b/a/a/f/c;->e()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Le/b/a/a/f/c;->d()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method protected o()V
    .locals 4

    new-instance v0, Le/b/a/a/k/b;

    invoke-direct {v0}, Le/b/a/a/k/b;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/a;->o()V

    new-instance v0, Le/b/a/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, v1}, Le/b/a/a/k/g;-><init>(Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    new-instance v0, Le/b/a/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, v1}, Le/b/a/a/k/g;-><init>(Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    new-instance v0, Le/b/a/a/j/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->v:Le/b/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, p0, v1, v2}, Le/b/a/a/j/f;-><init>(Le/b/a/a/g/a/a;Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    new-instance v0, Le/b/a/a/f/d;

    invoke-direct {v0, p0}, Le/b/a/a/f/d;-><init>(Le/b/a/a/g/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/c;->setHighlighter(Le/b/a/a/f/b;)V

    new-instance v0, Le/b/a/a/j/o;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3}, Le/b/a/a/j/o;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    new-instance v0, Le/b/a/a/j/o;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3}, Le/b/a/a/j/o;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    new-instance v0, Le/b/a/a/j/m;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3, p0}, Le/b/a/a/j/m;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/h;Le/b/a/a/k/f;Lcom/github/mikephil/charting/charts/a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->H:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {p1, v0}, Le/b/a/a/k/i;->R(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->H:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {p1, v0}, Le/b/a/a/k/i;->P(F)V

    return-void
.end method
