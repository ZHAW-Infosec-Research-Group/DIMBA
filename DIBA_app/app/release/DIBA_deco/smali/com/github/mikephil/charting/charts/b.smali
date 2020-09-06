.class public abstract Lcom/github/mikephil/charting/charts/b;
.super Lcom/github/mikephil/charting/charts/c;
.source ""

# interfaces
.implements Le/b/a/a/g/a/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/a/a/d/c<",
        "+",
        "Le/b/a/a/g/b/b<",
        "+",
        "Le/b/a/a/d/l;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/c<",
        "TT;>;",
        "Le/b/a/a/g/a/b;"
    }
.end annotation


# instance fields
.field protected H:I

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field protected P:Landroid/graphics/Paint;

.field protected Q:Landroid/graphics/Paint;

.field protected R:Z

.field protected S:Z

.field protected T:F

.field protected U:Z

.field protected V:Le/b/a/a/i/e;

.field protected W:Le/b/a/a/c/i;

.field protected a0:Le/b/a/a/c/i;

.field protected b0:Le/b/a/a/j/n;

.field protected c0:Le/b/a/a/j/n;

.field protected d0:Le/b/a/a/k/f;

.field protected e0:Le/b/a/a/k/f;

.field protected f0:Le/b/a/a/j/l;

.field private g0:J

.field private h0:J

.field private i0:Landroid/graphics/RectF;

.field protected j0:Landroid/graphics/Matrix;

.field private k0:Z

.field protected l0:Le/b/a/a/k/c;

.field protected m0:Le/b/a/a/k/c;

.field protected n0:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/github/mikephil/charting/charts/b;->H:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->I:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->J:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/b;->K:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/b;->L:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/b;->M:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/b;->N:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/b;->O:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->R:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->S:Z

    const/high16 p2, 0x41700000    # 15.0f

    iput p2, p0, Lcom/github/mikephil/charting/charts/b;->T:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->U:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/b;->g0:J

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/b;->h0:J

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/b;->i0:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/b;->j0:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->k0:Z

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p1, p2}, Le/b/a/a/k/c;->b(DD)Le/b/a/a/k/c;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->l0:Le/b/a/a/k/c;

    invoke-static {p1, p2, p1, p2}, Le/b/a/a/k/c;->b(DD)Le/b/a/a/k/c;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->m0:Le/b/a/a/k/c;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    return-void
.end method


# virtual methods
.method protected A(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public B(Le/b/a/a/c/i$a;)Le/b/a/a/c/i;
    .locals 1

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    return-object p1
.end method

.method public C(FF)Le/b/a/a/g/b/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/c;->l(FF)Le/b/a/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast p2, Le/b/a/a/d/c;

    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object p1

    check-cast p1, Le/b/a/a/g/b/b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->t()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/i;->U()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v0}, Le/b/a/a/c/i;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->K:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->M:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0}, Le/b/a/a/k/i;->u()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->L:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->J:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->N:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->O:Z

    return v0
.end method

.method public M(F)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p0}, Le/b/a/a/h/a;->b(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)Le/b/a/a/h/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected N()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/i;->U()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/a/k/f;->j(Z)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v1}, Le/b/a/a/c/i;->U()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/a/k/f;->j(Z)V

    return-void
.end method

