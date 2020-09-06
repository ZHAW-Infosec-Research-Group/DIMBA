.class public abstract Le/b/a/a/d/o;
.super Le/b/a/a/d/p;
.source ""

# interfaces
.implements Le/b/a/a/g/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/a/a/d/l;",
        ">",
        "Le/b/a/a/d/p<",
        "TT;>;",
        "Le/b/a/a/g/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:Z

.field private y:I

.field protected z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Le/b/a/a/d/p;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Le/b/a/a/d/o;->y:I

    const/16 p1, 0x55

    iput p1, p0, Le/b/a/a/d/o;->A:I

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Le/b/a/a/d/o;->B:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/b/a/a/d/o;->C:Z

    return-void
.end method


# virtual methods
.method public C()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/o;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/o;->A:I

    return v0
.end method

.method public E0(F)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    :cond_1
    invoke-static {p1}, Le/b/a/a/k/h;->e(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/d/o;->B:F

    return-void
.end method

.method public f0()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/o;->C:Z

    return v0
.end method

.method public h0()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/o;->B:F

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/o;->y:I

    return v0
.end method
