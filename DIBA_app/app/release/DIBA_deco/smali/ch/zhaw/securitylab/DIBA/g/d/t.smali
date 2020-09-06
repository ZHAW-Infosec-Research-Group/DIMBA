.class public Lch/zhaw/securitylab/DIBA/g/d/t;
.super Lch/zhaw/securitylab/DIBA/g/d/j;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/g/d/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/t;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/g/d/j;->b(Lorg/json/JSONObject;)V

    const-string p1, "Successfully saved and sent bug-report."

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    return-void
.end method
