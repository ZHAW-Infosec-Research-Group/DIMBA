.class public Le/b/a/a/d/b;
.super Le/b/a/a/d/l;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private e:[F

.field private f:[Le/b/a/a/f/f;

.field private g:F

.field private h:F


# virtual methods
.method public b()F
    .locals 1

    invoke-super {p0}, Le/b/a/a/d/f;->b()F

    move-result v0

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/b;->g:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/b;->h:F

    return v0
.end method

.method public j()[Le/b/a/a/f/f;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/b;->f:[Le/b/a/a/f/f;

    return-object v0
.end method

.method public k()[F
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/b;->e:[F

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/b;->e:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
