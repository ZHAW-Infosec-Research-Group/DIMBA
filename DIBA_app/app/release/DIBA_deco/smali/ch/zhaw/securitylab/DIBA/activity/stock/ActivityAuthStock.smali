.class public Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;
    }
.end annotation


# instance fields
.field private C:Lcom/github/mikephil/charting/charts/CandleStickChart;

.field private D:Landroid/hardware/SensorManager;

.field private E:Landroid/hardware/Sensor;

.field private F:Ljava/lang/Thread;

.field private G:Lcom/github/mikephil/charting/charts/LineChart;

.field private H:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0028

    const v2, 0x7f0a0120

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->H:Z

    return-void
.end method

.method static synthetic Z(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->H:Z

    return p1
.end method

.method private a0(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/c;->getData()Le/b/a/a/d/j;

    move-result-object v0

    check-cast v0, Le/b/a/a/d/m;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/b/a/a/d/j;->g(I)Le/b/a/a/g/b/d;

    move-result-object v2

    check-cast v2, Le/b/a/a/g/b/e;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->b0()Le/b/a/a/d/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/b/a/a/d/j;->a(Le/b/a/a/g/b/d;)V

    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    new-instance v4, Le/b/a/a/d/l;

    invoke-interface {v2}, Le/b/a/a/g/b/d;->K()I

    move-result v5

    int-to-float v5, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-direct {v4, v5, p1}, Le/b/a/a/d/l;-><init>(FF)V

    invoke-virtual {v0, v4, v1}, Le/b/a/a/d/j;->b(Le/b/a/a/d/l;I)V

    invoke-interface {v2}, Le/b/a/a/g/b/d;->K()I

    move-result p1

    const/16 v3, 0x14

    if-lt p1, v3, :cond_1

    invoke-interface {v2}, Le/b/a/a/g/b/d;->u()Z

    :goto_0
    invoke-interface {v2}, Le/b/a/a/g/b/d;->K()I

    move-result p1

    if-ge v1, p1, :cond_1

    invoke-interface {v2, v1}, Le/b/a/a/g/b/d;->Z(I)Le/b/a/a/d/l;

    move-result-object p1

    invoke-virtual {p1}, Le/b/a/a/d/l;->e()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Le/b/a/a/d/l;->f(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Le/b/a/a/d/j;->t()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/b;->t()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/b;->setVisibleXRangeMaximum(F)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Le/b/a/a/d/j;->j()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/b;->M(F)V

    :cond_2
    return-void
.end method

.method private b0()Le/b/a/a/d/n;
    .locals 3

    new-instance v0, Le/b/a/a/d/n;

    const/4 v1, 0x0

    const-string v2, "Dynamic Data"

    invoke-direct {v0, v1, v2}, Le/b/a/a/d/n;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object v1, Le/b/a/a/c/i$a;->b:Le/b/a/a/c/i$a;

    invoke-virtual {v0, v1}, Le/b/a/a/d/e;->v0(Le/b/a/a/c/i$a;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Le/b/a/a/d/o;->E0(F)V

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Le/b/a/a/d/e;->w0(I)V

    sget-object v1, Le/b/a/a/d/n$a;->d:Le/b/a/a/d/n$a;

    invoke-virtual {v0, v1}, Le/b/a/a/d/n;->G0(Le/b/a/a/d/n$a;)V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Le/b/a/a/d/n;->F0(F)V

    return-object v0
.end method

.method private c0()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, v1, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-02-2020"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d0()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Le/b/a/a/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x15

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    const/16 v3, 0xb4

    int-to-float v3, v3

    add-float v9, v2, v3

    new-instance v2, Le/b/a/a/d/i;

    int-to-float v5, v1

    const/high16 v3, 0x40800000    # 4.0f

    add-float v6, v9, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float v7, v9, v3

    const/high16 v3, 0x41400000    # 12.0f

    sub-float v8, v9, v3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Le/b/a/a/d/i;-><init>(FFFFF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private e0()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->F:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->F:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->D:Landroid/hardware/SensorManager;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->E:Landroid/hardware/Sensor;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->D:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, p1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    const p1, 0x7f0a00d0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/c;->getDescription()Le/b/a/a/c/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/b/a/a/c/b;->g(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/c;->setTouchEnabled(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/b;->setDragEnabled(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/b;->setScaleEnabled(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/b;->setDrawGridBackground(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/b;->setPinchZoom(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance p1, Le/b/a/a/d/m;

    invoke-direct {p1}, Le/b/a/a/d/m;-><init>()V

    invoke-virtual {p1, v2}, Le/b/a/a/d/j;->u(I)V

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/charts/c;->setData(Le/b/a/a/d/j;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/c;->getLegend()Le/b/a/a/c/e;

    move-result-object p1

    sget-object v3, Le/b/a/a/c/e$c;->g:Le/b/a/a/c/e$c;

    invoke-virtual {p1, v3}, Le/b/a/a/c/e;->G(Le/b/a/a/c/e$c;)V

    invoke-virtual {p1, v2}, Le/b/a/a/c/b;->h(I)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Le/b/a/a/c/b;->h(I)V

    invoke-virtual {p1, v0}, Le/b/a/a/c/a;->E(Z)V

    invoke-virtual {p1, v0}, Le/b/a/a/c/h;->L(Z)V

    invoke-virtual {p1, v0}, Le/b/a/a/c/b;->g(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/b;->getAxisLeft()Le/b/a/a/c/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Le/b/a/a/c/b;->h(I)V

    invoke-virtual {p1, v1}, Le/b/a/a/c/a;->E(Z)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v2}, Le/b/a/a/c/a;->C(F)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Le/b/a/a/c/a;->D(F)V

    invoke-virtual {p1, v0}, Le/b/a/a/c/a;->E(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/b;->getAxisRight()Le/b/a/a/c/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/b/a/a/c/b;->g(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/b;->getAxisLeft()Le/b/a/a/c/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/b/a/a/c/a;->E(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/b/a/a/c/a;->E(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->G:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/b;->setDrawBorders(Z)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->e0()V

    const p1, 0x7f0a0055

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/CandleStickChart;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->C:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->d0()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->c0()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->C:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/b;->setDragEnabled(Z)V

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->C:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/charts/b;->setScaleEnabled(Z)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->C:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/c;->getXAxis()Le/b/a/a/c/h;

    move-result-object v1

    sget-object v3, Le/b/a/a/c/h$a;->c:Le/b/a/a/c/h$a;

    invoke-virtual {v1, v3}, Le/b/a/a/c/h;->M(Le/b/a/a/c/h$a;)V

    new-instance v3, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;-><init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Ljava/util/ArrayList;Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;)V

    invoke-virtual {v1, v3}, Le/b/a/a/c/a;->H(Le/b/a/a/e/d;)V

    new-instance v1, Le/b/a/a/d/h;

    const-string v2, "USD/EUR 1"

    invoke-direct {v1, p1, v2}, Le/b/a/a/d/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 p1, -0x10000

    invoke-virtual {v1, p1}, Le/b/a/a/d/h;->G0(I)V

    const p1, -0xff0100

    invoke-virtual {v1, p1}, Le/b/a/a/d/h;->H0(I)V

    invoke-virtual {v1, v0}, Le/b/a/a/d/h;->I0(Z)V

    invoke-virtual {v1, v0}, Le/b/a/a/d/h;->K0(Z)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {v1, p1}, Le/b/a/a/d/h;->J0(F)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Le/b/a/a/d/g;

    invoke-direct {v0, p1}, Le/b/a/a/d/g;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->C:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/c;->setData(Le/b/a/a/d/j;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->D:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->F:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-super {p0}, Landroidx/appcompat/app/e;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "Should replace candleStick chart!"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->F:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->D:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/c/h;->onResume()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->D:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->E:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-boolean v0, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->H:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->a0(Landroid/hardware/SensorEvent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;->H:Z

    :cond_0
    return-void
.end method
