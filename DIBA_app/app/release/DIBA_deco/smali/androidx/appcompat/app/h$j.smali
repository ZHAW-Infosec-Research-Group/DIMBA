.class Landroidx/appcompat/app/h$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:Ld/a/n/b$a;

.field final synthetic b:Landroidx/appcompat/app/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/h;Ld/a/n/b$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/h$j;->a:Ld/a/n/b$a;

    return-void
.end method


# virtual methods
.method public a(Ld/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->w:Landroid/view/ViewGroup;

    invoke-static {v0}, Ld/g/l/s;->f0(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Ld/a/n/b$a;

    invoke-interface {v0, p1, p2}, Ld/a/n/b$a;->a(Ld/a/n/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Ld/a/n/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Ld/a/n/b$a;

    invoke-interface {v0, p1, p2}, Ld/a/n/b$a;->b(Ld/a/n/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Ld/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Ld/a/n/b$a;

    invoke-interface {v0, p1, p2}, Ld/a/n/b$a;->c(Ld/a/n/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Ld/a/n/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Ld/a/n/b$a;

    invoke-interface {v0, p1}, Ld/a/n/b$a;->d(Ld/a/n/b;)V

    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/h;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/h;->X()V

    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ld/g/l/s;->c(Landroid/view/View;)Ld/g/l/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/g/l/w;->a(F)Ld/g/l/w;

    iput-object v0, p1, Landroidx/appcompat/app/h;->t:Ld/g/l/w;

    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->t:Ld/g/l/w;

    new-instance v0, Landroidx/appcompat/app/h$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/h$j$a;-><init>(Landroidx/appcompat/app/h$j;)V

    invoke-virtual {p1, v0}, Ld/g/l/w;->f(Ld/g/l/x;)Ld/g/l/w;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/f;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/appcompat/app/h;->p:Ld/a/n/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/f;->j(Ld/a/n/b;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/h;->p:Ld/a/n/b;

    iget-object p1, p1, Landroidx/appcompat/app/h;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/g/l/s;->f0(Landroid/view/View;)V

    return-void
.end method
