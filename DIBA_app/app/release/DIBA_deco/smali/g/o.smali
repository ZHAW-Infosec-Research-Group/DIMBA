.class final Lg/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/x;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/x;",
            ")",
            "Ljava/util/List<",
            "Lg/n;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lf/o/j;->f()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg/x;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/x;",
            "Ljava/util/List<",
            "Lg/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookies"

    invoke-static {p2, p1}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
