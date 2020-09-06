.class public Le/b/a/a/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/a/g/b/e;Le/b/a/a/g/a/e;)F
    .locals 4

    invoke-interface {p2}, Le/b/a/a/g/a/d;->getYChartMax()F

    move-result v0

    invoke-interface {p2}, Le/b/a/a/g/a/d;->getYChartMin()F

    move-result v1

    invoke-interface {p2}, Le/b/a/a/g/a/e;->getLineData()Le/b/a/a/d/m;

    move-result-object p2

    invoke-interface {p1}, Le/b/a/a/g/b/d;->T()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Le/b/a/a/d/j;->p()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p2}, Le/b/a/a/d/j;->r()F

    move-result p2

    cmpg-float p2, p2, v3

    if-gez p2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {p1}, Le/b/a/a/g/b/d;->r()F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    return v3
.end method
