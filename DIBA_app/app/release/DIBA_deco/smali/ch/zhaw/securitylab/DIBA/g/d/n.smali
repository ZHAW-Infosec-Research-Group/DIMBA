.class public Lch/zhaw/securitylab/DIBA/g/d/n;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# instance fields
.field private a:Lch/zhaw/securitylab/DIBA/h/c;


# direct methods
.method public constructor <init>(Lch/zhaw/securitylab/DIBA/h/c;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/g/d/n;->a:Lch/zhaw/securitylab/DIBA/h/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/n;->b(Lorg/json/JSONObject;)V

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
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/g/d/n;->a:Lch/zhaw/securitylab/DIBA/h/c;

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/h/c;->i(Ljava/lang/String;)V

    return-void
.end method
