.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/auth/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

.field public final synthetic c:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/e;->b:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/auth/e;->c:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/e;->b:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/e;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;->a0(Landroid/widget/Button;)V

    return-void
.end method
