.class public abstract Lch/zhaw/securitylab/DIBA/activity/pay/k;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# static fields
.field private static final C:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "recipient"

    const-string v1, "amount"

    const-string v2, "currency"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/activity/pay/k;->C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0a0125

    invoke-direct {p0, p1, v0, v1, p2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;IZ)V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/payments"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/r;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/g/d/r;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/k;)V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method public Z(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->h()Lch/zhaw/securitylab/DIBA/data/payment/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/zhaw/securitylab/DIBA/data/payment/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0()V
    .locals 1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->c0(Ljava/util/List;)V

    return-void
.end method

.method public synthetic b0(Ljava/util/List;)V
    .locals 4

    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/d/a/b;->a()Lch/zhaw/securitylab/DIBA/d/a/b;

    move-result-object v1

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    sget-object v3, Lch/zhaw/securitylab/DIBA/activity/pay/k;->C:[Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3}, Lch/zhaw/securitylab/DIBA/d/a/b;->b(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public c0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/pay/j;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/j;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/k;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/ProviderSettings;->d()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/pay/i;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/pay/i;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/k;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
