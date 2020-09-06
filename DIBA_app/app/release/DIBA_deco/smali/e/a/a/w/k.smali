.class public Le/a/a/w/k;
.super Le/a/a/w/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/w/l<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Le/a/a/p$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/a/a/p$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Le/a/a/w/l;-><init>(ILjava/lang/String;Ljava/lang/String;Le/a/a/p$b;Le/a/a/p$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Le/a/a/p$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/a/a/p$a;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Le/a/a/w/k;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V

    return-void
.end method


# virtual methods
.method protected F(Le/a/a/k;)Le/a/a/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k;",
            ")",
            "Le/a/a/p<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Le/a/a/k;->b:[B

    iget-object v2, p1, Le/a/a/k;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Le/a/a/w/g;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/a/w/g;->c(Le/a/a/k;)Le/a/a/b$a;

    move-result-object p1

    invoke-static {v1, p1}, Le/a/a/p;->c(Ljava/lang/Object;Le/a/a/b$a;)Le/a/a/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Le/a/a/m;

    invoke-direct {v0, p1}, Le/a/a/m;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Le/a/a/p;->a(Le/a/a/u;)Le/a/a/p;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Le/a/a/m;

    invoke-direct {v0, p1}, Le/a/a/m;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
