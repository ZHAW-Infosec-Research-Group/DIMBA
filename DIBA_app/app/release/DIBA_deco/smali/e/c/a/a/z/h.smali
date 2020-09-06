.class public Le/c/a/a/z/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(I)Le/c/a/a/z/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Le/c/a/a/z/h;->b()Le/c/a/a/z/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Le/c/a/a/z/e;

    invoke-direct {p0}, Le/c/a/a/z/e;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Le/c/a/a/z/j;

    invoke-direct {p0}, Le/c/a/a/z/j;-><init>()V

    return-object p0
.end method

.method static b()Le/c/a/a/z/d;
    .locals 1

    new-instance v0, Le/c/a/a/z/j;

    invoke-direct {v0}, Le/c/a/a/z/j;-><init>()V

    return-object v0
.end method

.method static c()Le/c/a/a/z/f;
    .locals 1

    new-instance v0, Le/c/a/a/z/f;

    invoke-direct {v0}, Le/c/a/a/z/f;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Le/c/a/a/z/g;

    if-eqz v0, :cond_0

    check-cast p0, Le/c/a/a/z/g;

    invoke-virtual {p0, p1}, Le/c/a/a/z/g;->U(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/c/a/a/z/g;

    if-eqz v1, :cond_0

    check-cast v0, Le/c/a/a/z/g;

    invoke-static {p0, v0}, Le/c/a/a/z/h;->f(Landroid/view/View;Le/c/a/a/z/g;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Le/c/a/a/z/g;)V
    .locals 1

    invoke-virtual {p1}, Le/c/a/a/z/g;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/internal/o;->c(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Le/c/a/a/z/g;->Y(F)V

    :cond_0
    return-void
.end method
