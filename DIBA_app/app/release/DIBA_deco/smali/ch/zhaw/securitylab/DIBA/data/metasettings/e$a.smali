.class Lch/zhaw/securitylab/DIBA/data/metasettings/e$a;
.super Landroidx/room/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/data/metasettings/e;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lch/zhaw/securitylab/DIBA/data/metasettings/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/data/metasettings/e;Landroidx/room/j;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `Metasettings` (`uid`,`ip`,`difficulty`,`timeout`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Ld/n/a/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/e$a;->k(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V

    return-void
.end method

.method public k(Ld/n/a/f;Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V
    .locals 3

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->d()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ld/n/a/d;->bindLong(IJ)V

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a()Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v0

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/a;->b(Lch/zhaw/securitylab/DIBA/data/metasettings/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ld/n/a/d;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v0}, Ld/n/a/d;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->c()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Ld/n/a/d;->bindLong(IJ)V

    return-void
.end method
