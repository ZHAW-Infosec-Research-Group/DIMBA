.class public Le/c/a/a/w/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:F

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Landroid/content/res/ColorStateList;

.field public final i:F

.field public final j:F

.field public final k:F

.field private final l:I

.field private m:Z

.field private n:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/a/a/w/d;->m:Z

    sget-object v1, Le/c/a/a/k;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Le/c/a/a/k;->TextAppearance_android_textSize:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Le/c/a/a/w/d;->a:F

    sget v1, Le/c/a/a/k;->TextAppearance_android_textColor:I

    invoke-static {p1, p2, v1}, Le/c/a/a/w/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/w/d;->b:Landroid/content/res/ColorStateList;

    sget v1, Le/c/a/a/k;->TextAppearance_android_textColorHint:I

    invoke-static {p1, p2, v1}, Le/c/a/a/w/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/w/d;->c:Landroid/content/res/ColorStateList;

    sget v1, Le/c/a/a/k;->TextAppearance_android_textColorLink:I

    invoke-static {p1, p2, v1}, Le/c/a/a/w/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/w/d;->d:Landroid/content/res/ColorStateList;

    sget v1, Le/c/a/a/k;->TextAppearance_android_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Le/c/a/a/w/d;->e:I

    sget v1, Le/c/a/a/k;->TextAppearance_android_typeface:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Le/c/a/a/w/d;->f:I

    sget v1, Le/c/a/a/k;->TextAppearance_fontFamily:I

    sget v3, Le/c/a/a/k;->TextAppearance_android_fontFamily:I

    invoke-static {p2, v1, v3}, Le/c/a/a/w/c;->e(Landroid/content/res/TypedArray;II)I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Le/c/a/a/w/d;->l:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/c/a/a/w/d;->g:Ljava/lang/String;

    sget v1, Le/c/a/a/k;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    sget v0, Le/c/a/a/k;->TextAppearance_android_shadowColor:I

    invoke-static {p1, p2, v0}, Le/c/a/a/w/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/w/d;->h:Landroid/content/res/ColorStateList;

    sget p1, Le/c/a/a/k;->TextAppearance_android_shadowDx:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Le/c/a/a/w/d;->i:F

    sget p1, Le/c/a/a/k;->TextAppearance_android_shadowDy:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Le/c/a/a/w/d;->j:F

    sget p1, Le/c/a/a/k;->TextAppearance_android_shadowRadius:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Le/c/a/a/w/d;->k:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Le/c/a/a/w/d;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic b(Le/c/a/a/w/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic c(Le/c/a/a/w/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Le/c/a/a/w/d;->m:Z

    return p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/c/a/a/w/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Le/c/a/a/w/d;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    iget v0, p0, Le/c/a/a/w/d;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    iget-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    iget v1, p0, Le/c/a/a/w/d;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .locals 1

    invoke-direct {p0}, Le/c/a/a/w/d;->d()V

    iget-object v0, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    iget-boolean v0, p0, Le/c/a/a/w/d;->m:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Le/c/a/a/w/d;->l:I

    invoke-static {p1, v0}, Ld/g/d/c/f;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    iget v0, p0, Le/c/a/a/w/d;->e:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/c/a/a/w/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    :goto_0
    invoke-direct {p0}, Le/c/a/a/w/d;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/c/a/a/w/d;->m:Z

    iget-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/w/f;)V
    .locals 1

    invoke-virtual {p0}, Le/c/a/a/w/d;->e()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Le/c/a/a/w/d;->k(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v0, Le/c/a/a/w/d$b;

    invoke-direct {v0, p0, p2, p3}, Le/c/a/a/w/d$b;-><init>(Le/c/a/a/w/d;Landroid/text/TextPaint;Le/c/a/a/w/f;)V

    invoke-virtual {p0, p1, v0}, Le/c/a/a/w/d;->h(Landroid/content/Context;Le/c/a/a/w/f;)V

    return-void
.end method

.method public h(Landroid/content/Context;Le/c/a/a/w/f;)V
    .locals 4

    invoke-static {}, Le/c/a/a/w/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Le/c/a/a/w/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Le/c/a/a/w/d;->d()V

    :goto_0
    iget v0, p0, Le/c/a/a/w/d;->l:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Le/c/a/a/w/d;->m:Z

    :cond_1
    iget-boolean v0, p0, Le/c/a/a/w/d;->m:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Le/c/a/a/w/d;->n:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Le/c/a/a/w/f;->b(Landroid/graphics/Typeface;Z)V

    return-void

    :cond_2
    :try_start_0
    iget v0, p0, Le/c/a/a/w/d;->l:I

    new-instance v2, Le/c/a/a/w/d$a;

    invoke-direct {v2, p0, p2}, Le/c/a/a/w/d$a;-><init>(Le/c/a/a/w/d;Le/c/a/a/w/f;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ld/g/d/c/f;->d(Landroid/content/Context;ILd/g/d/c/f$a;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/c/a/a/w/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextAppearance"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Le/c/a/a/w/d;->m:Z

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Le/c/a/a/w/f;->a(I)V

    goto :goto_1

    :catch_1
    iput-boolean v1, p0, Le/c/a/a/w/d;->m:Z

    invoke-virtual {p2, v1}, Le/c/a/a/w/f;->a(I)V

    :goto_1
    return-void
.end method

.method public i(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/w/f;)V
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Le/c/a/a/w/d;->j(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/w/f;)V

    iget-object p1, p0, Le/c/a/a/w/d;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget p1, p0, Le/c/a/a/w/d;->k:F

    iget p3, p0, Le/c/a/a/w/d;->i:F

    iget v0, p0, Le/c/a/a/w/d;->j:F

    iget-object v1, p0, Le/c/a/a/w/d;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public j(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/w/f;)V
    .locals 1

    invoke-static {}, Le/c/a/a/w/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Le/c/a/a/w/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le/c/a/a/w/d;->k(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/c/a/a/w/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/a/w/f;)V

    :goto_0
    return-void
.end method

.method public k(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Le/c/a/a/w/d;->e:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget p2, p0, Le/c/a/a/w/d;->a:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
