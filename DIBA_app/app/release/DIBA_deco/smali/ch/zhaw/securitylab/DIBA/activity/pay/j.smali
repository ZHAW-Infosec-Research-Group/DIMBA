.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/pay/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/pay/k;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/pay/k;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/j;->b:Lch/zhaw/securitylab/DIBA/activity/pay/k;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/pay/j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/j;->b:Lch/zhaw/securitylab/DIBA/activity/pay/k;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/j;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->b0(Ljava/util/List;)V

    return-void
.end method
