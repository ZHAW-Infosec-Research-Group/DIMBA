.class Lch/zhaw/securitylab/DIBA/data/invest/e$b;
.super Landroidx/room/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/data/invest/e;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lch/zhaw/securitylab/DIBA/data/invest/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/data/invest/e;Landroidx/room/j;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `Investment` WHERE `uid` = ?"

    return-object v0
.end method

.method public bridge synthetic g(Ld/n/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/data/invest/e$b;->j(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/invest/c;)V

    return-void
.end method

.method public j(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/invest/c;)V
    .locals 2

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->h()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Ld/n/a/d;->bindLong(IJ)V

    return-void
.end method
