.class public final Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;
.super Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;
.source ""


# instance fields
.field private volatile j:Lch/zhaw/securitylab/DIBA/data/invest/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;-><init>()V

    return-void
.end method

.method static synthetic A(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;Ld/n/a/b;)Ld/n/a/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/j;->a:Ld/n/a/b;

    return-object p1
.end method

.method static synthetic B(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;Ld/n/a/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/j;->m(Ld/n/a/b;)V

    return-void
.end method

.method static synthetic C(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic D(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic u(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/j;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected e()Landroidx/room/g;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/g;

    const-string v3, "Investment"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/j;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/a;)Ld/n/a/c;
    .locals 4

    new-instance v0, Landroidx/room/l;

    new-instance v1, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;-><init>(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;I)V

    const-string v2, "232495e1bef973341e8b9e568d717ece"

    const-string v3, "0aaa799885d96b7af91459c57f65486c"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/l;-><init>(Landroidx/room/a;Landroidx/room/l$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Ld/n/a/c$b;->a(Landroid/content/Context;)Ld/n/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld/n/a/c$b$a;->c(Ljava/lang/String;)Ld/n/a/c$b$a;

    invoke-virtual {v1, v0}, Ld/n/a/c$b$a;->b(Ld/n/a/c$a;)Ld/n/a/c$b$a;

    invoke-virtual {v1}, Ld/n/a/c$b$a;->a()Ld/n/a/c$b;

    move-result-object v0

    iget-object p1, p1, Landroidx/room/a;->a:Ld/n/a/c$c;

    invoke-interface {p1, v0}, Ld/n/a/c$c;->create(Ld/n/a/c$b;)Ld/n/a/c;

    move-result-object p1

    return-object p1
.end method

.method public s()Lch/zhaw/securitylab/DIBA/data/invest/d;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->j:Lch/zhaw/securitylab/DIBA/data/invest/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->j:Lch/zhaw/securitylab/DIBA/data/invest/d;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->j:Lch/zhaw/securitylab/DIBA/data/invest/d;

    if-nez v0, :cond_1

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/invest/e;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/data/invest/e;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->j:Lch/zhaw/securitylab/DIBA/data/invest/d;

    :cond_1
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->j:Lch/zhaw/securitylab/DIBA/data/invest/d;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
