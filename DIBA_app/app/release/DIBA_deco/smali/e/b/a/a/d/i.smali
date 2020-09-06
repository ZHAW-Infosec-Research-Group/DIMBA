.class public Le/b/a/a/d/i;
.super Le/b/a/a/d/l;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 2

    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Le/b/a/a/d/l;-><init>(FF)V

    const/4 p1, 0x0

    iput p1, p0, Le/b/a/a/d/i;->e:F

    iput p1, p0, Le/b/a/a/d/i;->f:F

    iput p1, p0, Le/b/a/a/d/i;->g:F

    iput p1, p0, Le/b/a/a/d/i;->h:F

    iput p2, p0, Le/b/a/a/d/i;->e:F

    iput p3, p0, Le/b/a/a/d/i;->f:F

    iput p4, p0, Le/b/a/a/d/i;->h:F

    iput p5, p0, Le/b/a/a/d/i;->g:F

    return-void
.end method


# virtual methods
.method public b()F
    .locals 1

    invoke-super {p0}, Le/b/a/a/d/f;->b()F

    move-result v0

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/i;->g:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/i;->e:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/i;->f:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/i;->h:F

    return v0
.end method
