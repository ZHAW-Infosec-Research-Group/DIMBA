.class public Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# static fields
.field private static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->C:Ljava/util/Map;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    const v2, 0x7f0a0123

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->C:Ljava/util/Map;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;

    const v2, 0x7f0a0127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->d:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d002b

    invoke-direct {p0, v1, v0}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;)V

    return-void
.end method

.method private Z()V
    .locals 2

    const-string v0, "Something wrong has happened, please send your log to the developers."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a0(Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "credentials_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/Fragment;->M(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method private b0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->Z()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->Z()V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->a0(Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->Z()V

    return-void

    :cond_2
    sget-object v1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->C:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lch/zhaw/securitylab/DIBA/c/h;->X(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/d;->q()Landroidx/fragment/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/t;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/t;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->g()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;->b0()V

    return-void
.end method
