.class public Lch/zhaw/securitylab/DIBA/g/c;
.super Le/a/a/w/k;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/c;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/a/w/k;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V

    return-void
.end method

.method private static N()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":8443"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public m()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
