.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/pay/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/b;->b:Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/pay/b;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/pay/b;->b:Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/pay/b;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPayAccept;->d0(Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
