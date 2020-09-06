.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;
.super Lch/zhaw/securitylab/DIBA/c/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f120095

    const v1, 0x7f0d0067

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/c/i;-><init>(II)V

    return-void
.end method

.method static synthetic H1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;)Lch/zhaw/securitylab/DIBA/c/h;
    .locals 0

    iget-object p0, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    return-object p0
.end method


# virtual methods
.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lch/zhaw/securitylab/DIBA/c/i;->h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1

    :cond_0
    const p1, 0x7f0a019a

    const p2, 0x7f0a019b

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->w1(II)V

    const p1, 0x7f0a0199

    const p2, 0x7f0a0198

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->v1(II)V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/i;->G1()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1
.end method

.method protected x1()Lch/zhaw/securitylab/DIBA/e/g;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;)V

    return-object v0
.end method
