.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/invest/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/invest/b;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/invest/b;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;

    invoke-virtual {v0, p1, p2, p3}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvest;->n0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
