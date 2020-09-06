.class public Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayList;
.super Lch/zhaw/securitylab/DIBA/activity/pay/k;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0024

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/activity/pay/k;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 0

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->J()V

    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "Updated all transactions."

    return-object v0
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

    invoke-interface {v0, p1}, Lch/zhaw/securitylab/DIBA/data/payment/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
