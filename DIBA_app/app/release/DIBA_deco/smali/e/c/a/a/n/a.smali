.class public Le/c/a/a/n/a;
.super Ld/c/a/a;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Le/c/a/a/z/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/n/a$a;
    }
.end annotation


# static fields
.field private static final l:[I

.field private static final m:[I

.field private static final n:[I


# instance fields
.field private final g:Le/c/a/a/n/b;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Le/c/a/a/n/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Le/c/a/a/n/a;->l:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    sput-object v1, Le/c/a/a/n/a;->m:[I

    new-array v0, v0, [I

    sget v1, Le/c/a/a/b;->state_dragged:I

    aput v1, v0, v3

    sput-object v0, Le/c/a/a/n/a;->n:[I

    return-void
.end method

.method static synthetic c(Le/c/a/a/n/a;)F
    .locals 0

    invoke-super {p0}, Ld/c/a/a;->getRadius()F

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->b()Le/c/a/a/z/g;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public e()Z
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Le/c/a/a/n/b;->p()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/n/a;->j:Z

    return v0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->c()Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    throw v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->d()Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    throw v0
.end method

.method getCardViewRadius()F
    .locals 1

    invoke-static {p0}, Le/c/a/a/n/a;->c(Le/c/a/a/n/a;)F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->e()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    throw v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->f()Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->n()Landroid/graphics/Rect;

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->n()Landroid/graphics/Rect;

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->n()Landroid/graphics/Rect;

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->n()Landroid/graphics/Rect;

    const/4 v0, 0x0

    throw v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->h()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getRadius()F
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->g()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->i()Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    throw v0
.end method

.method public getShapeAppearanceModel()Le/c/a/a/z/k;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->j()Le/c/a/a/z/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->k()I

    const/4 v0, 0x0

    throw v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->l()Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    throw v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->m()I

    const/4 v0, 0x0

    throw v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/n/a;->i:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0}, Le/c/a/a/n/b;->b()Le/c/a/a/z/g;

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Le/c/a/a/n/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/c/a/a/n/a;->l:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Le/c/a/a/n/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Le/c/a/a/n/a;->m:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Le/c/a/a/n/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/c/a/a/n/a;->n:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Le/c/a/a/n/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Le/c/a/a/n/a;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Le/c/a/a/n/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Ld/c/a/a;->onMeasure(II)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Le/c/a/a/n/b;->q(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/c/a/a/n/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-boolean p1, p0, Le/c/a/a/n/a;->h:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->o()Z

    const/4 p1, 0x0

    throw p1
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->r(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->r(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Ld/c/a/a;->setCardElevation(F)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->D()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->s(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->t(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/n/a;->i:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Le/c/a/a/n/a;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->u(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ld/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->u(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->v(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->C()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Le/c/a/a/n/a;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Le/c/a/a/n/a;->j:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-direct {p0}, Le/c/a/a/n/a;->d()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Ld/c/a/a;->setMaxCardElevation(F)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->E()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setOnCheckedChangeListener(Le/c/a/a/n/a$a;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/n/a;->k:Le/c/a/a/n/a$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    invoke-super {p0, p1}, Ld/c/a/a;->setPreventCornerOverlap(Z)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->E()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->x(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRadius(F)V
    .locals 1

    invoke-super {p0, p1}, Ld/c/a/a;->setRadius(F)V

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->w(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->y(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRippleColorResource(I)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ld/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->y(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setShapeAppearanceModel(Le/c/a/a/z/k;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Le/c/a/a/n/a;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/c/a/a/z/k;->u(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :cond_0
    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->z(Le/c/a/a/z/k;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->A(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->A(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setStrokeWidth(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {v0, p1}, Le/c/a/a/n/b;->B(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Ld/c/a/a;->setUseCompatPadding(Z)V

    iget-object p1, p0, Le/c/a/a/n/a;->g:Le/c/a/a/n/b;

    invoke-virtual {p1}, Le/c/a/a/n/b;->E()V

    const/4 p1, 0x0

    throw p1
.end method

.method public toggle()V
    .locals 2

    invoke-virtual {p0}, Le/c/a/a/n/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/c/a/a/n/a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Le/c/a/a/n/a;->i:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-direct {p0}, Le/c/a/a/n/a;->d()V

    iget-object v0, p0, Le/c/a/a/n/a;->k:Le/c/a/a/n/a$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Le/c/a/a/n/a;->i:Z

    invoke-interface {v0, p0, v1}, Le/c/a/a/n/a$a;->a(Le/c/a/a/n/a;Z)V

    :cond_0
    return-void
.end method
