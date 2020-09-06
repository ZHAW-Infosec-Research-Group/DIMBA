.class Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->Z()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->c0()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/c;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/c;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic b()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->b0()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
