.class public Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;
.super Lch/zhaw/securitylab/DIBA/c/g;
.source ""


# static fields
.field private static H:[Ljava/lang/String;


# instance fields
.field private G:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d001d

    const v2, 0x7f0a011e

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/g;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->G:Landroid/widget/EditText;

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/invest/b;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/b;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private l0()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private m0(Ljava/math/BigDecimal;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "Please enter an amount."

    :goto_0
    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_1

    const-string p1, "Amount must be positive."

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private p0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/invest/a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/invest/a;-><init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;)V

    return-object v0
.end method

.method private q0()V
    .locals 7

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->l0()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v3}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->m0(Ljava/math/BigDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->G:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/c/g;->e0(Landroid/widget/NumberPicker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lch/zhaw/securitylab/DIBA/c/g;->d0(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v4

    new-instance v6, Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lch/zhaw/securitylab/DIBA/data/invest/c;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/investments"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0, v6}, Lch/zhaw/securitylab/DIBA/g/b;->c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/l;

    invoke-direct {v1, v6}, Lch/zhaw/securitylab/DIBA/g/d/l;-><init>(Lch/zhaw/securitylab/DIBA/data/invest/c;)V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method private r0()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Ld/g/d/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->H:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->i(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
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
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->q0()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic o0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->q0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a00b7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->G:Landroid/widget/EditText;

    const p1, 0x7f0a0007

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->k0()V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f0a00ba

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->p0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v0, v0, [I

    const v1, 0x7f0a00b9

    aput v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->r0()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "externalStorage"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "investments.jar"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "/tmp"

    const/4 v4, 0x0

    invoke-direct {p1, v0, v2, v4, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string v0, "ch.inbank.Investment"

    invoke-virtual {p1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "buy"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "jar method called!"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
