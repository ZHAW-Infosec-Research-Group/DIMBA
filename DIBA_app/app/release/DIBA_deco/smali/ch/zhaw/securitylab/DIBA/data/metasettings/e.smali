.class public final Lch/zhaw/securitylab/DIBA/data/metasettings/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lch/zhaw/securitylab/DIBA/data/metasettings/d;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lch/zhaw/securitylab/DIBA/data/metasettings/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lch/zhaw/securitylab/DIBA/data/metasettings/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/e$a;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/e$a;-><init>(Lch/zhaw/securitylab/DIBA/data/metasettings/e;Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->b:Landroidx/room/c;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/e$b;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/e$b;-><init>(Lch/zhaw/securitylab/DIBA/data/metasettings/e;Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->c:Landroidx/room/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/e$c;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/e$c;-><init>(Lch/zhaw/securitylab/DIBA/data/metasettings/e;Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->d:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->d:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Ld/n/a/f;

    move-result-object v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->c()V

    :try_start_0
    invoke-interface {v0}, Ld/n/a/f;->executeUpdateDelete()I

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->d:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Ld/n/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->g()V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->d:Landroidx/room/p;

    invoke-virtual {v2, v0}, Landroidx/room/p;->f(Ld/n/a/f;)V

    throw v1
.end method

.method public b(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->h(Ljava/lang/Object;)I

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    throw p1
.end method

.method public c(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    throw p1
.end method

.method public d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;
    .locals 8

    const-string v0, "SELECT * FROM metasettings where uid = 1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/m;->o(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->b()V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/e;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/s/c;->b(Landroidx/room/j;Ld/n/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "uid"

    invoke-static {v1, v2}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "ip"

    invoke-static {v1, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "difficulty"

    invoke-static {v1, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "timeout"

    invoke-static {v1, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lch/zhaw/securitylab/DIBA/data/metasettings/a;->a(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    invoke-direct {v6, v3, v4, v5}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;-><init>(Ljava/lang/String;Lch/zhaw/securitylab/DIBA/data/metasettings/b;I)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->A()V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->A()V

    throw v2
.end method
