.class Lch/zhaw/securitylab/DIBA/c/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/zhaw/securitylab/DIBA/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lch/zhaw/securitylab/DIBA/c/g;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/c/g;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g$a;->a:Lch/zhaw/securitylab/DIBA/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g$a;->a:Lch/zhaw/securitylab/DIBA/c/g;

    invoke-static {p2}, Lch/zhaw/securitylab/DIBA/b$a;->x(Landroid/os/IBinder;)Lch/zhaw/securitylab/DIBA/b;

    move-result-object p2

    invoke-static {p1, p2}, Lch/zhaw/securitylab/DIBA/c/g;->Z(Lch/zhaw/securitylab/DIBA/c/g;Lch/zhaw/securitylab/DIBA/b;)Lch/zhaw/securitylab/DIBA/b;

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g$a;->a:Lch/zhaw/securitylab/DIBA/c/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lch/zhaw/securitylab/DIBA/c/g;->a0(Lch/zhaw/securitylab/DIBA/c/g;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DIBA"

    const-string v0, "Service has unexpectedly disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g$a;->a:Lch/zhaw/securitylab/DIBA/c/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lch/zhaw/securitylab/DIBA/c/g;->Z(Lch/zhaw/securitylab/DIBA/c/g;Lch/zhaw/securitylab/DIBA/b;)Lch/zhaw/securitylab/DIBA/b;

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/g$a;->a:Lch/zhaw/securitylab/DIBA/c/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lch/zhaw/securitylab/DIBA/c/g;->a0(Lch/zhaw/securitylab/DIBA/c/g;Z)Z

    return-void
.end method
