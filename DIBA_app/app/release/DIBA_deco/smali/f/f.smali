.class Lf/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lf/s/a/a;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/s/a/a<",
            "+TT;>;)",
            "Lf/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf/i;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lf/i;-><init>(Lf/s/a/a;Ljava/lang/Object;ILf/s/b/d;)V

    return-object v0
.end method
