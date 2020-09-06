.class public Lch/zhaw/securitylab/DIBA/f/c;
.super Lch/zhaw/securitylab/DIBA/f/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0e0002

    invoke-direct {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/f/a;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected b(I)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "credentials_fragment"

    const v2, 0x7f0a0123

    if-ne p1, v2, :cond_0

    const-string v2, "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0a0127

    if-ne p1, v2, :cond_1

    const-string p1, "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentSignIn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

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

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;

    return-object p1

    :pswitch_2
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;

    return-object p1

    :pswitch_3
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

    return-object p1

    :pswitch_4
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;

    return-object p1

    :pswitch_5
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    return-object p1

    :pswitch_6
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityInfo;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0121
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
