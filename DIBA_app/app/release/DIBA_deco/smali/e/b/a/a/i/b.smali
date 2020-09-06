.class public abstract Le/b/a/a/i/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/i/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/c<",
        "*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field protected b:Le/b/a/a/i/b$a;

.field protected c:I

.field protected d:Le/b/a/a/f/c;

.field protected e:Landroid/view/GestureDetector;

.field protected f:Lcom/github/mikephil/charting/charts/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object v0, Le/b/a/a/i/b$a;->b:Le/b/a/a/i/b$a;

    iput-object v0, p0, Le/b/a/a/i/b;->b:Le/b/a/a/i/b$a;

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/i/b;->c:I

    iput-object p1, p0, Le/b/a/a/i/b;->f:Lcom/github/mikephil/charting/charts/c;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Le/b/a/a/i/b;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method protected static a(FFFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p3

    mul-float p0, p0, p0

    mul-float p2, p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/i/b;->f:Lcom/github/mikephil/charting/charts/c;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/c;->getOnChartGestureListener()Le/b/a/a/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/b/a/a/i/b;->b:Le/b/a/a/i/b$a;

    invoke-interface {v0, p1, v1}, Le/b/a/a/i/c;->e(Landroid/view/MotionEvent;Le/b/a/a/i/b$a;)V

    :cond_0
    return-void
.end method

.method protected c(Le/b/a/a/f/c;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/b/a/a/i/b;->d:Le/b/a/a/f/c;

    invoke-virtual {p1, v0}, Le/b/a/a/f/c;->a(Le/b/a/a/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/i/b;->f:Lcom/github/mikephil/charting/charts/c;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/c;->n(Le/b/a/a/f/c;Z)V

    iput-object p1, p0, Le/b/a/a/i/b;->d:Le/b/a/a/f/c;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Le/b/a/a/i/b;->f:Lcom/github/mikephil/charting/charts/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/github/mikephil/charting/charts/c;->n(Le/b/a/a/f/c;Z)V

    iput-object v0, p0, Le/b/a/a/i/b;->d:Le/b/a/a/f/c;

    :goto_1
    return-void
.end method

.method public d(Le/b/a/a/f/c;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/i/b;->d:Le/b/a/a/f/c;

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Le/b/a/a/i/b;->f:Lcom/github/mikephil/charting/charts/c;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/c;->getOnChartGestureListener()Le/b/a/a/i/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/b/a/a/i/b;->b:Le/b/a/a/i/b$a;

    invoke-interface {v0, p1, v1}, Le/b/a/a/i/c;->a(Landroid/view/MotionEvent;Le/b/a/a/i/b$a;)V

    :cond_0
    return-void
.end method
