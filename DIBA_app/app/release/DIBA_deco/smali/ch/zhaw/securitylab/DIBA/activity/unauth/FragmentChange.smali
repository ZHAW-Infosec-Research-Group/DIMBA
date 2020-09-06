.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentChange;
.super Lch/zhaw/securitylab/DIBA/c/i;
.source ""


# instance fields
.field private d0:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f120090

    const v1, 0x7f0d0064

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lch/zhaw/securitylab/DIBA/c/i;-><init>(IIZ)V

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/l;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/l;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentChange;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentChange;->d0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public synthetic H1(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "credentials_fragment"

    const-string v1, "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->p1(Landroid/content/Intent;)V

    return-void
.end method

.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lch/zhaw/securitylab/DIBA/c/i;->h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1

    :cond_0
    const p1, 0x7f0a005c

    const-class p2, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->u1(ILjava/lang/Class;)V

    const p1, 0x7f0a005e

    const-class p2, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->u1(ILjava/lang/Class;)V

    const p1, 0x7f0a005d

    const-class p2, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->u1(ILjava/lang/Class;)V

    const p1, 0x7f0a005b

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentChange;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->t1(ILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1
.end method

.method protected x1()Lch/zhaw/securitylab/DIBA/e/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
