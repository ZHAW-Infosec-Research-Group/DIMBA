.class public Lch/zhaw/securitylab/DIBA/g/d/r;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private final a:Lch/zhaw/securitylab/DIBA/activity/pay/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/r$a;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/d/r$a;-><init>()V

    invoke-virtual {v0}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lch/zhaw/securitylab/DIBA/activity/pay/k;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/r;->a:Lch/zhaw/securitylab/DIBA/activity/pay/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/r;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 10

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/j;->b(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "owner"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "target"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "amount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    const-string v3, "amountSFr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    const-string v3, "currency"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lch/zhaw/securitylab/DIBA/data/payment/a;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lch/zhaw/securitylab/DIBA/data/payment/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->h()Lch/zhaw/securitylab/DIBA/data/payment/b;

    move-result-object p1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lch/zhaw/securitylab/DIBA/g/d/f;

    invoke-direct {v2, p0, p1, v0}, Lch/zhaw/securitylab/DIBA/g/d/f;-><init>(Lch/zhaw/securitylab/DIBA/g/d/r;Lch/zhaw/securitylab/DIBA/data/payment/b;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic c(Lch/zhaw/securitylab/DIBA/data/payment/b;Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/zhaw/securitylab/DIBA/data/payment/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Lch/zhaw/securitylab/DIBA/data/payment/b;->c(Ljava/util/List;)V

    invoke-interface {p1, p2}, Lch/zhaw/securitylab/DIBA/data/payment/b;->d(Ljava/util/List;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/r;->a:Lch/zhaw/securitylab/DIBA/activity/pay/k;

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/g/d/r;->a:Lch/zhaw/securitylab/DIBA/activity/pay/k;

    invoke-virtual {p2, p1}, Lch/zhaw/securitylab/DIBA/activity/pay/k;->c0(Ljava/util/List;)V

    return-void
.end method
