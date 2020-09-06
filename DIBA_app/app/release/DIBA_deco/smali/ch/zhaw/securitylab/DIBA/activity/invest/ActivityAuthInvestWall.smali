.class public Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;
.super Lch/zhaw/securitylab/DIBA/c/g;
.source ""


# instance fields
.field private G:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d001f

    const v2, 0x7f0a011e

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/g;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method private k0()Z
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->G:Landroid/content/SharedPreferences;

    const-string v1, "VIP"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private n0()V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->G:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VIP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private o0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/f;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/f;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;)V

    return-object v0
.end method

.method private p0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/e;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/e;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;)V

    return-object v0
.end method

.method private q0()V
    .locals 3

    const-class v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;

    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method


# virtual methods
.method public synthetic l0(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->k0()Z

    move-result p1

    const v0, 0x7f0a01e5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->n0()V

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->q0()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v0, "Sorry, you are not VIP (yet)."

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic m0(Landroid/view/View;)V
    .locals 6

    new-instance v4, Ljava/math/BigDecimal;

    const-string p1, "200"

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/g;->f0()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lch/zhaw/securitylab/DIBA/data/payment/a;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bank"

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/payments"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/g/b;->c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/q;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lch/zhaw/securitylab/DIBA/g/d/q;-><init>(Lch/zhaw/securitylab/DIBA/data/payment/a;Lch/zhaw/securitylab/DIBA/c/h;)V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    const-string p1, "VIP Code has been sent to your mail."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->n0()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->G:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->k0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->q0()V

    :cond_0
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->o0()Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f0a01e7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;->p0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v0, v0, [I

    const v1, 0x7f0a01e8

    aput v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method
