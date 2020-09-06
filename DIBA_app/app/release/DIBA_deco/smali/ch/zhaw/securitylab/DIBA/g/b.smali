.class public Lch/zhaw/securitylab/DIBA/g/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lch/zhaw/securitylab/DIBA/g/d/g;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->d:Z

    return-void
.end method

.method public static b()Lch/zhaw/securitylab/DIBA/g/b;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/b;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->a:Lch/zhaw/securitylab/DIBA/g/d/g;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/g/a;-><init>(Lch/zhaw/securitylab/DIBA/g/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Build incomplete"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Lch/zhaw/securitylab/DIBA/d/a/a;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lch/zhaw/securitylab/DIBA/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public synthetic f()V
    .locals 5

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/c;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/g/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/g/b;->a:Lch/zhaw/securitylab/DIBA/g/d/g;

    new-instance v4, Lch/zhaw/securitylab/DIBA/g/d/h;

    invoke-direct {v4}, Lch/zhaw/securitylab/DIBA/g/d/h;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lch/zhaw/securitylab/DIBA/g/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lch/zhaw/securitylab/DIBA/g/c;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/g/b;->c:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/g/b;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/g/b;->a:Lch/zhaw/securitylab/DIBA/g/d/g;

    new-instance v4, Lch/zhaw/securitylab/DIBA/g/d/h;

    invoke-direct {v4}, Lch/zhaw/securitylab/DIBA/g/d/h;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lch/zhaw/securitylab/DIBA/g/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Le/a/a/p$b;Le/a/a/p$a;)V

    :goto_0
    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->i()Le/a/a/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/a/a/o;->a(Le/a/a/n;)Le/a/a/n;

    return-void
.end method

.method public g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/b;->a:Lch/zhaw/securitylab/DIBA/g/d/g;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/b;->c:Ljava/lang/String;

    return-object p0
.end method
