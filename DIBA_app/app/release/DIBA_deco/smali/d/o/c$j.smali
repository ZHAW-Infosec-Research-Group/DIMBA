.class Ld/o/c$j;
.super Ld/o/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/o/c;->n(Landroid/view/ViewGroup;Ld/o/s;Ld/o/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Ld/o/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Ld/o/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ld/o/n;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/o/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ld/o/m;)V
    .locals 1

    iget-object p1, p0, Ld/o/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/o/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public b(Ld/o/m;)V
    .locals 1

    iget-object p1, p0, Ld/o/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ld/o/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Ld/o/m;)V
    .locals 1

    iget-object p1, p0, Ld/o/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/o/x;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/o/c$j;->a:Z

    return-void
.end method

.method public e(Ld/o/m;)V
    .locals 2

    iget-boolean v0, p0, Ld/o/c$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/o/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/o/x;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Ld/o/m;->Q(Ld/o/m$f;)Ld/o/m;

    return-void
.end method
