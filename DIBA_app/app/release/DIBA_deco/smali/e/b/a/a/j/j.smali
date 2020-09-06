.class public abstract Le/b/a/a/j/j;
.super Le/b/a/a/j/c;
.source ""


# instance fields
.field private g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/b/a/a/j/c;-><init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected k(Landroid/graphics/Canvas;FFLe/b/a/a/g/b/g;)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Le/b/a/a/g/b/b;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Le/b/a/a/g/b/g;->q()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Le/b/a/a/g/b/g;->U()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-interface {p4}, Le/b/a/a/g/b/g;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->j()F

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->f()F

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object v0, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-interface {p4}, Le/b/a/a/g/b/g;->i0()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object p4, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p4}, Le/b/a/a/k/i;->h()F

    move-result p4

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object p4, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {p4}, Le/b/a/a/k/i;->i()F

    move-result p4

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Le/b/a/a/j/j;->g:Landroid/graphics/Path;

    iget-object p3, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
