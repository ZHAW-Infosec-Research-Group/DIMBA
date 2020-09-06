.class public Lch/zhaw/securitylab/DIBA/f/b;
.super Lch/zhaw/securitylab/DIBA/f/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/high16 v0, 0x7f0e0000

    invoke-direct {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/f/a;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected c(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;

    return-object p1

    :pswitch_1
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPay;

    return-object p1

    :pswitch_2
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

    return-object p1

    :pswitch_3
    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->r()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->q()V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    return-object p1

    :pswitch_4
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

    return-object p1

    :pswitch_5
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityInfo;

    return-object p1

    :pswitch_6
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockWall;

    return-object p1

    :pswitch_7
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    return-object p1

    :pswitch_8
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7f0a011e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
