.class Lch/zhaw/securitylab/DIBA/data/invest/e$a;
.super Landroidx/room/c;
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
        "Landroidx/room/c<",
        "Lch/zhaw/securitylab/DIBA/data/invest/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/data/invest/e;Landroidx/room/j;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `Investment` (`uid`,`owner`,`date`,`amount`,`amountSFr`,`currency`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Ld/n/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/data/invest/e$a;->k(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/invest/c;)V

    return-void
.end method

.method public k(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/invest/c;)V
    .locals 4

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->h()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ld/n/a/d;->bindLong(IJ)V

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->f()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/a;->b(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ld/n/a/d;->bindLong(IJ)V

    :goto_1
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->c()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/b;->b(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v0}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->d()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/b;->b(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, v0}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/invest/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_4
    return-void
.end method
