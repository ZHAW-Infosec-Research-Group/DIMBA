.class public Le/b/a/a/d/g;
.super Le/b/a/a/d/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/a/d/c<",
        "Le/b/a/a/g/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/b/a/a/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/a/g/b/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/b/a/a/d/c;-><init>(Ljava/util/List;)V

    return-void
.end method
