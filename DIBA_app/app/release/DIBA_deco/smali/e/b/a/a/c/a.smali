.class public abstract Le/b/a/a/c/a;
.super Le/b/a/a/c/b;
.source ""


# instance fields
.field protected A:Z

.field protected B:F

.field protected C:F

.field protected D:Z

.field protected E:Z

.field public F:F

.field public G:F

.field public H:F

.field protected g:Le/b/a/a/e/d;

.field private h:I

.field private i:F

.field private j:I

.field private k:F

.field public l:[F

.field public m:[F

.field public n:I

.field public o:I

.field private p:I

.field protected q:F

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field private x:Landroid/graphics/DashPathEffect;

.field private y:Landroid/graphics/DashPathEffect;

.field protected z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/a/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Le/b/a/a/c/b;-><init>()V

    const v0, -0x777778

    iput v0, p0, Le/b/a/a/c/a;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Le/b/a/a/c/a;->i:F

    iput v0, p0, Le/b/a/a/c/a;->j:I

    iput v1, p0, Le/b/a/a/c/a;->k:F

    const/4 v0, 0x0

    new-array v2, v0, [F

    iput-object v2, p0, Le/b/a/a/c/a;->l:[F

    new-array v2, v0, [F

    iput-object v2, p0, Le/b/a/a/c/a;->m:[F

    const/4 v2, 0x6

    iput v2, p0, Le/b/a/a/c/a;->p:I

    iput v1, p0, Le/b/a/a/c/a;->q:F

    iput-boolean v0, p0, Le/b/a/a/c/a;->r:Z

    iput-boolean v0, p0, Le/b/a/a/c/a;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/b/a/a/c/a;->t:Z

    iput-boolean v1, p0, Le/b/a/a/c/a;->u:Z

    iput-boolean v1, p0, Le/b/a/a/c/a;->v:Z

    iput-boolean v0, p0, Le/b/a/a/c/a;->w:Z

    const/4 v1, 0x0

    iput-object v1, p0, Le/b/a/a/c/a;->x:Landroid/graphics/DashPathEffect;

    iput-object v1, p0, Le/b/a/a/c/a;->y:Landroid/graphics/DashPathEffect;

    iput-boolean v0, p0, Le/b/a/a/c/a;->A:Z

    const/4 v1, 0x0

    iput v1, p0, Le/b/a/a/c/a;->B:F

    iput v1, p0, Le/b/a/a/c/a;->C:F

    iput-boolean v0, p0, Le/b/a/a/c/a;->D:Z

    iput-boolean v0, p0, Le/b/a/a/c/a;->E:Z

    iput v1, p0, Le/b/a/a/c/a;->F:F

    iput v1, p0, Le/b/a/a/c/a;->G:F

    iput v1, p0, Le/b/a/a/c/a;->H:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    iput v0, p0, Le/b/a/a/c/b;->e:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v1

    iput v1, p0, Le/b/a/a/c/b;->b:F

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    iput v0, p0, Le/b/a/a/c/b;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/c/a;->z:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->s:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->r:Z

    return v0
.end method

.method public C(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/b/a/a/c/a;->E:Z

    iput p1, p0, Le/b/a/a/c/a;->F:F

    iget v0, p0, Le/b/a/a/c/a;->G:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/c/a;->H:F

    return-void
.end method

.method public D(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/b/a/a/c/a;->D:Z

    iput p1, p0, Le/b/a/a/c/a;->G:F

    iget v0, p0, Le/b/a/a/c/a;->F:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/c/a;->H:F

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/c/a;->t:Z

    return-void
.end method

.method public F(F)V
    .locals 0

    iput p1, p0, Le/b/a/a/c/a;->C:F

    return-void
.end method

.method public G(F)V
    .locals 0

    iput p1, p0, Le/b/a/a/c/a;->B:F

    return-void
.end method

.method public H(Le/b/a/a/e/d;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Le/b/a/a/e/a;

    iget v0, p0, Le/b/a/a/c/a;->o:I

    invoke-direct {p1, v0}, Le/b/a/a/e/a;-><init>(I)V

    :cond_0
    iput-object p1, p0, Le/b/a/a/c/a;->g:Le/b/a/a/e/d;

    return-void
.end method

.method public i(FF)V
    .locals 2

    iget-boolean v0, p0, Le/b/a/a/c/a;->D:Z

    if-eqz v0, :cond_0

    iget p1, p0, Le/b/a/a/c/a;->G:F

    goto :goto_0

    :cond_0
    iget v0, p0, Le/b/a/a/c/a;->B:F

    sub-float/2addr p1, v0

    :goto_0
    iget-boolean v0, p0, Le/b/a/a/c/a;->E:Z

    if-eqz v0, :cond_1

    iget p2, p0, Le/b/a/a/c/a;->F:F

    goto :goto_1

    :cond_1
    iget v0, p0, Le/b/a/a/c/a;->C:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_2
    iput p1, p0, Le/b/a/a/c/a;->G:F

    iput p2, p0, Le/b/a/a/c/a;->F:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/c/a;->H:F

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->j:I

    return v0
.end method

.method public k()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/a;->x:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->k:F

    return v0
.end method

.method public m(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Le/b/a/a/c/a;->l:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/c/a;->u()Le/b/a/a/e/d;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/c/a;->l:[F

    aget p1, v1, p1

    invoke-interface {v0, p1, p0}, Le/b/a/a/e/d;->a(FLe/b/a/a/c/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public n()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->q:F

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->h:I

    return v0
.end method

.method public p()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/a;->y:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->i:F

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Le/b/a/a/c/a;->p:I

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/b/a/a/c/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/b/a/a/c/a;->z:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Le/b/a/a/c/a;->l:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Le/b/a/a/c/a;->m(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public u()Le/b/a/a/e/d;
    .locals 2

    iget-object v0, p0, Le/b/a/a/c/a;->g:Le/b/a/a/e/d;

    if-nez v0, :cond_0

    new-instance v0, Le/b/a/a/e/a;

    iget v1, p0, Le/b/a/a/c/a;->o:I

    invoke-direct {v0, v1}, Le/b/a/a/e/a;-><init>(I)V

    :goto_0
    iput-object v0, p0, Le/b/a/a/c/a;->g:Le/b/a/a/e/d;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Le/b/a/a/e/d;->b()I

    move-result v0

    iget v1, p0, Le/b/a/a/c/a;->o:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/b/a/a/c/a;->g:Le/b/a/a/e/d;

    instance-of v0, v0, Le/b/a/a/e/a;

    if-eqz v0, :cond_1

    new-instance v0, Le/b/a/a/e/a;

    invoke-direct {v0, v1}, Le/b/a/a/e/a;-><init>(I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Le/b/a/a/c/a;->g:Le/b/a/a/e/d;

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Le/b/a/a/c/a;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->u:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->t:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->v:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/a;->A:Z

    return v0
.end method
