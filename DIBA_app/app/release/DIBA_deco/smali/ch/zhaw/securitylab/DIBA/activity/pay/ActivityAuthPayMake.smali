.class public Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;
.super Lch/zhaw/securitylab/DIBA/c/g;
.source ""


# instance fields
.field private G:Landroid/widget/EditText;

.field private H:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0025

    const v2, 0x7f0a0125

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/g;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->G:Landroid/widget/EditText;

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/pay/e;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/activity/pay/e;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private l0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/pay/d;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/pay/d;-><init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;)V

    return-object v0
.end method

.method private m0()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x7f0a015a

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_pay_target"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v1}, Lch/zhaw/securitylab/DIBA/c/g;->e0(Landroid/widget/NumberPicker;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_pay_currency"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0a013b

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/zhaw/securitylab/DIBA/c/g;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "auth_pay_amount_sfr"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auth_pay_amount"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private p0()V
    .locals 8

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->H:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v1}, Lch/zhaw/securitylab/DIBA/c/g;->e0(Landroid/widget/NumberPicker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lch/zhaw/securitylab/DIBA/c/g;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v2

    invoke-virtual {v2}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lch/zhaw/securitylab/DIBA/data/payment/a;

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/2FAtoken"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0, v7}, Lch/zhaw/securitylab/DIBA/g/b;->c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/i;

    invoke-direct {v1}, Lch/zhaw/securitylab/DIBA/g/d/i;-><init>()V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->m0()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/ProviderSettings;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "An error occurred with sending the money."

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Not null"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Intent created with data"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Activity Started1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "An error occurred with requesting the OTP."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private q0()V
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a014b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic n0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->p0()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic o0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->p0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a013e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    const p1, 0x7f0a015a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->G:Landroid/widget/EditText;

    const p1, 0x7f0a013b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->H:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->l0()Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a0141

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->k0()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->q0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/c/h;->onResume()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;->q0()V

    return-void
.end method
