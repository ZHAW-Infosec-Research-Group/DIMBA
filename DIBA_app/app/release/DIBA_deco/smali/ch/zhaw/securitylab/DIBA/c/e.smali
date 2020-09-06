.class public final synthetic Lch/zhaw/securitylab/DIBA/c/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/c/i;

.field public final synthetic c:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/c/i;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/e;->b:Lch/zhaw/securitylab/DIBA/c/i;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/c/e;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/e;->b:Lch/zhaw/securitylab/DIBA/c/i;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/e;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lch/zhaw/securitylab/DIBA/c/i;->z1(Ljava/lang/Class;Landroid/view/View;)V

    return-void
.end method
