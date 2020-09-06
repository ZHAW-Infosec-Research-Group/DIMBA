.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;
.super Lch/zhaw/securitylab/DIBA/c/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;
    }
.end annotation


# instance fields
.field private d0:Landroid/widget/CheckBox;

.field private e0:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f120093

    const v1, 0x7f0d0065

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/c/i;-><init>(II)V

    return-void
.end method

.method static synthetic H1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Lch/zhaw/securitylab/DIBA/c/h;
    .locals 0

    iget-object p0, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    return-object p0
.end method

.method static synthetic I1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->N1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic K1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    return-object p0
.end method

.method private L1()Z
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->d0:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private M1()V
    .locals 4

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->L1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->e0:Landroid/content/SharedPreferences;

    const-string v1, "login_email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->e0:Landroid/content/SharedPreferences;

    const-string v3, "login_password"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/c/i;->b0:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private N1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->L1()Z

    move-result v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->e0:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "login_remember"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "login_email"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lch/zhaw/securitylab/DIBA/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "login_password"

    invoke-interface {v1, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lch/zhaw/securitylab/DIBA/c/i;->h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1

    :cond_0
    const p1, 0x7f0a00d7

    const p2, 0x7f0a00d8

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->w1(II)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    const p2, 0x7f0a00d9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->d0:Landroid/widget/CheckBox;

    const p1, 0x7f0a00d6

    const p2, 0x7f0a00d4

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/i;->v1(II)V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/i;->G1()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    const-string p2, "loginPreferences"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->e0:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->d0:Landroid/widget/CheckBox;

    const-string v0, "login_remember"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->M1()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1
.end method

.method protected x1()Lch/zhaw/securitylab/DIBA/e/g;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)V

    return-object v0
.end method
