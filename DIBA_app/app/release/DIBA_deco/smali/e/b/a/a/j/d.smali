.class public Le/b/a/a/j/d;
.super Le/b/a/a/j/j;
.source ""


# instance fields
.field protected h:Le/b/a/a/g/a/c;

.field private i:[F

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:[F


# direct methods
.method public constructor <init>(Le/b/a/a/g/a/c;Le/b/a/a/a/a;Le/b/a/a/k/i;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Le/b/a/a/j/j;-><init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    iput-object p2, p0, Le/b/a/a/j/d;->i:[F

    const/4 p2, 0x4

    new-array p3, p2, [F

    iput-object p3, p0, Le/b/a/a/j/d;->j:[F

    new-array p3, p2, [F

    iput-object p3, p0, Le/b/a/a/j/d;->k:[F

    new-array p3, p2, [F

    iput-object p3, p0, Le/b/a/a/j/d;->l:[F

    new-array p2, p2, [F

    iput-object p2, p0, Le/b/a/a/j/d;->m:[F

    iput-object p1, p0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface {v0}, Le/b/a/a/g/a/c;->getCandleData()Le/b/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/g/b/c;

    invoke-interface {v1}, Le/b/a/a/g/b/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Le/b/a/a/j/d;->l(Landroid/graphics/Canvas;Le/b/a/a/g/b/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Le/b/a/a/f/c;)V
    .locals 9

    iget-object v0, p0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface {v0}, Le/b/a/a/g/a/c;->getCandleData()Le/b/a/a/d/g;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v3}, Le/b/a/a/f/c;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object v4

    check-cast v4, Le/b/a/a/g/b/c;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Le/b/a/a/g/b/d;->R()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Le/b/a/a/f/c;->g()F

    move-result v5

    invoke-virtual {v3}, Le/b/a/a/f/c;->i()F

    move-result v6

    invoke-interface {v4, v5, v6}, Le/b/a/a/g/b/d;->m0(FF)Le/b/a/a/d/l;

    move-result-object v5

    check-cast v5, Le/b/a/a/d/i;

    invoke-virtual {p0, v5, v4}, Le/b/a/a/j/c;->i(Le/b/a/a/d/l;Le/b/a/a/g/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Le/b/a/a/d/i;->j()F

    move-result v6

    iget-object v7, p0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v7}, Le/b/a/a/a/a;->b()F

    move-result v7

    mul-float v6, v6, v7

    invoke-virtual {v5}, Le/b/a/a/d/i;->i()F

    move-result v7

    iget-object v8, p0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v8}, Le/b/a/a/a/a;->b()F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface {v4}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v8

    invoke-interface {v7, v8}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v7

    invoke-virtual {v5}, Le/b/a/a/d/l;->e()F

    move-result v5

    invoke-virtual {v7, v5, v6}, Le/b/a/a/k/f;->c(FF)Le/b/a/a/k/c;

    move-result-object v5

    iget-wide v6, v5, Le/b/a/a/k/c;->d:D

    double-to-float v6, v6

    iget-wide v7, v5, Le/b/a/a/k/c;->e:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Le/b/a/a/f/c;->k(FF)V

    iget-wide v6, v5, Le/b/a/a/k/c;->d:D

    double-to-float v3, v6

    iget-wide v5, v5, Le/b/a/a/k/c;->e:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Le/b/a/a/j/j;->k(Landroid/graphics/Canvas;FFLe/b/a/a/g/b/g;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-virtual {v9, v0}, Le/b/a/a/j/e;->h(Le/b/a/a/g/a/d;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface {v0}, Le/b/a/a/g/a/c;->getCandleData()Le/b/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->i()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Le/b/a/a/g/b/c;

    invoke-virtual {v9, v13}, Le/b/a/a/j/c;->j(Le/b/a/a/g/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v9, v13}, Le/b/a/a/j/e;->a(Le/b/a/a/g/b/d;)V

    iget-object v0, v9, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface {v13}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v1

    iget-object v0, v9, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget-object v2, v9, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-virtual {v0, v2, v13}, Le/b/a/a/j/c$a;->a(Le/b/a/a/g/a/b;Le/b/a/a/g/b/b;)V

    iget-object v0, v9, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v0}, Le/b/a/a/a/a;->a()F

    move-result v3

    iget-object v0, v9, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v0}, Le/b/a/a/a/a;->b()F

    move-result v4

    iget-object v0, v9, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget v5, v0, Le/b/a/a/j/c$a;->a:I

    iget v6, v0, Le/b/a/a/j/c$a;->b:I

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Le/b/a/a/k/f;->a(Le/b/a/a/g/b/c;FFII)[F

    move-result-object v14

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v15

    const/4 v8, 0x0

    :goto_1
    array-length v0, v14

    if-ge v8, v0, :cond_4

    aget v6, v14, v8

    add-int/lit8 v0, v8, 0x1

    aget v0, v14, v0

    iget-object v1, v9, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1, v6}, Le/b/a/a/k/i;->A(F)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, v9, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1, v6}, Le/b/a/a/k/i;->z(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1, v0}, Le/b/a/a/k/i;->D(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    div-int/lit8 v1, v8, 0x2

    iget-object v2, v9, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget v2, v2, Le/b/a/a/j/c$a;->a:I

    add-int/2addr v2, v1

    invoke-interface {v13, v2}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/b/a/a/d/i;

    invoke-interface {v13}, Le/b/a/a/g/b/d;->J()Le/b/a/a/e/f;

    move-result-object v2

    invoke-virtual {v4}, Le/b/a/a/d/i;->i()F

    move-result v3

    sub-float v7, v0, v15

    invoke-interface {v13, v1}, Le/b/a/a/g/b/d;->P(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Le/b/a/a/j/e;->e(Landroid/graphics/Canvas;Le/b/a/a/e/f;FLe/b/a/a/d/l;IFFI)V

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v17, v8

    :goto_3
    add-int/lit8 v8, v17, 0x2

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method protected l(Landroid/graphics/Canvas;Le/b/a/a/g/b/c;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v3

    invoke-interface {v2, v3}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v2

    iget-object v3, v0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v3}, Le/b/a/a/a/a;->b()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->V()F

    move-result v4

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->I()Z

    move-result v5

    iget-object v6, v0, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget-object v7, v0, Le/b/a/a/j/d;->h:Le/b/a/a/g/a/c;

    invoke-virtual {v6, v7, v1}, Le/b/a/a/j/c$a;->a(Le/b/a/a/g/a/b;Le/b/a/a/g/b/b;)V

    iget-object v6, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->b0()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget v6, v6, Le/b/a/a/j/c$a;->a:I

    :goto_0
    iget-object v7, v0, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    iget v8, v7, Le/b/a/a/j/c$a;->c:I

    iget v7, v7, Le/b/a/a/j/c$a;->a:I

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_15

    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v7

    check-cast v7, Le/b/a/a/d/i;

    if-nez v7, :cond_0

    move-object/from16 v12, p1

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v7}, Le/b/a/a/d/l;->e()F

    move-result v8

    invoke-virtual {v7}, Le/b/a/a/d/i;->k()F

    move-result v9

    invoke-virtual {v7}, Le/b/a/a/d/i;->h()F

    move-result v10

    invoke-virtual {v7}, Le/b/a/a/d/i;->i()F

    move-result v11

    invoke-virtual {v7}, Le/b/a/a/d/i;->j()F

    move-result v7

    const v13, 0x112233

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x1

    if-eqz v5, :cond_f

    iget-object v12, v0, Le/b/a/a/j/d;->i:[F

    aput v8, v12, v15

    aput v8, v12, v14

    const/16 v19, 0x4

    aput v8, v12, v19

    const/16 v19, 0x6

    aput v8, v12, v19

    const/16 v19, 0x7

    const/16 v20, 0x5

    cmpl-float v21, v9, v10

    if-lez v21, :cond_1

    mul-float v11, v11, v3

    aput v11, v12, v17

    mul-float v11, v9, v3

    aput v11, v12, v16

    mul-float v7, v7, v3

    aput v7, v12, v20

    mul-float v7, v10, v3

    aput v7, v12, v19

    goto :goto_1

    :cond_1
    cmpg-float v21, v9, v10

    mul-float v11, v11, v3

    if-gez v21, :cond_2

    aput v11, v12, v17

    mul-float v11, v10, v3

    aput v11, v12, v16

    mul-float v7, v7, v3

    aput v7, v12, v20

    mul-float v7, v9, v3

    aput v7, v12, v19

    goto :goto_1

    :cond_2
    aput v11, v12, v17

    mul-float v11, v9, v3

    aput v11, v12, v16

    mul-float v7, v7, v3

    aput v7, v12, v20

    aget v7, v12, v16

    aput v7, v12, v19

    :goto_1
    iget-object v7, v0, Le/b/a/a/j/d;->i:[F

    invoke-virtual {v2, v7}, Le/b/a/a/k/f;->i([F)V

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->W()Z

    move-result v7

    if-eqz v7, :cond_8

    cmpl-float v7, v9, v10

    if-lez v7, :cond_4

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v11

    if-ne v11, v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v11

    goto :goto_3

    :cond_4
    cmpg-float v7, v9, v10

    if-gez v7, :cond_6

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v11

    if-ne v11, v13, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v11

    goto :goto_3

    :cond_6
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v11

    if-ne v11, v13, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v11

    goto :goto_3

    :cond_8
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->m()I

    move-result v11

    if-ne v11, v13, :cond_9

    :goto_2
    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v11

    goto :goto_3

    :cond_9
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->m()I

    move-result v11

    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, v0, Le/b/a/a/j/d;->i:[F

    iget-object v11, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v7, v11}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget-object v7, v0, Le/b/a/a/j/d;->j:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v10, v3

    aput v18, v7, v17

    add-float/2addr v8, v11

    sub-float/2addr v8, v4

    aput v8, v7, v14

    mul-float v8, v9, v3

    aput v8, v7, v16

    invoke-virtual {v2, v7}, Le/b/a/a/k/f;->i([F)V

    cmpl-float v7, v9, v10

    if-lez v7, :cond_b

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v7

    if-ne v7, v13, :cond_a

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v8

    goto :goto_4

    :cond_a
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v8

    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->E()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, v0, Le/b/a/a/j/d;->j:[F

    aget v20, v7, v15

    aget v21, v7, v16

    aget v22, v7, v14

    aget v23, v7, v17

    :goto_5
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_b
    cmpg-float v7, v9, v10

    if-gez v7, :cond_d

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v7

    if-ne v7, v13, :cond_c

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v8

    goto :goto_6

    :cond_c
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v8

    :goto_6
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->c()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, v0, Le/b/a/a/j/d;->j:[F

    aget v20, v7, v15

    aget v21, v7, v17

    aget v22, v7, v14

    aget v23, v7, v16

    goto :goto_5

    :cond_d
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v7

    if-ne v7, v13, :cond_e

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v8

    goto :goto_7

    :cond_e
    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v8

    :goto_7
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Le/b/a/a/j/d;->j:[F

    aget v20, v7, v15

    aget v21, v7, v17

    aget v22, v7, v14

    aget v23, v7, v16

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    goto/16 :goto_a

    :cond_f
    move-object/from16 v12, p1

    iget-object v13, v0, Le/b/a/a/j/d;->k:[F

    aput v8, v13, v15

    mul-float v11, v11, v3

    aput v11, v13, v17

    aput v8, v13, v14

    mul-float v7, v7, v3

    aput v7, v13, v16

    iget-object v7, v0, Le/b/a/a/j/d;->l:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v9, v3

    aput v18, v7, v17

    aput v8, v7, v14

    aput v18, v7, v16

    iget-object v7, v0, Le/b/a/a/j/d;->m:[F

    add-float/2addr v11, v8

    sub-float/2addr v11, v4

    aput v11, v7, v15

    mul-float v11, v10, v3

    aput v11, v7, v17

    aput v8, v7, v14

    aput v11, v7, v16

    invoke-virtual {v2, v13}, Le/b/a/a/k/f;->i([F)V

    iget-object v7, v0, Le/b/a/a/j/d;->l:[F

    invoke-virtual {v2, v7}, Le/b/a/a/k/f;->i([F)V

    iget-object v7, v0, Le/b/a/a/j/d;->m:[F

    invoke-virtual {v2, v7}, Le/b/a/a/k/f;->i([F)V

    cmpl-float v7, v9, v10

    if-lez v7, :cond_11

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v7

    const v8, 0x112233

    if-ne v7, v8, :cond_10

    :goto_8
    invoke-interface {v1, v6}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v7

    goto :goto_9

    :cond_10
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->p0()I

    move-result v7

    goto :goto_9

    :cond_11
    const v8, 0x112233

    cmpg-float v7, v9, v10

    if-gez v7, :cond_13

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v7

    if-ne v7, v8, :cond_12

    goto :goto_8

    :cond_12
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->x()I

    move-result v7

    goto :goto_9

    :cond_13
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v7

    if-ne v7, v8, :cond_14

    goto :goto_8

    :cond_14
    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/c;->k()I

    move-result v7

    :goto_9
    iget-object v8, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Le/b/a/a/j/d;->k:[F

    aget v20, v7, v15

    aget v21, v7, v17

    aget v22, v7, v14

    aget v23, v7, v16

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Le/b/a/a/j/d;->l:[F

    aget v20, v7, v15

    aget v21, v7, v17

    aget v22, v7, v14

    aget v23, v7, v16

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Le/b/a/a/j/d;->m:[F

    aget v20, v7, v15

    aget v21, v7, v17

    aget v22, v7, v14

    aget v23, v7, v16

    iget-object v7, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    :goto_a
    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method
