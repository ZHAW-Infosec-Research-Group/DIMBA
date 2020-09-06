.class public Le/b/a/a/d/h;
.super Le/b/a/a/d/p;
.source ""

# interfaces
.implements Le/b/a/a/g/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/a/d/p<",
        "Le/b/a/a/d/i;",
        ">;",
        "Le/b/a/a/g/b/c;"
    }
.end annotation


# instance fields
.field private A:F

.field private B:Z

.field protected C:Landroid/graphics/Paint$Style;

.field protected D:Landroid/graphics/Paint$Style;

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field private y:F

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/a/d/i;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Le/b/a/a/d/p;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 p1, 0x40400000    # 3.0f

    iput p1, p0, Le/b/a/a/d/h;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/d/h;->z:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Le/b/a/a/d/h;->A:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/b/a/a/d/h;->B:Z

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Le/b/a/a/d/h;->C:Landroid/graphics/Paint$Style;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Le/b/a/a/d/h;->D:Landroid/graphics/Paint$Style;

    const p1, 0x112234

    iput p1, p0, Le/b/a/a/d/h;->E:I

    iput p1, p0, Le/b/a/a/d/h;->F:I

    iput p1, p0, Le/b/a/a/d/h;->G:I

    iput p1, p0, Le/b/a/a/d/h;->H:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic A0(Le/b/a/a/d/l;)V
    .locals 0

    check-cast p1, Le/b/a/a/d/i;

    invoke-virtual {p0, p1}, Le/b/a/a/d/h;->F0(Le/b/a/a/d/i;)V

    return-void
.end method

.method public E()Landroid/graphics/Paint$Style;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/h;->D:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method protected E0(Le/b/a/a/d/i;)V
    .locals 2

    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/k;->q:F

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/k;->p:F

    :cond_1
    invoke-virtual {p0, p1}, Le/b/a/a/d/k;->z0(Le/b/a/a/d/l;)V

    return-void
.end method

.method protected F0(Le/b/a/a/d/i;)V
    .locals 2

    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/k;->q:F

    :cond_0
    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Le/b/a/a/d/i;->i()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/k;->p:F

    :cond_1
    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/k;->q:F

    :cond_2
    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result v0

    iget v1, p0, Le/b/a/a/d/k;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Le/b/a/a/d/i;->j()F

    move-result p1

    iput p1, p0, Le/b/a/a/d/k;->p:F

    :cond_3
    return-void
.end method

.method public G0(I)V
    .locals 0

    iput p1, p0, Le/b/a/a/d/h;->G:I

    return-void
.end method

.method public H0(I)V
    .locals 0

    iput p1, p0, Le/b/a/a/d/h;->F:I

    return-void
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/h;->z:Z

    return v0
.end method

.method public I0(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/d/h;->B:Z

    return-void
.end method

.method public J0(F)V
    .locals 0

    invoke-static {p1}, Le/b/a/a/k/h;->e(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/d/h;->y:F

    return-void
.end method

.method public K0(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/d/h;->z:Z

    return-void
.end method

.method public V()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->A:F

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/h;->B:Z

    return v0
.end method

.method public b0()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->y:F

    return v0
.end method

.method public c()Landroid/graphics/Paint$Style;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/h;->C:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->E:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->H:I

    return v0
.end method

.method public p0()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->G:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/h;->F:I

    return v0
.end method

.method protected bridge synthetic y0(Le/b/a/a/d/l;)V
    .locals 0

    check-cast p1, Le/b/a/a/d/i;

    invoke-virtual {p0, p1}, Le/b/a/a/d/h;->E0(Le/b/a/a/d/i;)V

    return-void
.end method
