.class public abstract Le/b/a/a/d/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/b/a/a/g/b/d<",
        "+",
        "Le/b/a/a/d/l;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Le/b/a/a/d/j;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Le/b/a/a/d/j;->b:F

    iput v0, p0, Le/b/a/a/d/j;->c:F

    iput v1, p0, Le/b/a/a/d/j;->d:F

    iput v0, p0, Le/b/a/a/d/j;->e:F

    iput v1, p0, Le/b/a/a/d/j;->f:F

    iput v0, p0, Le/b/a/a/d/j;->g:F

    iput v1, p0, Le/b/a/a/d/j;->h:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Le/b/a/a/d/j;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Le/b/a/a/d/j;->b:F

    iput v0, p0, Le/b/a/a/d/j;->c:F

    iput v1, p0, Le/b/a/a/d/j;->d:F

    iput v0, p0, Le/b/a/a/d/j;->e:F

    iput v1, p0, Le/b/a/a/d/j;->f:F

    iput v0, p0, Le/b/a/a/d/j;->g:F

    iput v1, p0, Le/b/a/a/d/j;->h:F

    iput-object p1, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-virtual {p0}, Le/b/a/a/d/j;->t()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/a/g/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/d/j;->e(Le/b/a/a/g/b/d;)V

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Le/b/a/a/d/l;I)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/a/a/g/b/d;

    invoke-interface {p2, p1}, Le/b/a/a/g/b/d;->H(Le/b/a/a/d/l;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/b/a/a/d/j;->d(Le/b/a/a/d/l;Le/b/a/a/c/i$a;)V

    goto :goto_0

    :cond_1
    const-string p1, "addEntry"

    const-string p2, "Cannot add Entry because dataSetIndex too high or too low."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x800001

    iput v1, p0, Le/b/a/a/d/j;->a:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Le/b/a/a/d/j;->b:F

    iput v1, p0, Le/b/a/a/d/j;->c:F

    iput v2, p0, Le/b/a/a/d/j;->d:F

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/b/a/a/g/b/d;

    invoke-virtual {p0, v3}, Le/b/a/a/d/j;->e(Le/b/a/a/g/b/d;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Le/b/a/a/d/j;->e:F

    iput v2, p0, Le/b/a/a/d/j;->f:F

    iput v1, p0, Le/b/a/a/d/j;->g:F

    iput v2, p0, Le/b/a/a/d/j;->h:F

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Le/b/a/a/d/j;->l(Ljava/util/List;)Le/b/a/a/g/b/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    iput v1, p0, Le/b/a/a/d/j;->e:F

    invoke-interface {v0}, Le/b/a/a/g/b/d;->r()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->f:F

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g/b/d;

    invoke-interface {v1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v2

    sget-object v3, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Le/b/a/a/g/b/d;->r()F

    move-result v2

    iget v3, p0, Le/b/a/a/d/j;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-interface {v1}, Le/b/a/a/g/b/d;->r()F

    move-result v2

    iput v2, p0, Le/b/a/a/d/j;->f:F

    :cond_3
    invoke-interface {v1}, Le/b/a/a/g/b/d;->T()F

    move-result v2

    iget v3, p0, Le/b/a/a/d/j;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-interface {v1}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    iput v1, p0, Le/b/a/a/d/j;->e:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Le/b/a/a/d/j;->m(Ljava/util/List;)Le/b/a/a/g/b/d;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    iput v1, p0, Le/b/a/a/d/j;->g:F

    invoke-interface {v0}, Le/b/a/a/g/b/d;->r()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->h:F

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g/b/d;

    invoke-interface {v1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v2

    sget-object v3, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    if-ne v2, v3, :cond_5

    invoke-interface {v1}, Le/b/a/a/g/b/d;->r()F

    move-result v2

    iget v3, p0, Le/b/a/a/d/j;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-interface {v1}, Le/b/a/a/g/b/d;->r()F

    move-result v2

    iput v2, p0, Le/b/a/a/d/j;->h:F

    :cond_6
    invoke-interface {v1}, Le/b/a/a/g/b/d;->T()F

    move-result v2

    iget v3, p0, Le/b/a/a/d/j;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-interface {v1}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    iput v1, p0, Le/b/a/a/d/j;->g:F

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected d(Le/b/a/a/d/l;Le/b/a/a/c/i$a;)V
    .locals 2

    iget v0, p0, Le/b/a/a/d/j;->a:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->a:F

    :cond_0
    iget v0, p0, Le/b/a/a/d/j;->b:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->b:F

    :cond_1
    iget v0, p0, Le/b/a/a/d/j;->c:F

    invoke-virtual {p1}, Le/b/a/a/d/l;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Le/b/a/a/d/l;->e()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->c:F

    :cond_2
    iget v0, p0, Le/b/a/a/d/j;->d:F

    invoke-virtual {p1}, Le/b/a/a/d/l;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Le/b/a/a/d/l;->e()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->d:F

    :cond_3
    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne p2, v0, :cond_5

    iget p2, p0, Le/b/a/a/d/j;->e:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_4

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result p2

    iput p2, p0, Le/b/a/a/d/j;->e:F

    :cond_4
    iget p2, p0, Le/b/a/a/d/j;->f:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result p1

    iput p1, p0, Le/b/a/a/d/j;->f:F

    goto :goto_0

    :cond_5
    iget p2, p0, Le/b/a/a/d/j;->g:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result p2

    iput p2, p0, Le/b/a/a/d/j;->g:F

    :cond_6
    iget p2, p0, Le/b/a/a/d/j;->h:F

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    invoke-virtual {p1}, Le/b/a/a/d/f;->b()F

    move-result p1

    iput p1, p0, Le/b/a/a/d/j;->h:F

    :cond_7
    :goto_0
    return-void
.end method

.method protected e(Le/b/a/a/g/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Le/b/a/a/d/j;->a:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->a:F

    :cond_0
    iget v0, p0, Le/b/a/a/d/j;->b:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->b:F

    :cond_1
    iget v0, p0, Le/b/a/a/d/j;->c:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->o()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-interface {p1}, Le/b/a/a/g/b/d;->o()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->c:F

    :cond_2
    iget v0, p0, Le/b/a/a/d/j;->d:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->L()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-interface {p1}, Le/b/a/a/g/b/d;->L()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->d:F

    :cond_3
    invoke-interface {p1}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v0

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne v0, v1, :cond_5

    iget v0, p0, Le/b/a/a/d/j;->e:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->e:F

    :cond_4
    iget v0, p0, Le/b/a/a/d/j;->f:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result p1

    iput p1, p0, Le/b/a/a/d/j;->f:F

    goto :goto_0

    :cond_5
    iget v0, p0, Le/b/a/a/d/j;->g:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v0

    iput v0, p0, Le/b/a/a/d/j;->g:F

    :cond_6
    iget v0, p0, Le/b/a/a/d/j;->h:F

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result p1

    iput p1, p0, Le/b/a/a/d/j;->h:F

    :cond_7
    :goto_0
    return-void
.end method

.method public f(FF)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g/b/d;

    invoke-interface {v1, p1, p2}, Le/b/a/a/g/b/d;->n0(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/d/j;->c()V

    return-void
.end method

.method public g(I)Le/b/a/a/g/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/a/a/g/b/d;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 3

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/a/g/b/d;

    invoke-interface {v2}, Le/b/a/a/g/b/d;->K()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public k(Le/b/a/a/f/c;)Le/b/a/a/d/l;
    .locals 2

    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result v0

    iget-object v1, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-virtual {p1}, Le/b/a/a/f/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/g/b/d;

    invoke-virtual {p1}, Le/b/a/a/f/c;->g()F

    move-result v1

    invoke-virtual {p1}, Le/b/a/a/f/c;->i()F

    move-result p1

    invoke-interface {v0, v1, p1}, Le/b/a/a/g/b/d;->m0(FF)Le/b/a/a/d/l;

    move-result-object p1

    return-object p1
.end method

.method protected l(Ljava/util/List;)Le/b/a/a/g/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/g/b/d;

    invoke-interface {v0}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v1

    sget-object v2, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/util/List;)Le/b/a/a/g/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/g/b/d;

    invoke-interface {v0}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v1

    sget-object v2, Le/b/a/a/c/i$a;->c:Le/b/a/a/c/i$a;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/j;->c:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/j;->d:F

    return v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/j;->a:F

    return v0
.end method

.method public q(Le/b/a/a/c/i$a;)F
    .locals 2

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    iget p1, p0, Le/b/a/a/d/j;->e:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Le/b/a/a/d/j;->g:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Le/b/a/a/d/j;->g:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Le/b/a/a/d/j;->e:F

    :cond_2
    return p1
.end method

.method public r()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/j;->b:F

    return v0
.end method

.method public s(Le/b/a/a/c/i$a;)F
    .locals 2

    sget-object v0, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    iget p1, p0, Le/b/a/a/d/j;->f:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p1, p0, Le/b/a/a/d/j;->h:F

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Le/b/a/a/d/j;->h:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p1, p0, Le/b/a/a/d/j;->f:F

    :cond_2
    return p1
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Le/b/a/a/d/j;->c()V

    return-void
.end method

.method public u(I)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/d/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g/b/d;

    invoke-interface {v1, p1}, Le/b/a/a/g/b/d;->B(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
