.class public Lch/zhaw/securitylab/DIBA/g/d/q;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private a:Lch/zhaw/securitylab/DIBA/data/payment/a;

.field private b:Lch/zhaw/securitylab/DIBA/c/h;


# direct methods
.method public constructor <init>(Lch/zhaw/securitylab/DIBA/data/payment/a;Lch/zhaw/securitylab/DIBA/c/h;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->a:Lch/zhaw/securitylab/DIBA/data/payment/a;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->b:Lch/zhaw/securitylab/DIBA/c/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/q;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/j;->b(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "string"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    const-string v1, "payment worked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->a:Lch/zhaw/securitylab/DIBA/data/payment/a;

    invoke-virtual {v2}, Lch/zhaw/securitylab/DIBA/data/payment/a;->c()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->a:Lch/zhaw/securitylab/DIBA/data/payment/a;

    invoke-virtual {v2}, Lch/zhaw/securitylab/DIBA/data/payment/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/DIBA;->t(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/e;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/g/d/e;-><init>(Lch/zhaw/securitylab/DIBA/g/d/q;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->b:Lch/zhaw/securitylab/DIBA/c/h;

    if-eqz p1, :cond_0

    const-class v0, Lch/zhaw/securitylab/DIBA/activity/pay/ActivityAuthPay;

    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->b:Lch/zhaw/securitylab/DIBA/c/h;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TaskStackBuilder;->startActivities()V

    :cond_0
    return-void
.end method

.method public synthetic c()V
    .locals 4

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->h()Lch/zhaw/securitylab/DIBA/data/payment/b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lch/zhaw/securitylab/DIBA/data/payment/a;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/q;->a:Lch/zhaw/securitylab/DIBA/data/payment/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/payment/b;->a([Lch/zhaw/securitylab/DIBA/data/payment/a;)V

    return-void
.end method
