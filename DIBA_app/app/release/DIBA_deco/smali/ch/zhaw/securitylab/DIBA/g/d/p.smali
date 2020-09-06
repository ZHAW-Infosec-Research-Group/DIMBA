.class public Lch/zhaw/securitylab/DIBA/g/d/p;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private final a:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

.field private b:Lch/zhaw/securitylab/DIBA/DIBA;

.field private c:Lch/zhaw/securitylab/DIBA/d/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/p$a;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/d/p$a;-><init>()V

    invoke-virtual {v0}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;)V
    .locals 1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->b:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->d()Lch/zhaw/securitylab/DIBA/d/b/b;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->c:Lch/zhaw/securitylab/DIBA/d/b/b;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->a:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/p;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "list"

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/j;->b(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "message added"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "viewType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/sql/Timestamp;

    const-string v6, "creationTime"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Lch/zhaw/securitylab/DIBA/d/b/a;

    invoke-direct {v5, v3, v4, v2}, Lch/zhaw/securitylab/DIBA/d/b/a;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/c;

    invoke-direct {v1, p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/c;-><init>(Lch/zhaw/securitylab/DIBA/g/d/p;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->a:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->Z(Ljava/util/List;)V

    return-void
.end method

.method public synthetic d(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->c:Lch/zhaw/securitylab/DIBA/d/b/b;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->b:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lch/zhaw/securitylab/DIBA/d/b/b;->f(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/p;->a:Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/d;

    invoke-direct {v1, p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/d;-><init>(Lch/zhaw/securitylab/DIBA/g/d/p;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
