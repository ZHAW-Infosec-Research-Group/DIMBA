.class public abstract Le/b/a/a/j/e;
.super Le/b/a/a/j/k;
.source ""


# instance fields
.field protected b:Le/b/a/a/a/a;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V
    .locals 2

    invoke-direct {p0, p2}, Le/b/a/a/j/k;-><init>(Le/b/a/a/k/i;)V

    iput-object p1, p0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Le/b/a/a/j/e;->d:Landroid/graphics/Paint;

    const/16 p2, 0xff

    const/16 v0, 0xbb

    const/16 v1, 0x73

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected a(Le/b/a/a/g/b/d;)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-interface {p1}, Le/b/a/a/g/b/d;->e()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-interface {p1}, Le/b/a/a/g/b/d;->G()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public abstract d(Landroid/graphics/Canvas;[Le/b/a/a/f/c;)V
.end method

.method public e(Landroid/graphics/Canvas;Le/b/a/a/e/f;FLe/b/a/a/d/l;IFFI)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p8, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-interface {p2, p3, p4, p5, p8}, Le/b/a/a/e/f;->a(FLe/b/a/a/d/l;ILe/b/a/a/k/i;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p6, p7, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract f(Landroid/graphics/Canvas;)V
.end method

.method public abstract g()V
.end method

.method protected h(Le/b/a/a/g/a/d;)Z
    .locals 2

    invoke-interface {p1}, Le/b/a/a/g/a/d;->getData()Le/b/a/a/d/j;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->j()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Le/b/a/a/g/a/d;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->q()F

    move-result v1

    mul-float p1, p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
