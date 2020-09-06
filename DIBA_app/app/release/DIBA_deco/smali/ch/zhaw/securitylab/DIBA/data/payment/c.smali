.class public final Lch/zhaw/securitylab/DIBA/data/payment/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lch/zhaw/securitylab/DIBA/data/payment/b;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/payment/c$a;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/payment/c$a;-><init>(Lch/zhaw/securitylab/DIBA/data/payment/c;Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->b:Landroidx/room/c;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/payment/c$b;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/payment/c$b;-><init>(Lch/zhaw/securitylab/DIBA/data/payment/c;Landroidx/room/j;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->c:Landroidx/room/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/payment/c$c;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/data/payment/c$c;-><init>(Lch/zhaw/securitylab/DIBA/data/payment/c;Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public varargs a([Lch/zhaw/securitylab/DIBA/data/payment/a;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j([Ljava/lang/Object;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM payment WHERE owner=?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/m;->o(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Ld/n/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "uid"

    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "owner"

    invoke-static {v3, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "target"

    invoke-static {v3, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "amount"

    invoke-static {v3, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "amountSFr"

    invoke-static {v3, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "currency"

    invoke-static {v3, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Lch/zhaw/securitylab/DIBA/data/payment/a;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lch/zhaw/securitylab/DIBA/data/payment/a;->i(I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/m;->A()V

    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/m;->A()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->c:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->i(Ljava/lang/Iterable;)I

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    throw p1
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    :try_start_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->h(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM payment"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/m;->o(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v3

    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Ld/n/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "uid"

    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "owner"

    invoke-static {v2, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "target"

    invoke-static {v2, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "amount"

    invoke-static {v2, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "amountSFr"

    invoke-static {v2, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "currency"

    invoke-static {v2, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Lch/zhaw/securitylab/DIBA/data/payment/a;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lch/zhaw/securitylab/DIBA/data/payment/a;->i(I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/m;->A()V

    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/m;->A()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/data/payment/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM payment WHERE owner=? OR target=?"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroidx/room/m;->o(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v2, v4}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4, v0}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v2, v3}, Landroidx/room/m;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    iget-object v0, v1, Lch/zhaw/securitylab/DIBA/data/payment/c;->a:Landroidx/room/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Ld/n/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "uid"

    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "owner"

    invoke-static {v3, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "target"

    invoke-static {v3, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "amount"

    invoke-static {v3, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "amountSFr"

    invoke-static {v3, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "currency"

    invoke-static {v3, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lch/zhaw/securitylab/DIBA/data/invest/b;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Lch/zhaw/securitylab/DIBA/data/payment/a;

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lch/zhaw/securitylab/DIBA/data/payment/a;->i(I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/m;->A()V

    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/m;->A()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
