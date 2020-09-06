.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/b;
.source ""

# interfaces
.implements Le/b/a/a/g/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/b<",
        "Le/b/a/a/d/m;",
        ">;",
        "Le/b/a/a/g/a/e;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getLineData()Le/b/a/a/d/m;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->c:Le/b/a/a/d/j;

    check-cast v0, Le/b/a/a/d/m;

    return-object v0
.end method

.method protected o()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/b;->o()V

    new-instance v0, Le/b/a/a/j/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/c;->v:Le/b/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/c;->u:Le/b/a/a/k/i;

    invoke-direct {v0, p0, v1, v2}, Le/b/a/a/j/h;-><init>(Le/b/a/a/g/a/e;Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/c;->s:Le/b/a/a/j/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/b/a/a/j/h;

    if-eqz v1, :cond_0

    check-cast v0, Le/b/a/a/j/h;

    invoke-virtual {v0}, Le/b/a/a/j/h;->w()V

    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/c;->onDetachedFromWindow()V

    return-void
.end method
