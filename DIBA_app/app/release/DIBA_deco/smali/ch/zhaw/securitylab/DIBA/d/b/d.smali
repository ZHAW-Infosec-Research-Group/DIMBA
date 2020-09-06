.class public Lch/zhaw/securitylab/DIBA/d/b/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/zhaw/securitylab/DIBA/d/b/a;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->e()I

    move-result p1

    return p1
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    instance-of v0, p1, Lch/zhaw/securitylab/DIBA/d/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/zhaw/securitylab/DIBA/d/b/a;

    check-cast p1, Lch/zhaw/securitylab/DIBA/d/b/c;

    invoke-virtual {p1, p2}, Lch/zhaw/securitylab/DIBA/d/b/c;->M(Lch/zhaw/securitylab/DIBA/d/b/a;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Holder must be MessageHolder, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public n(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ViewType must be either MESSAGE_SENT (1) or MESSAGE_RECEIVED (2)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    const v0, 0x7f0d006b

    goto :goto_1

    :cond_2
    const v0, 0x7f0d006a

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lch/zhaw/securitylab/DIBA/d/b/c;->N(Landroid/view/View;I)Lch/zhaw/securitylab/DIBA/d/b/c;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public x(Lch/zhaw/securitylab/DIBA/d/b/a;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->j(II)V

    return-void
.end method
