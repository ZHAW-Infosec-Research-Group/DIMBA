.class public Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private C:Landroid/widget/ListView;

.field private D:Landroid/widget/ListView;

.field private E:Landroid/widget/ListView;

.field private F:[Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private H:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0029

    const v2, 0x7f0a0120

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method


# virtual methods
.method public Z(Landroid/widget/ListView;[Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    new-instance p3, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003

    invoke-direct {p3, p0, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public synthetic a0()V
    .locals 3

    const-string v0, "USD/CHF                                                      + 1.2%"

    const-string v1, "CHF/EUR                                                      + 0.1%"

    const-string v2, "EUR/USD                                                      - 0.7%"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->G:[Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->D:Landroid/widget/ListView;

    const v2, 0x7f0a0006

    invoke-virtual {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->Z(Landroid/widget/ListView;[Ljava/lang/String;I)V

    const-string v0, "Crude Oil                                                       - 0.1%"

    const-string v1, "Gold                                                                + 0.5%"

    const-string v2, "Gas                                                                 + 4.5%"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->H:[Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->E:Landroid/widget/ListView;

    const v2, 0x7f0a0004

    invoke-virtual {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->Z(Landroid/widget/ListView;[Ljava/lang/String;I)V

    const-string v0, "APPL                                                               + 0.3%"

    const-string v1, "GOOGL                                                           + 0.3%"

    const-string v2, "MSFT                                                              + 0.8%"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->F:[Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->C:Landroid/widget/ListView;

    const v2, 0x7f0a000b

    invoke-virtual {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->Z(Landroid/widget/ListView;[Ljava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    new-instance p1, Lch/zhaw/securitylab/DIBA/activity/stock/a;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/activity/stock/a;-><init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;

    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method
