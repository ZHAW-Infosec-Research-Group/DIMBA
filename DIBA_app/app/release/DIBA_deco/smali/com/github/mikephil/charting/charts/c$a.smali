.class Lcom/github/mikephil/charting/charts/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/mikephil/charting/charts/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/mikephil/charting/charts/c;


# direct methods
.method constructor <init>(Lcom/github/mikephil/charting/charts/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/c$a;->a:Lcom/github/mikephil/charting/charts/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/c$a;->a:Lcom/github/mikephil/charting/charts/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method
