.class public Lch/zhaw/securitylab/DIBA/g/d/m;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private final a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

.field private b:Lch/zhaw/securitylab/DIBA/DIBA;

.field private c:Lch/zhaw/securitylab/DIBA/data/invest/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/m$a;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/d/m$a;-><init>()V

    invoke-virtual {v0}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;)V
    .locals 1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->b:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->c:Lch/zhaw/securitylab/DIBA/data/invest/d;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/m;->b(Lorg/json/JSONObject;)V

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

    new-instance v3, Ljava/sql/Timestamp;

    const-string v4, "date"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

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

    new-instance v2, Lch/zhaw/securitylab/DIBA/data/invest/c;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lch/zhaw/securitylab/DIBA/data/invest/c;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V

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
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/b;

    invoke-direct {v1, p0, v0}, Lch/zhaw/securitylab/DIBA/g/d/b;-><init>(Lch/zhaw/securitylab/DIBA/g/d/m;Ljava/util/List;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->c:Lch/zhaw/securitylab/DIBA/data/invest/d;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->b:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/invest/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/invest/d;->c(Ljava/util/List;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->c:Lch/zhaw/securitylab/DIBA/data/invest/d;

    invoke-interface {v0, p1}, Lch/zhaw/securitylab/DIBA/data/invest/d;->d(Ljava/util/List;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->c0()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/m;->a:Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/activity/invest/ActivityAuthInvestList;->b0()V

    return-void
.end method
