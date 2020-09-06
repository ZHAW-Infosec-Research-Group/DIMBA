.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/auth/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/c;->b:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/c;->b:Landroid/widget/Button;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;->Z(Landroid/widget/Button;)V

    return-void
.end method
