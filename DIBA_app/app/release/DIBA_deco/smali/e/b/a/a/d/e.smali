.class public abstract Le/b/a/a/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/g/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/a/a/d/l;",
        ">",
        "Ljava/lang/Object;",
        "Le/b/a/a/g/b/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field protected d:Le/b/a/a/c/i$a;

.field protected e:Z

.field protected transient f:Le/b/a/a/e/f;

.field protected g:Landroid/graphics/Typeface;

.field private h:Le/b/a/a/c/e$c;

.field private i:F

.field private j:F

.field private k:Landroid/graphics/DashPathEffect;

.field protected l:Z

.field protected m:F

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    iput-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    const-string v1, "DataSet"

    iput-object v1, p0, Le/b/a/a/d/e;->c:Ljava/lang/String;

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    iput-object v1, p0, Le/b/a/a/d/e;->d:Le/b/a/a/c/i$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/b/a/a/d/e;->e:Z

    sget-object v2, Le/b/a/a/c/e$c;->d:Le/b/a/a/c/e$c;

    iput-object v2, p0, Le/b/a/a/d/e;->h:Le/b/a/a/c/e$c;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Le/b/a/a/d/e;->i:F

    iput v2, p0, Le/b/a/a/d/e;->j:F

    iput-object v0, p0, Le/b/a/a/d/e;->k:Landroid/graphics/DashPathEffect;

    iput-boolean v1, p0, Le/b/a/a/d/e;->l:Z

    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Le/b/a/a/d/e;->m:F

    iput-boolean v1, p0, Le/b/a/a/d/e;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Le/b/a/a/d/e;-><init>()V

    iput-object p1, p0, Le/b/a/a/d/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public F()Le/b/a/a/c/i$a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->d:Le/b/a/a/c/i$a;

    return-object v0
.end method

.method public G()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/e;->m:F

    return v0
.end method

.method public J()Le/b/a/a/e/f;
    .locals 1

    invoke-virtual {p0}, Le/b/a/a/d/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/b/a/a/k/h;->i()Le/b/a/a/e/f;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Le/b/a/a/d/e;->f:Le/b/a/a/e/f;

    return-object v0
.end method

.method public M()I
    .locals 2

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public P(I)I
    .locals 2

    iget-object v0, p0, Le/b/a/a/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/e;->e:Z

    return v0
.end method

.method public X()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/e;->j:F

    return v0
.end method

.method public Y(Le/b/a/a/e/f;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Le/b/a/a/d/e;->f:Le/b/a/a/e/f;

    return-void
.end method

.method public a()Le/b/a/a/c/e$c;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->h:Le/b/a/a/c/e$c;

    return-object v0
.end method

.method public d0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->g:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->f:Le/b/a/a/e/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/e;->n:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k0()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/e;->i:F

    return v0
.end method

.method public l0()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->k:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/e;->l:Z

    return v0
.end method

.method public t0(I)I
    .locals 2

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public u()Z
    .locals 2

    invoke-interface {p0}, Le/b/a/a/g/b/d;->K()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v1}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v0

    invoke-interface {p0, v0}, Le/b/a/a/g/b/d;->n(Le/b/a/a/d/l;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public u0()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public v0(Le/b/a/a/c/i$a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/d/e;->d:Le/b/a/a/c/i$a;

    return-void
.end method

.method public w0(I)V
    .locals 1

    invoke-virtual {p0}, Le/b/a/a/d/e;->u0()V

    iget-object v0, p0, Le/b/a/a/d/e;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
