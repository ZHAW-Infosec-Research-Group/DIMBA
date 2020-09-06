.class public Lch/zhaw/securitylab/DIBA/g/d/l;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private a:Lch/zhaw/securitylab/DIBA/DIBA;

.field private b:Lch/zhaw/securitylab/DIBA/data/invest/c;


# direct methods
.method public constructor <init>(Lch/zhaw/securitylab/DIBA/data/invest/c;)V
    .locals 1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->a:Lch/zhaw/securitylab/DIBA/DIBA;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->b:Lch/zhaw/securitylab/DIBA/data/invest/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/l;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/j;->b(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const-string v0, "invest worked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Investment: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->b:Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/invest/c;->c()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->b:Lch/zhaw/securitylab/DIBA/data/invest/c;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/invest/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/g/d/a;-><init>(Lch/zhaw/securitylab/DIBA/g/d/l;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public synthetic c()V
    .locals 4

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->a:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lch/zhaw/securitylab/DIBA/data/invest/c;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/g/d/l;->b:Lch/zhaw/securitylab/DIBA/data/invest/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/invest/d;->f([Lch/zhaw/securitylab/DIBA/data/invest/c;)V

    return-void
.end method
