.class public Le/c/a/a/p/e/a;
.super Le/c/a/a/n/a;
.source ""

# interfaces
.implements Le/c/a/a/p/d;


# instance fields
.field private final o:Le/c/a/a/p/c;


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0}, Le/c/a/a/p/c;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0}, Le/c/a/a/p/c;->b()V

    const/4 v0, 0x0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Le/c/a/a/p/c;->c(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0}, Le/c/a/a/p/c;->d()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    throw v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0}, Le/c/a/a/p/c;->e()I

    const/4 v0, 0x0

    throw v0
.end method

.method public getRevealInfo()Le/c/a/a/p/d$e;
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0}, Le/c/a/a/p/c;->f()Le/c/a/a/p/d$e;

    const/4 v0, 0x0

    throw v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Le/c/a/a/p/c;->g()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0, p1}, Le/c/a/a/p/c;->h(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0, p1}, Le/c/a/a/p/c;->i(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRevealInfo(Le/c/a/a/p/d$e;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/p/e/a;->o:Le/c/a/a/p/c;

    invoke-virtual {v0, p1}, Le/c/a/a/p/c;->j(Le/c/a/a/p/d$e;)V

    const/4 p1, 0x0

    throw p1
.end method
