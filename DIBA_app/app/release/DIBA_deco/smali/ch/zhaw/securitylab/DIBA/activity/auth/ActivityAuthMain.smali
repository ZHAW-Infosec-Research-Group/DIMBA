.class public Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0020

    const v2, 0x7f0a0122

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method static synthetic Z(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "Fetch Balance"

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/auth/a;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;)V

    return-object v0
.end method

.method private f0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/b;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/auth/b;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;)V

    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 0

    invoke-static {p0}, Lch/zhaw/securitylab/DIBA/h/c;->j(Landroid/app/Activity;)V

    invoke-static {p0}, Lch/zhaw/securitylab/DIBA/h/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic a0(Landroid/widget/Button;)V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/c;

    invoke-direct {v0, p1}, Lch/zhaw/securitylab/DIBA/activity/auth/c;-><init>(Landroid/widget/Button;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic b0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    const-string v0, "/balance"

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/k;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/g/d/k;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;)V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->r()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->q()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x14008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic d0(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SFr."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/auth/e;

    invoke-direct {v1, p0, v0}, Lch/zhaw/securitylab/DIBA/activity/auth/e;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;Landroid/widget/Button;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/d;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/activity/auth/d;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "firstLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->q()Landroidx/fragment/app/m;

    move-result-object p1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/activity/unauth/m;->w1()Lch/zhaw/securitylab/DIBA/activity/unauth/m;

    move-result-object v0

    const-string v1, "fragment_alert"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c;->v1(Landroidx/fragment/app/m;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;->e0()Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPay;

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockWall;

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivitySurvey;

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;->f0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a00dd
        0x7f0a00e3
    .end array-data

    :array_1
    .array-data 4
        0x7f0a00e1
        0x7f0a00e7
    .end array-data

    :array_2
    .array-data 4
        0x7f0a00de
        0x7f0a00e4
    .end array-data

    :array_3
    .array-data 4
        0x7f0a00ea
        0x7f0a00e8
    .end array-data

    :array_4
    .array-data 4
        0x7f0a00e0
        0x7f0a00e6
    .end array-data

    :array_5
    .array-data 4
        0x7f0a00e2
        0x7f0a00e9
    .end array-data

    :array_6
    .array-data 4
        0x7f0a00df
        0x7f0a00e5
    .end array-data
.end method
