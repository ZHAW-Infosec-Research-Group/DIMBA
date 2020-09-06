.class public Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# static fields
.field private static final D:[Ljava/lang/String;


# instance fields
.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/invest/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "date"

    const-string v1, "amount"

    const-string v2, "currency"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d001e

    const v2, 0x7f0a011e

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    return-void
.end method

.method private Z()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/invest/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    return-object v0
.end method

.method private d0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/invest/c;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/data/invest/c;->d()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const p1, 0x7f0a00c0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SFr"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/investments"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/m;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/g/d/m;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;)V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "Updated Investments."

    return-object v0
.end method

.method public synthetic a0()V
    .locals 5

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->Z()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/d/a/b;->a()Lch/zhaw/securitylab/DIBA/d/a/b;

    move-result-object v2

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    sget-object v4, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->D:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lch/zhaw/securitylab/DIBA/d/a/b;->b(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v1}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->d0(Ljava/util/List;)V

    return-void
.end method

.method public b0()V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/d;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/d;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c0()V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lch/zhaw/securitylab/DIBA/data/invest/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->b0()V

    return-void
.end method
