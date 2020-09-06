.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;
.super Landroidx/fragment/app/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static w1(Z)Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;
    .locals 4

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "Rooted Device Detected!"

    goto :goto_0

    :cond_0
    const-string v2, "Device Okay!"

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "DIBA will automatically uninstall for security reason.\n You can disable this message in the meta settings."

    goto :goto_1

    :cond_1
    const-string p0, "Trusted Device, no root found."

    :goto_1
    const-string v3, "ROOTED"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MESSAGE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0066

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public t1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ROOTED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/d;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/d$a;->k(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/d$a;->f(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    new-instance p1, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection$a;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;)V

    const-string v0, "Continue"

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/app/d$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    return-object p1
.end method
