.class public Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0023

    const v2, 0x7f0a0125

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;IZ)V

    return-void
.end method

.method private Z(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "auth_pay_amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a0(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/d/a/b;->a()Lch/zhaw/securitylab/DIBA/d/a/b;

    move-result-object v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    invoke-virtual {v0, v1, p1}, Lch/zhaw/securitylab/DIBA/d/a/b;->c(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->C:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private b0()V
    .locals 2

    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/pay/a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/activity/pay/a;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private f0(Landroid/os/Bundle;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/pay/b;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/b;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private g0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/pay/c;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/pay/c;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;)V

    return-object v0
.end method


# virtual methods
.method public synthetic c0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->C:Landroid/widget/ListView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public synthetic d0(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 6

    const-string p2, "auth_pay_target"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "auth_pay_amount"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "auth_pay_amount_sfr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_pay_currency"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Lch/zhaw/securitylab/DIBA/data/payment/a;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    const p2, 0x7f0a0083

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/payments"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/g/b;->c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "OTP"

    invoke-virtual {v0, v1, p2}, Lch/zhaw/securitylab/DIBA/g/b;->e(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p2

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/q;

    invoke-direct {v0, p1, p0}, Lch/zhaw/securitylab/DIBA/g/d/q;-><init>(Lch/zhaw/securitylab/DIBA/data/payment/a;Lch/zhaw/securitylab/DIBA/c/h;)V

    invoke-virtual {p2, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "generic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v2, "QC_Reference_Phone"

    if-eq p1, v2, :cond_1

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string v2, "Build"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    :cond_1
    const p1, 0x7f0a0148

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->C:Landroid/widget/ListView;

    const p1, 0x7f0a015b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "We sent a SMS code to your phone. The code is very secure, it changes every second and it expires after 5 minutes. \n Enter the code to confirm the payment. \n Or enter the code for 2030-01-31 12:00:00 if you know how to get it."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->Z(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->f0(Landroid/os/Bundle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0a013a

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->g0()Landroid/view/View$OnClickListener;

    move-result-object v0

    new-array v1, v1, [I

    const v2, 0x7f0a013f

    aput v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->b0()V

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->a0(Landroid/os/Bundle;)V

    return-void
.end method
