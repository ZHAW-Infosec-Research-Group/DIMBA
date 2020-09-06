.class Landroidx/appcompat/app/h$j$a;
.super Ld/g/l/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$j;->d(Ld/a/n/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$j;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    invoke-direct {p0}, Ld/g/l/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld/g/l/s;->f0(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->t:Ld/g/l/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/g/l/w;->f(Ld/g/l/x;)Ld/g/l/w;

    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iput-object v0, p1, Landroidx/appcompat/app/h;->t:Ld/g/l/w;

    iget-object p1, p1, Landroidx/appcompat/app/h;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/g/l/s;->f0(Landroid/view/View;)V

    return-void
.end method
