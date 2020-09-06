.class Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;
.super Landroidx/room/l$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->f(Landroidx/room/a;)Ld/n/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;I)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-direct {p0, p2}, Landroidx/room/l$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ld/n/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Investment` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `owner` TEXT, `date` INTEGER, `amount` TEXT, `amountSFr` TEXT, `currency` TEXT)"

    invoke-interface {p1, v0}, Ld/n/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Ld/n/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'232495e1bef973341e8b9e568d717ece\')"

    invoke-interface {p1, v0}, Ld/n/a/b;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ld/n/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `Investment`"

    invoke-interface {p1, v0}, Ld/n/a/b;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->t(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->u(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v2}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->w(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->b(Ld/n/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ld/n/a/b;)V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->x(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->y(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v2}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->z(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->a(Ld/n/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ld/n/a/b;)V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v0, p1}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->A(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;Ld/n/a/b;)Ld/n/a/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v0, p1}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->B(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;Ld/n/a/b;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->C(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->D(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl$a;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;

    invoke-static {v2}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;->v(Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->c(Ld/n/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ld/n/a/b;)V
    .locals 0

    return-void
.end method

.method public f(Ld/n/a/b;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/s/c;->a(Ld/n/a/b;)V

    return-void
.end method

.method protected g(Ld/n/a/b;)Landroidx/room/l$b;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/s/e$a;

    const-string v3, "uid"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/s/e$a;

    const-string v4, "owner"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "owner"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/s/e$a;

    const-string v4, "date"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/s/e$a;

    const-string v4, "amount"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/s/e$a;

    const-string v4, "amountSFr"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "amountSFr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/s/e$a;

    const-string v4, "currency"

    const-string v5, "TEXT"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "currency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Landroidx/room/s/e;

    const-string v5, "Investment"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/s/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v5}, Landroidx/room/s/e;->a(Ld/n/a/b;Ljava/lang/String;)Landroidx/room/s/e;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/room/s/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/l$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Investment(ch.zhaw.securitylab.DIBA.data.invest.Investment).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Landroidx/room/l$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
