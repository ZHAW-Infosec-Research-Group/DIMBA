.class public Le/b/a/a/c/i;
.super Le/b/a/a/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/c/i$a;,
        Le/b/a/a/c/i$b;
    }
.end annotation


# instance fields
.field private I:Z

.field protected J:Z

.field protected K:Z

.field protected L:I

.field protected M:F

.field protected N:F

.field protected O:F

.field private P:Le/b/a/a/c/i$b;

.field private Q:Le/b/a/a/c/i$a;

.field protected R:F

.field protected S:F


# direct methods
.method public constructor <init>(Le/b/a/a/c/i$a;)V
    .locals 2

    invoke-direct {p0}, Le/b/a/a/c/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/b/a/a/c/i;->I:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/b/a/a/c/i;->J:Z

    iput-boolean v0, p0, Le/b/a/a/c/i;->K:Z

    const v0, -0x777778

    iput v0, p0, Le/b/a/a/c/i;->L:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le/b/a/a/c/i;->M:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Le/b/a/a/c/i;->N:F

    iput v0, p0, Le/b/a/a/c/i;->O:F

    sget-object v0, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    iput-object v0, p0, Le/b/a/a/c/i;->P:Le/b/a/a/c/i$b;

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/c/i;->R:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Le/b/a/a/c/i;->S:F

    iput-object p1, p0, Le/b/a/a/c/i;->Q:Le/b/a/a/c/i$a;

    iput v0, p0, Le/b/a/a/c/b;->c:F

    return-void
.end method


# virtual methods
.method public I()Le/b/a/a/c/i$a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/i;->Q:Le/b/a/a/c/i$a;

    return-object v0
.end method

.method public J()Le/b/a/a/c/i$b;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/i;->P:Le/b/a/a/c/i$b;

    return-object v0
.end method

.method public K()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->S:F

    return v0
.end method

.method public L()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->R:F

    return v0
.end method

.method public M(Landroid/graphics/Paint;)F
    .locals 2

    iget v0, p0, Le/b/a/a/c/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Le/b/a/a/c/a;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Le/b/a/a/c/b;->e()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public N(Landroid/graphics/Paint;)F
    .locals 7

    iget v0, p0, Le/b/a/a/c/b;->e:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Le/b/a/a/c/a;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/b/a/a/k/h;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Le/b/a/a/c/b;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Le/b/a/a/c/i;->L()F

    move-result v0

    invoke-virtual {p0}, Le/b/a/a/c/i;->K()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    :cond_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Le/b/a/a/k/h;->e(F)F

    move-result v1

    :cond_1
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public O()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->O:F

    return v0
.end method

.method public P()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->N:F

    return v0
.end method

.method public Q()I
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->L:I

    return v0
.end method

.method public R()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/i;->M:F

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/i;->I:Z

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/i;->K:Z

    return v0
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/i;->J:Z

    return v0
.end method

.method public V()Z
    .locals 2

    invoke-virtual {p0}, Le/b/a/a/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/b/a/a/c/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/b/a/a/c/i;->J()Le/b/a/a/c/i$b;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(FF)V
    .locals 4

    iget-boolean v0, p0, Le/b/a/a/c/a;->D:Z

    if-eqz v0, :cond_0

    iget p1, p0, Le/b/a/a/c/a;->G:F

    :cond_0
    iget-boolean v0, p0, Le/b/a/a/c/a;->E:Z

    if-eqz v0, :cond_1

    iget p2, p0, Le/b/a/a/c/a;->F:F

    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    sub-float/2addr p1, v1

    :cond_2
    iget-boolean v1, p0, Le/b/a/a/c/a;->D:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_3

    div-float v1, v0, v2

    invoke-virtual {p0}, Le/b/a/a/c/i;->O()F

    move-result v3

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    iput p1, p0, Le/b/a/a/c/a;->G:F

    :cond_3
    iget-boolean p1, p0, Le/b/a/a/c/a;->E:Z

    if-nez p1, :cond_4

    div-float/2addr v0, v2

    invoke-virtual {p0}, Le/b/a/a/c/i;->P()F

    move-result p1

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Le/b/a/a/c/a;->F:F

    :cond_4
    iget p1, p0, Le/b/a/a/c/a;->F:F

    iget p2, p0, Le/b/a/a/c/a;->G:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/c/a;->H:F

    return-void
.end method
