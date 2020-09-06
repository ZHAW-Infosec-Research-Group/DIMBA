.class public Lcom/github/mikephil/charting/charts/CandleStickChart;
.super Lcom/github/mikephil/charting/charts/b;
.source ""

# interfaces
.implements Le/b/a/a/g/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/b<",
        "Le/b/a/a/d/g;",
        ">;",
        "Le/b/a/a/g/a/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCandleData()Le/b/a/a/d/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v0, Le/b/a/a/d/g;

    return-object v0
.end method

.method protected o()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/b;->o()V

    new-instance v0, Le/b/a/a/j/d;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->v:Le/b/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, p0, v1, v2}, Le/b/a/a/j/d;-><init>(Le/b/a/a/g/a/c;Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Le/b/a/a/c/a;->G(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/b/a/a/c/a;->F(F)V

    return-void
.end method
