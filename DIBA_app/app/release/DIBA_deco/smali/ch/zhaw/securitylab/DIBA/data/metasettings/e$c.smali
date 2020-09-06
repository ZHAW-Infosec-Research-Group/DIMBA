.class Lch/zhaw/securitylab/DIBA/data/metasettings/e$c;
.super Landroidx/room/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/data/metasettings/e;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/data/metasettings/e;Landroidx/room/j;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/p;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM metasettings"

    return-object v0
.end method
