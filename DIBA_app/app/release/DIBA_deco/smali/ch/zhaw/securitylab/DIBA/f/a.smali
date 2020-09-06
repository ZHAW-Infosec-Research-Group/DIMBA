.class public abstract Lch/zhaw/securitylab/DIBA/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$c;


# static fields
.field private static final c:[Ljava/lang/Class;


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestWall;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPay;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    aput-object v2, v0, v1

    sput-object v0, Lch/zhaw/securitylab/DIBA/f/a;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/f/a;->a:Landroid/app/Activity;

    iput p2, p0, Lch/zhaw/securitylab/DIBA/f/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/f/a;->c(I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/f/a;->b(I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/f/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lch/zhaw/securitylab/DIBA/f/a;->c:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/f/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TaskStackBuilder;->startActivities()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/f/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/f/a;->a:Landroid/app/Activity;

    const v0, 0x7f0a0081

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)Landroid/os/Bundle;
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method protected abstract c(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lch/zhaw/securitylab/DIBA/f/a;->b:I

    return v0
.end method
