.class public final synthetic Lch/zhaw/securitylab/DIBA/g/d/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/g/d/r;

.field public final synthetic c:Lch/zhaw/securitylab/DIBA/data/payment/b;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/g/d/r;Lch/zhaw/securitylab/DIBA/data/payment/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->b:Lch/zhaw/securitylab/DIBA/g/d/r;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->c:Lch/zhaw/securitylab/DIBA/data/payment/b;

    iput-object p3, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->b:Lch/zhaw/securitylab/DIBA/g/d/r;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->c:Lch/zhaw/securitylab/DIBA/data/payment/b;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/f;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lch/zhaw/securitylab/DIBA/g/d/r;->c(Lch/zhaw/securitylab/DIBA/data/payment/b;Ljava/util/List;)V

    return-void
.end method