.method protected O()V
    .locals 5

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v1, v1, Le/b/a/a/c/a;->G:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v1, v1, Le/b/a/a/c/a;->F:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xdelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v1, v1, Le/b/a/a/c/a;->H:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v1, v1, Le/b/a/a/c/a;->H:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v4, v3, Le/b/a/a/c/a;->H:F

    iget v3, v3, Le/b/a/a/c/a;->G:F

    invoke-virtual {v0, v2, v1, v4, v3}, Le/b/a/a/k/f;->k(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v1, v1, Le/b/a/a/c/a;->H:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v4, v3, Le/b/a/a/c/a;->H:F

    iget v3, v3, Le/b/a/a/c/a;->G:F

    invoke-virtual {v0, v2, v1, v4, v3}, Le/b/a/a/k/f;->k(FFFF)V

    return-void
.end method

.method public P(FFFF)V
    .locals 7

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/b;->j0:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    neg-float v4, p4

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/k/i;->S(FFFFLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    const/4 p2, 0x0

    invoke-virtual {p1, v6, p0, p2}, Le/b/a/a/k/i;->J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->g()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public a(Le/b/a/a/c/i$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/b;->B(Le/b/a/a/c/i$a;)Le/b/a/a/c/i;

    move-result-object p1

    invoke-virtual {p1}, Le/b/a/a/c/i;->U()Z

    move-result p1

    return p1
.end method

.method public c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;
    .locals 1

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    return-object p1
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->o:Le/b/a/a/i/b;

    instance-of v1, v0, Le/b/a/a/i/a;

    if-eqz v1, :cond_0

    check-cast v0, Le/b/a/a/i/a;

    invoke-virtual {v0}, Le/b/a/a/i/a;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 9

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/b;->k0:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->i0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->z(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->i0:Landroid/graphics/RectF;

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

    invoke-virtual {v2, v5}, Le/b/a/a/c/i;->N(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/i;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v5}, Le/b/a/a/j/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/b/a/a/c/i;->N(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v4, v2

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/a;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v5, v2, Le/b/a/a/c/h;->L:I

    int-to-float v5, v5

    invoke-virtual {v2}, Le/b/a/a/c/b;->e()F

    move-result v2

    add-float/2addr v5, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->c:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->b:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_3

    :goto_0
    add-float/2addr v3, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/h;->J()Le/b/a/a/c/h$a;

    move-result-object v2

    sget-object v6, Le/b/a/a/c/h$a;->d:Le/b/a/a/c/h$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v0, v5

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

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->O()V

    return-void
.end method

.method public getAxisLeft()Le/b/a/a/c/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    return-object v0
.end method

.method public getAxisRight()Le/b/a/a/c/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    return-object v0
.end method

.method public bridge synthetic getData()Le/b/a/a/d/c;
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/c;->getData()Le/b/a/a/d/j;

    move-result-object v0

    check-cast v0, Le/b/a/a/d/c;

    return-object v0
.end method

.method public getDrawListener()Le/b/a/a/i/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->V:Le/b/a/a/i/e;

    return-object v0
.end method

.method public getHighestVisibleX()F
    .locals 4

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->i()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->f()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->m0:Le/b/a/a/k/c;

    invoke-virtual {v0, v1, v2, v3}, Le/b/a/a/k/f;->f(FFLe/b/a/a/k/c;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->F:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->m0:Le/b/a/a/k/c;

    iget-wide v2, v2, Le/b/a/a/k/c;->d:D

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

    iget-wide v2, v2, Le/b/a/a/k/c;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/b;->H:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/b;->T:F

    return v0
.end method

.method public getRendererLeftYAxis()Le/b/a/a/j/n;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    return-object v0
.end method

.method public getRendererRightYAxis()Le/b/a/a/j/n;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    return-object v0
.end method

.method public getRendererXAxis()Le/b/a/a/j/l;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Le/b/a/a/k/i;->q()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Le/b/a/a/k/i;->r()F

    move-result v0

    return v0
.end method

.method public getVisibleXRange()F
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v0, v0, Le/b/a/a/c/a;->F:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v1, v1, Le/b/a/a/c/a;->F:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v0, v0, Le/b/a/a/c/a;->G:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v1, v1, Le/b/a/a/c/a;->G:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected o()V
    .locals 4

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/c;->o()V

    new-instance v0, Le/b/a/a/c/i;

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-direct {v0, v1}, Le/b/a/a/c/i;-><init>(Le/b/a/a/c/i$a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    new-instance v0, Le/b/a/a/c/i;

    sget-object v1, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-direct {v0, v1}, Le/b/a/a/c/i;-><init>(Le/b/a/a/c/i$a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    new-instance v0, Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, v1}, Le/b/a/a/k/f;-><init>(Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    new-instance v0, Le/b/a/a/k/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, v1}, Le/b/a/a/k/f;-><init>(Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    new-instance v0, Le/b/a/a/j/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3}, Le/b/a/a/j/n;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    new-instance v0, Le/b/a/a/j/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->e0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3}, Le/b/a/a/j/n;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/i;Le/b/a/a/k/f;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    new-instance v0, Le/b/a/a/j/l;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->d0:Le/b/a/a/k/f;

    invoke-direct {v0, v1, v2, v3}, Le/b/a/a/j/l;-><init>(Le/b/a/a/k/i;Le/b/a/a/c/h;Le/b/a/a/k/f;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    new-instance v0, Le/b/a/a/f/b;

    invoke-direct {v0, p0}, Le/b/a/a/f/b;-><init>(Le/b/a/a/g/a/b;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/c;->setHighlighter(Le/b/a/a/f/b;)V

    new-instance v0, Le/b/a/a/i/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->p()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Le/b/a/a/i/a;-><init>(Lcom/github/mikephil/charting/charts/b;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->o:Le/b/a/a/i/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->P:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Le/b/a/a/k/h;->e(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/c;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/b;->A(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/b;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v4, v3, Le/b/a/a/c/a;->G:F

    iget v5, v3, Le/b/a/a/c/a;->F:F

    invoke-virtual {v3}, Le/b/a/a/c/i;->U()Z

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Le/b/a/a/j/a;->a(FFZ)V

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v4, v3, Le/b/a/a/c/a;->G:F

    iget v5, v3, Le/b/a/a/c/a;->F:F

    invoke-virtual {v3}, Le/b/a/a/c/i;->U()Z

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Le/b/a/a/j/a;->a(FFZ)V

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v4, v3, Le/b/a/a/c/a;->G:F

    iget v3, v3, Le/b/a/a/c/a;->F:F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Le/b/a/a/j/l;->a(FFZ)V

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    invoke-virtual {v2, p1}, Le/b/a/a/j/l;->j(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->j(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->j(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/b;->I:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->x()V

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    invoke-virtual {v2, p1}, Le/b/a/a/j/l;->k(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->k(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->k(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    invoke-virtual {v2, p1}, Le/b/a/a/j/l;->n(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->l(Landroid/graphics/Canvas;)V

    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->l(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v3}, Le/b/a/a/k/i;->o()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    invoke-virtual {v3, p1}, Le/b/a/a/j/e;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->w()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/c;->B:[Le/b/a/a/f/c;

    invoke-virtual {v3, p1, v4}, Le/b/a/a/j/e;->d(Landroid/graphics/Canvas;[Le/b/a/a/f/c;)V

    :cond_8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    invoke-virtual {v2, p1}, Le/b/a/a/j/e;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    invoke-virtual {v2, p1}, Le/b/a/a/j/l;->n(Landroid/graphics/Canvas;)V

    :cond_9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->l(Landroid/graphics/Canvas;)V

    :cond_a
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    invoke-virtual {v2}, Le/b/a/a/c/a;->z()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->l(Landroid/graphics/Canvas;)V

    :cond_b
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    invoke-virtual {v2, p1}, Le/b/a/a/j/l;->i(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->i(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    invoke-virtual {v2, p1}, Le/b/a/a/j/n;->i(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    invoke-virtual {v2, p1}, Le/b/a/a/j/e;->f(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->r:Le/b/a/a/j/g;

    invoke-virtual {v2, p1}, Le/b/a/a/j/g;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/c;->i(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/c;->j(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz p1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/b;->g0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/b;->g0:J

    iget-wide v4, p0, Lcom/github/mikephil/charting/charts/b;->h0:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/mikephil/charting/charts/b;->h0:J

    div-long/2addr v0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawtime: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, average: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, cycles: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/b;->h0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MPAndroidChart"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/b;->U:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->h()F

    move-result v2

    aput v2, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->j()F

    move-result v2

    aput v2, v0, v1

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    invoke-virtual {v0, v2}, Le/b/a/a/k/f;->h([F)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/c;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->U:Z

    if-eqz p1, :cond_1

    sget-object p1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object p1

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    invoke-virtual {p1, p2}, Le/b/a/a/k/f;->i([F)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/b;->n0:[F

    invoke-virtual {p1, p2, p0}, Le/b/a/a/k/i;->e([FLandroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {p1}, Le/b/a/a/k/i;->p()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v1}, Le/b/a/a/k/i;->J(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->o:Le/b/a/a/i/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/c;->k:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->I:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->Q:Landroid/graphics/Paint;

    invoke-static {p1}, Le/b/a/a/k/h;->e(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->K:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->M:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0, p1}, Le/b/a/a/k/i;->M(F)V

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v0, p1}, Le/b/a/a/k/i;->N(F)V

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->S:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->R:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->P:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->L:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->U:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/b;->H:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/b;->T:F

    return-void
.end method

.method public setOnDrawListener(Le/b/a/a/i/e;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->V:Le/b/a/a/i/e;

    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->J:Z

    return-void
.end method

.method public setRendererLeftYAxis(Le/b/a/a/j/n;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    return-void
.end method

.method public setRendererRightYAxis(Le/b/a/a/j/n;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->N:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->O:Z

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->N:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/b;->O:Z

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->H:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {p1, v0}, Le/b/a/a/k/i;->Q(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v0, v0, Le/b/a/a/c/a;->H:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {p1, v0}, Le/b/a/a/k/i;->O(F)V

    return-void
.end method

.method public setXAxisRenderer(Le/b/a/a/j/l;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    const-string v1, "MPAndroidChart"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "Preparing... DATA NOT SET."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/c;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "Preparing..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/b/a/a/j/e;->g()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->y()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->b0:Le/b/a/a/j/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v3, v1, Le/b/a/a/c/a;->F:F

    invoke-virtual {v1}, Le/b/a/a/c/i;->U()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Le/b/a/a/j/a;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->c0:Le/b/a/a/j/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v3, v1, Le/b/a/a/c/a;->F:F

    invoke-virtual {v1}, Le/b/a/a/c/i;->U()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Le/b/a/a/j/a;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->f0:Le/b/a/a/j/l;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget v2, v1, Le/b/a/a/c/a;->G:F

    iget v1, v1, Le/b/a/a/c/a;->F:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Le/b/a/a/j/l;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->r:Le/b/a/a/j/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    invoke-virtual {v0, v1}, Le/b/a/a/j/g;->a(Le/b/a/a/d/j;)V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->g()V

    return-void
.end method

.method protected x()V
    .locals 4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->getLowestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->getHighestVisibleX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    invoke-virtual {v2, v0, v1}, Le/b/a/a/d/j;->f(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    invoke-virtual {v1}, Le/b/a/a/d/j;->o()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    invoke-virtual {v2}, Le/b/a/a/d/j;->n()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/a;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    sget-object v2, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    sget-object v3, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    sget-object v2, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    sget-object v3, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/b;->g()V

    return-void
.end method

.method protected y()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->j:Le/b/a/a/c/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    invoke-virtual {v1}, Le/b/a/a/d/j;->o()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    invoke-virtual {v2}, Le/b/a/a/d/j;->n()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/a;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->W:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    sget-object v2, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    sget-object v3, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/b;->a0:Le/b/a/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v1, Le/b/a/a/d/c;

    sget-object v2, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v1, v2}, Le/b/a/a/d/j;->s(Le/b/a/a/c/i$a;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v2, Le/b/a/a/d/c;

    sget-object v3, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    invoke-virtual {v2, v3}, Le/b/a/a/d/j;->q(Le/b/a/a/c/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/b/a/a/c/i;->i(FF)V

    return-void
.end method

.method protected z(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v0}, Le/b/a/a/c/e;->D()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/github/mikephil/charting/charts/b$a;->c:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v1}, Le/b/a/a/c/e;->y()Le/b/a/a/c/e$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/charts/b$a;->a:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->A()Le/b/a/a/c/e$g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->l()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v1

    iget v1, v1, Le/b/a/a/c/h;->L:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->l()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v1

    iget v1, v1, Le/b/a/a/c/h;->L:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/github/mikephil/charting/charts/b$a;->b:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->u()Le/b/a/a/c/e$d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/github/mikephil/charting/charts/b$a;->a:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->A()Le/b/a/a/c/e$g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->l()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->y:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->l()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->e()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->d()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    iget v1, v1, Le/b/a/a/c/e;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-virtual {v2}, Le/b/a/a/k/i;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v3}, Le/b/a/a/c/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->m:Le/b/a/a/c/e;

    invoke-virtual {v2}, Le/b/a/a/c/b;->d()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_9
    :goto_2
    return-void
.end method
