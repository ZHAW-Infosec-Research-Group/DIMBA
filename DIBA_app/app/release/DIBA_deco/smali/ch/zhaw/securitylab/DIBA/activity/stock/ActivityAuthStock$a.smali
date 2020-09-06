.class Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;->b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;->b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->Z(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Z)Z

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
