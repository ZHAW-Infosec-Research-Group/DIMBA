.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/invest/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/c;->b:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/c;->b:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList$a;->b()V

    return-void
.end method
