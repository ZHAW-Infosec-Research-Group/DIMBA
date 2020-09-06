.class Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/activity/unauth/m;->t1(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lch/zhaw/securitylab/DIBA/activity/unauth/m;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/activity/unauth/m;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;->b:Lch/zhaw/securitylab/DIBA/activity/unauth/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;->b:Lch/zhaw/securitylab/DIBA/activity/unauth/m;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/d;

    move-result-object p2

    const-class v0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivitySurvey;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/m$a;->b:Lch/zhaw/securitylab/DIBA/activity/unauth/m;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-static {p2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TaskStackBuilder;->startActivities()V

    return-void
.end method
