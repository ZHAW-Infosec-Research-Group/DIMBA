.class public Lch/zhaw/securitylab/DIBA/activity/unauth/m;
.super Landroidx/fragment/app/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static w1()Lch/zhaw/securitylab/DIBA/activity/unauth/m;
    .locals 4

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/m;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/activity/unauth/m;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MESSAGE"

    const-string v3, "Please take part of the survey. Your opinion is important to us."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0068

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public t1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "DIBA Survey"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->k(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/d$a;->f(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    new-instance p1, Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/m;)V

    const-string v1, "Start"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/d$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    new-instance p1, Lch/zhaw/securitylab/DIBA/activity/unauth/m$b;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/m$b;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/m;)V

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/d$a;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    return-object p1
.end method
