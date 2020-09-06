.class public Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPay;
.super Lch/zhaw/securitylab/DIBA/activity/pay/k;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0022

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/activity/pay/k;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 0

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->J()V

    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "Updated payment list."

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayMake;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayList;

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPaySlip;

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->M(Ljava/lang/Class;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0143
        0x7f0a0146
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0142
        0x7f0a0145
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0144
        0x7f0a0147
    .end array-data
.end method
