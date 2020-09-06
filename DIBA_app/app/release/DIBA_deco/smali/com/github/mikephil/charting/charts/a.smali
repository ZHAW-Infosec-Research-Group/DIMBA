.class public Lcom/github/mikephil/charting/charts/a;
.super Lcom/github/mikephil/charting/charts/b;
.source ""

# interfaces
.implements Le/b/a/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/b<",
        "Le/b/a/a/d/a;",
        ">;",
        "Le/b/a/a/g/a/a;"
    }
.end annotation


# instance fields
.field protected o0:Z

.field private p0:Z

.field private q0:Z

.field private r0:Z


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/a;->q0:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/a;->p0:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/a;->o0:Z

    return v0
.end method

.method public getBarData()Le/b/a/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v0, Le/b/a/a/d/a;

    return-object v0
.end method

.method public l(FF)Le/b/a/a/f/c;
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    if-nez v0, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getHighlighter()Le/b/a/a/f/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/b/a/a/f/e;->a(FF)Le/b/a/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/a;->e()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Le/b/a/a/f/c;

    invoke-virtual {p1}, Le/b/a/a/f/c;->g()F

    move-result v1

    invoke-virtual {p1}, Le/b/a/a/f/c;->i()F

    move-result v2

    invoke-virtual {p1}, Le/b/a/a/f/c;->h()F

    move-result v3

    invoke-virtual {p1}, Le/b/a/a/f/c;->j()F

    move-result v4

    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {p1}, Le/b/a/a/f/c;->b()Le/b/a/a/c/i$a;

    move-result-object v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Le/b/a/a/f/c;-><init>(FFFFIILe/b/a/a/c/i$a;)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected o()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/b;->o()V

    new-instance v0, Le/b/a/a/j/b;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->v:Le/b/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, p0, v1, v2}, Le/b/a/a/j/b;-><init>(Le/b/a/a/g/a/a;Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    new-instance v0, Le/b/a/a/f/a;

    invoke-direct {v0, p0}, Le/b/a/a/f/a;-><init>(Le/b/a/a/g/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/c;->setHighlighter(Le/b/a/a/f/b;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Le/b/a/a/c/a;->G(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/b/a/a/c/a;->F(F)V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/a;->q0:Z

    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/a;->p0:Z

    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/a;->r0:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/a;->o0:Z

    return-void
.end method

.method protected y()V
    .locals 5

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/a;->r0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/a;

    invoke-virtual {v1}, Le/b/a/a/d/j;->o()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/a;

    invoke-virtual {v2}, Le/b/a/a/d/a;->v()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/a;

    invoke-virtual {v2}, Le/b/a/a/d/j;->n()F

    move-result v2

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v4, Le/b/a/a/d/a;

    invoke-virtual {v4}, Le/b/a/a/d/a;->v()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/a;

    invoke-virtual {v1}, Le/b/a/a/d/j;->o()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/a;

    invoke-virtual {v2}, Le/b/a/a/d/j;->n()F

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/a;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/a;

    sget-object v2, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/a;

    sget-object v3, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/a;

    sget-object v2, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/a;

    sget-object v3, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    return-void
.end method
