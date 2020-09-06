.class public Le/b/a/a/d/q;
.super Le/b/a/a/d/l;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;


# virtual methods
.method public e()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Le/b/a/a/d/l;->e()F

    move-result v0

    return v0
.end method

.method public f(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Le/b/a/a/d/l;->f(F)V

    const-string p1, "DEPRECATED"

    const-string v0, "Pie entries do not have x values"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/q;->e:Ljava/lang/String;

    return-object v0
.end method
