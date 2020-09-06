.class public abstract Lch/zhaw/securitylab/DIBA/c/g;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Z

.field private D:Lch/zhaw/securitylab/DIBA/b;

.field protected E:Landroid/widget/NumberPicker;

.field private F:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(ILch/zhaw/securitylab/DIBA/c/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    new-instance p1, Lch/zhaw/securitylab/DIBA/c/g$a;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/c/g$a;-><init>(Lch/zhaw/securitylab/DIBA/c/g;)V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->F:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic Z(Lch/zhaw/securitylab/DIBA/c/g;Lch/zhaw/securitylab/DIBA/b;)Lch/zhaw/securitylab/DIBA/b;
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->D:Lch/zhaw/securitylab/DIBA/b;

    return-object p1
.end method

.method static synthetic a0(Lch/zhaw/securitylab/DIBA/c/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->C:Z

    return p1
.end method

.method private b0()V
    .locals 2

    iget-boolean v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No service bound"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/g;->b0()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->D:Lch/zhaw/securitylab/DIBA/b;

    invoke-interface {v0, p1, p2}, Lch/zhaw/securitylab/DIBA/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d0(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/c/g;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public e0(Landroid/widget/NumberPicker;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->D:Lch/zhaw/securitylab/DIBA/b;

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/b;->i()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f0()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/g;->b0()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->D:Lch/zhaw/securitylab/DIBA/b;

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/b;->o()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g0(Landroid/widget/NumberPicker;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->D:Lch/zhaw/securitylab/DIBA/b;

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/b;->i()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/high16 v0, 0x60000

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->clearFocus()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic h0()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/c/g;->g0(Landroid/widget/NumberPicker;)V

    return-void
.end method

.method public synthetic i0()V
    .locals 1

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/g;->j0()V

    new-instance v0, Lch/zhaw/securitylab/DIBA/c/b;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/c/b;-><init>(Lch/zhaw/securitylab/DIBA/c/g;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j0()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->C:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/e;->onStart()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/g;->F:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->E:Landroid/widget/NumberPicker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/c/a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/c/a;-><init>(Lch/zhaw/securitylab/DIBA/c/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/e;->onStop()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->F:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/zhaw/securitylab/DIBA/c/g;->C:Z

    return-void
.end method
