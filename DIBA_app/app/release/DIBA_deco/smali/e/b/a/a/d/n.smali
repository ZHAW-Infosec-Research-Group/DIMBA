.class public Le/b/a/a/d/n;
.super Le/b/a/a/d/o;
.source ""

# interfaces
.implements Le/b/a/a/g/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/d/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/a/d/o<",
        "Le/b/a/a/d/l;",
        ">;",
        "Le/b/a/a/g/b/e;"
    }
.end annotation


# instance fields
.field private D:Le/b/a/a/d/n$a;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:Landroid/graphics/DashPathEffect;

.field private K:Le/b/a/a/e/e;

.field private L:Z

.field private M:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/a/d/l;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Le/b/a/a/d/o;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object p1, Le/b/a/a/d/n$a;->b:Le/b/a/a/d/n$a;

    iput-object p1, p0, Le/b/a/a/d/n;->D:Le/b/a/a/d/n$a;

    const/4 p1, 0x0

    iput-object p1, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Le/b/a/a/d/n;->F:I

    const/high16 p2, 0x41000000    # 8.0f

    iput p2, p0, Le/b/a/a/d/n;->G:F

    const/high16 p2, 0x40800000    # 4.0f

    iput p2, p0, Le/b/a/a/d/n;->H:F

    const p2, 0x3e4ccccd    # 0.2f

    iput p2, p0, Le/b/a/a/d/n;->I:F

    iput-object p1, p0, Le/b/a/a/d/n;->J:Landroid/graphics/DashPathEffect;

    new-instance p1, Le/b/a/a/e/b;

    invoke-direct {p1}, Le/b/a/a/e/b;-><init>()V

    iput-object p1, p0, Le/b/a/a/d/n;->K:Le/b/a/a/e/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/d/n;->L:Z

    iput-boolean p1, p0, Le/b/a/a/d/n;->M:Z

    iget-object p1, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    const/16 p2, 0x8c

    const/16 v0, 0xea

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public F0(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const p1, 0x3d4ccccd    # 0.05f

    :cond_1
    iput p1, p0, Le/b/a/a/d/n;->I:F

    return-void
.end method

.method public G0(Le/b/a/a/d/n$a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/d/n;->D:Le/b/a/a/d/n$a;

    return-void
.end method

.method public O()Le/b/a/a/e/e;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->K:Le/b/a/a/e/e;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/n;->L:Z

    return v0
.end method

.method public a0()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/n;->H:F

    return v0
.end method

.method public e0()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/n;->G:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/n;->F:I

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public o0()Le/b/a/a/d/n$a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->D:Le/b/a/a/d/n$a;

    return-object v0
.end method

.method public q0()Z
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->J:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public r0()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/n;->M:Z

    return v0
.end method

.method public s0()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Le/b/a/a/d/n;->D:Le/b/a/a/d/n$a;

    sget-object v1, Le/b/a/a/d/n$a;->c:Le/b/a/a/d/n$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/n;->I:F

    return v0
.end method

.method public z()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/n;->J:Landroid/graphics/DashPathEffect;

    return-object v0
.end method
