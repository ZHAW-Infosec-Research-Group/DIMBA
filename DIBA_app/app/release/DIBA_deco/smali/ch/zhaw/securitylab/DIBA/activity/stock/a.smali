.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/stock/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/a;->b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/a;->b:Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStockList;->a0()V

    return-void
.end method
