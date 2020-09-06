.class final Le/c/b/w/f$c;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Le/c/b/w/f;


# direct methods
.method constructor <init>(Le/c/b/w/f;)V
    .locals 0

    iput-object p1, p0, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    invoke-virtual {v0}, Le/c/b/w/f;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    invoke-virtual {v0, p1}, Le/c/b/w/f;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Le/c/b/w/f$c$a;

    invoke-direct {v0, p0}, Le/c/b/w/f$c$a;-><init>(Le/c/b/w/f$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    invoke-virtual {v0, p1}, Le/c/b/w/f;->g(Ljava/lang/Object;)Le/c/b/w/f$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    iget v0, v0, Le/c/b/w/f;->d:I

    return v0
.end method
