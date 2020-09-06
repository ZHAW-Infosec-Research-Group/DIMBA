.class public Le/b/a/a/j/f;
.super Le/b/a/a/j/b;
.source ""


# instance fields
.field private m:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Le/b/a/a/g/a/a;Le/b/a/a/a/a;Le/b/a/a/k/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/b/a/a/j/b;-><init>(Le/b/a/a/g/a/a;Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget-object p1, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v6, p0

    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-virtual {v6, v0}, Le/b/a/a/j/f;->h(Le/b/a/a/g/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->i()Ljava/util/List;

    move-result-object v7

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v8

    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->d()Z

    move-result v9

    const/4 v11, 0x0

    :goto_0
    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->h()I

    move-result v0

    if-ge v11, v0, :cond_1e

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Le/b/a/a/g/b/a;

    invoke-virtual {v6, v12}, Le/b/a/a/j/c;->j(Le/b/a/a/g/b/d;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v19, v7

    goto/16 :goto_16

    :cond_1
    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v12}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/b/a/a/g/a/b;->a(Le/b/a/a/c/i$a;)Z

    move-result v13

    invoke-virtual {v6, v12}, Le/b/a/a/j/e;->a(Le/b/a/a/g/b/d;)V

    iget-object v0, v6, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Le/b/a/a/k/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v0, v14

    invoke-interface {v12}, Le/b/a/a/g/b/d;->J()Le/b/a/a/e/f;

    move-result-object v5

    iget-object v0, v6, Le/b/a/a/j/b;->i:[Le/b/a/a/b/b;

    aget-object v4, v0, v11

    iget-object v0, v6, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v0}, Le/b/a/a/a/a;->b()F

    move-result v16

    invoke-interface {v12}, Le/b/a/a/g/b/a;->s()Z

    move-result v0

    const/16 v17, 0x0

    if-nez v0, :cond_9

    const/4 v3, 0x0

    :goto_2
    int-to-float v0, v3

    iget-object v1, v4, Le/b/a/a/b/a;->b:[F

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, v6, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v2}, Le/b/a/a/a/a;->a()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, v4, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v1, v3, 0x1

    aget v2, v0, v1

    add-int/lit8 v16, v3, 0x3

    aget v16, v0, v16

    add-float v2, v2, v16

    div-float/2addr v2, v14

    iget-object v10, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    aget v0, v0, v1

    invoke-virtual {v10, v0}, Le/b/a/a/k/i;->B(F)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v10, v4, Le/b/a/a/b/a;->b:[F

    aget v10, v10, v3

    invoke-virtual {v0, v10}, Le/b/a/a/k/i;->C(F)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    move v10, v3

    move-object v14, v4

    move-object/from16 v19, v7

    move-object v7, v5

    goto/16 :goto_6

    :cond_3
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v10, v4, Le/b/a/a/b/a;->b:[F

    aget v1, v10, v1

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->y(F)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    div-int/lit8 v0, v3, 0x4

    invoke-interface {v12, v0}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v0

    check-cast v0, Le/b/a/a/d/b;

    invoke-virtual {v0}, Le/b/a/a/d/b;->b()F

    move-result v1

    iget-object v10, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-interface {v5, v1, v0, v11, v10}, Le/b/a/a/e/f;->a(FLe/b/a/a/d/l;ILe/b/a/a/k/i;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v6, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-static {v0, v10}, Le/b/a/a/k/h;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    if-eqz v9, :cond_5

    move v14, v8

    goto :goto_4

    :cond_5
    add-float v14, v0, v8

    neg-float v14, v14

    :goto_4
    move-object/from16 v19, v5

    if-eqz v9, :cond_6

    add-float v5, v0, v8

    neg-float v5, v5

    goto :goto_5

    :cond_6
    move v5, v8

    :goto_5
    if-eqz v13, :cond_7

    neg-float v14, v14

    sub-float/2addr v14, v0

    neg-float v5, v5

    sub-float/2addr v5, v0

    :cond_7
    iget-object v0, v4, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v16, v3, 0x2

    aget v0, v0, v16

    cmpl-float v1, v1, v17

    if-ltz v1, :cond_8

    move v5, v14

    :cond_8
    add-float/2addr v5, v0

    add-float v14, v2, v15

    div-int/lit8 v0, v3, 0x2

    invoke-interface {v12, v0}, Le/b/a/a/g/b/d;->P(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v10, v3

    move v3, v5

    move-object v5, v4

    move v4, v14

    move-object v14, v5

    move-object/from16 v28, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v28

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/j/f;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :goto_6
    add-int/lit8 v3, v10, 0x4

    move-object v5, v7

    move-object v4, v14

    move-object/from16 v7, v19

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_9
    move-object v14, v4

    move-object/from16 v19, v7

    move-object v7, v5

    iget-object v0, v6, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v12}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v10

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_7
    int-to-float v0, v5

    invoke-interface {v12}, Le/b/a/a/g/b/d;->K()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v2}, Le/b/a/a/a/a;->a()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    invoke-interface {v12, v5}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/b/a/a/d/b;

    invoke-interface {v12, v5}, Le/b/a/a/g/b/d;->P(I)I

    move-result v21

    invoke-virtual {v4}, Le/b/a/a/d/b;->k()[F

    move-result-object v3

    if-nez v3, :cond_11

    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v1, v14, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v2, v20, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->B(F)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_16

    :cond_a
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v1, v14, Le/b/a/a/b/a;->b:[F

    aget v1, v1, v20

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->C(F)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v1, v14, Le/b/a/a/b/a;->b:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->y(F)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Le/b/a/a/d/b;->b()F

    move-result v0

    iget-object v1, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-interface {v7, v0, v4, v11, v1}, Le/b/a/a/e/f;->a(FLe/b/a/a/d/l;ILe/b/a/a/k/i;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v6, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Le/b/a/a/k/h;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v22, v1

    if-eqz v9, :cond_d

    move v1, v8

    goto :goto_8

    :cond_d
    add-float v1, v0, v8

    neg-float v1, v1

    :goto_8
    move-object/from16 v23, v3

    if-eqz v9, :cond_e

    add-float v3, v0, v8

    neg-float v3, v3

    goto :goto_9

    :cond_e
    move v3, v8

    :goto_9
    if-eqz v13, :cond_f

    neg-float v1, v1

    sub-float/2addr v1, v0

    neg-float v3, v3

    sub-float/2addr v3, v0

    :cond_f
    iget-object v0, v14, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v24, v20, 0x2

    aget v0, v0, v24

    invoke-virtual {v4}, Le/b/a/a/d/b;->b()F

    move-result v4

    cmpl-float v4, v4, v17

    if-ltz v4, :cond_10

    goto :goto_a

    :cond_10
    move v1, v3

    :goto_a
    add-float v3, v0, v1

    iget-object v0, v14, Le/b/a/a/b/a;->b:[F

    aget v0, v0, v2

    add-float v4, v0, v15

    move-object/from16 v0, p0

    move-object/from16 v2, v22

    move-object/from16 v1, p1

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    move/from16 v23, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/j/f;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto/16 :goto_13

    :cond_11
    move/from16 v23, v5

    move-object/from16 v22, v12

    move-object v12, v3

    array-length v0, v12

    mul-int/lit8 v5, v0, 0x2

    new-array v3, v5, [F

    invoke-virtual {v4}, Le/b/a/a/d/b;->h()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v24, 0x0

    :goto_b
    if-ge v1, v5, :cond_13

    aget v25, v12, v2

    cmpl-float v26, v25, v17

    if-ltz v26, :cond_12

    add-float v24, v24, v25

    move/from16 v25, v0

    move/from16 v0, v24

    goto :goto_c

    :cond_12
    sub-float v25, v0, v25

    :goto_c
    mul-float v0, v0, v16

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v25

    goto :goto_b

    :cond_13
    invoke-virtual {v10, v3}, Le/b/a/a/k/f;->i([F)V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v5, :cond_1b

    div-int/lit8 v0, v2, 0x2

    aget v0, v12, v0

    iget-object v1, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-interface {v7, v0, v4, v11, v1}, Le/b/a/a/e/f;->a(FLe/b/a/a/d/l;ILe/b/a/a/k/i;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v4

    iget-object v4, v6, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Le/b/a/a/k/h;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v25, v1

    if-eqz v9, :cond_14

    move v1, v8

    goto :goto_e

    :cond_14
    add-float v1, v4, v8

    neg-float v1, v1

    :goto_e
    move/from16 v26, v5

    if-eqz v9, :cond_15

    add-float v5, v4, v8

    neg-float v5, v5

    goto :goto_f

    :cond_15
    move v5, v8

    :goto_f
    if-eqz v13, :cond_16

    neg-float v1, v1

    sub-float/2addr v1, v4

    neg-float v5, v5

    sub-float/2addr v5, v4

    :cond_16
    aget v4, v3, v2

    cmpl-float v0, v0, v17

    if-ltz v0, :cond_17

    goto :goto_10

    :cond_17
    move v1, v5

    :goto_10
    add-float/2addr v4, v1

    iget-object v0, v14, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v1, v20, 0x1

    aget v1, v0, v1

    add-int/lit8 v5, v20, 0x3

    aget v0, v0, v5

    add-float/2addr v1, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v1, v1, v18

    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->B(F)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_14

    :cond_18
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0, v4}, Le/b/a/a/k/i;->C(F)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_11
    move/from16 v27, v2

    move-object/from16 v25, v3

    goto :goto_12

    :cond_19
    iget-object v0, v6, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v0, v1}, Le/b/a/a/k/i;->y(F)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_11

    :cond_1a
    add-float v5, v1, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v27, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/j/f;->n(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :goto_12
    add-int/lit8 v2, v27, 0x2

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move/from16 v5, v26

    goto :goto_d

    :cond_1b
    :goto_13
    const/high16 v18, 0x40000000    # 2.0f

    :goto_14
    if-nez v12, :cond_1c

    add-int/lit8 v20, v20, 0x4

    goto :goto_15

    :cond_1c
    array-length v0, v12

    mul-int/lit8 v0, v0, 0x4

    add-int v20, v20, v0

    :goto_15
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v12, v22

    goto/16 :goto_7

    :cond_1d
    :goto_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public g()V
    .locals 7

    iget-object v0, p0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v0}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->h()I

    move-result v1

    new-array v1, v1, [Le/b/a/a/b/c;

    iput-object v1, p0, Le/b/a/a/j/b;->i:[Le/b/a/a/b/b;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Le/b/a/a/j/b;->i:[Le/b/a/a/b/b;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object v2

    check-cast v2, Le/b/a/a/g/b/a;

    iget-object v3, p0, Le/b/a/a/j/b;->i:[Le/b/a/a/b/b;

    new-instance v4, Le/b/a/a/b/c;

    invoke-interface {v2}, Le/b/a/a/g/b/d;->K()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-interface {v2}, Le/b/a/a/g/b/a;->s()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Le/b/a/a/g/b/a;->g0()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    mul-int v5, v5, v6

    invoke-virtual {v0}, Le/b/a/a/d/j;->h()I

    move-result v6

    invoke-interface {v2}, Le/b/a/a/g/b/a;->s()Z

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Le/b/a/a/b/c;-><init>(IIZ)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected h(Le/b/a/a/g/a/d;)Z
    .locals 2

    invoke-interface {p1}, Le/b/a/a/g/a/d;->getData()Le/b/a/a/d/j;

    move-result-object v0

    invoke-virtual {v0}, Le/b/a/a/d/j;->j()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Le/b/a/a/g/a/d;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v1}, Le/b/a/a/k/i;->r()F

    move-result v1

    mul-float p1, p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected k(Landroid/graphics/Canvas;Le/b/a/a/g/b/a;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v4

    invoke-interface {v3, v4}, Le/b/a/a/g/a/b;->c(Le/b/a/a/c/i$a;)Le/b/a/a/k/f;

    move-result-object v3

    iget-object v4, v0, Le/b/a/a/j/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/a;->j0()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Le/b/a/a/j/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/a;->h()F

    move-result v5

    invoke-static {v5}, Le/b/a/a/k/h;->e(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/a;->h()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v7}, Le/b/a/a/a/a;->a()F

    move-result v7

    iget-object v8, v0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {v8}, Le/b/a/a/a/a;->b()F

    move-result v8

    iget-object v9, v0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v9}, Le/b/a/a/g/a/a;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Le/b/a/a/j/b;->j:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/a;->f()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v9}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v9

    invoke-virtual {v9}, Le/b/a/a/d/a;->v()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->K()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->K()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    invoke-interface {v1, v11}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object v12

    check-cast v12, Le/b/a/a/d/b;

    invoke-virtual {v12}, Le/b/a/a/d/l;->e()F

    move-result v12

    iget-object v13, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    sub-float v14, v12, v9

    iput v14, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v9

    iput v12, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v13}, Le/b/a/a/k/f;->n(Landroid/graphics/RectF;)V

    iget-object v12, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v13, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v13}, Le/b/a/a/k/i;->B(F)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v15, p1

    goto :goto_2

    :cond_1
    iget-object v12, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v13, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v13}, Le/b/a/a/k/i;->y(F)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    iget-object v12, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget-object v13, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v13}, Le/b/a/a/k/i;->h()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->left:F

    iget-object v12, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget-object v13, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    invoke-virtual {v13}, Le/b/a/a/k/i;->i()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Le/b/a/a/j/f;->m:Landroid/graphics/RectF;

    iget-object v13, v0, Le/b/a/a/j/b;->j:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move-object/from16 v15, p1

    iget-object v9, v0, Le/b/a/a/j/b;->i:[Le/b/a/a/b/b;

    aget-object v9, v9, v2

    invoke-virtual {v9, v7, v8}, Le/b/a/a/b/a;->b(FF)V

    invoke-virtual {v9, v2}, Le/b/a/a/b/b;->g(I)V

    iget-object v2, v0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->F()Le/b/a/a/c/i$a;

    move-result-object v7

    invoke-interface {v2, v7}, Le/b/a/a/g/a/b;->a(Le/b/a/a/c/i$a;)Z

    move-result v2

    invoke-virtual {v9, v2}, Le/b/a/a/b/b;->h(Z)V

    iget-object v2, v0, Le/b/a/a/j/b;->g:Le/b/a/a/g/a/a;

    invoke-interface {v2}, Le/b/a/a/g/a/a;->getBarData()Le/b/a/a/d/a;

    move-result-object v2

    invoke-virtual {v2}, Le/b/a/a/d/a;->v()F

    move-result v2

    invoke-virtual {v9, v2}, Le/b/a/a/b/b;->f(F)V

    invoke-virtual {v9, v1}, Le/b/a/a/b/b;->e(Le/b/a/a/g/b/a;)V

    iget-object v2, v9, Le/b/a/a/b/a;->b:[F

    invoke-virtual {v3, v2}, Le/b/a/a/k/f;->i([F)V

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->d0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    iget-object v2, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Le/b/a/a/g/b/d;->M()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_5
    invoke-virtual {v9}, Le/b/a/a/b/a;->c()I

    move-result v2

    if-ge v5, v2, :cond_a

    iget-object v2, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v3, v9, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v7, v5, 0x3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Le/b/a/a/k/i;->B(F)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    iget-object v2, v0, Le/b/a/a/j/k;->a:Le/b/a/a/k/i;

    iget-object v3, v9, Le/b/a/a/b/a;->b:[F

    add-int/lit8 v8, v5, 0x1

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Le/b/a/a/k/i;->y(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    if-nez v6, :cond_8

    iget-object v2, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    div-int/lit8 v3, v5, 0x4

    invoke-interface {v1, v3}, Le/b/a/a/g/b/d;->t0(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v2, v9, Le/b/a/a/b/a;->b:[F

    aget v3, v2, v5

    aget v16, v2, v8

    add-int/lit8 v10, v5, 0x2

    aget v17, v2, v10

    aget v18, v2, v7

    iget-object v2, v0, Le/b/a/a/j/e;->c:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move v15, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_9

    iget-object v2, v9, Le/b/a/a/b/a;->b:[F

    aget v15, v2, v5

    aget v16, v2, v8

    aget v17, v2, v10

    aget v18, v2, v7

    iget-object v2, v0, Le/b/a/a/j/b;->k:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x4

    move-object/from16 v15, p1

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method protected l(FFFFLe/b/a/a/k/f;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    iget-object p4, p0, Le/b/a/a/j/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p4, p2, v0, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Le/b/a/a/j/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {p2}, Le/b/a/a/a/a;->b()F

    move-result p2

    invoke-virtual {p5, p1, p2}, Le/b/a/a/k/f;->m(Landroid/graphics/RectF;F)V

    return-void
.end method

.method protected m(Le/b/a/a/f/c;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, p2}, Le/b/a/a/f/c;->k(FF)V

    return-void
.end method

.method protected n(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Le/b/a/a/j/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
