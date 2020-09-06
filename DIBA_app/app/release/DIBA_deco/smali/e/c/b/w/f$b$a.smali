.class Le/c/b/w/f$b$a;
.super Le/c/b/w/f$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/f$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/w/f<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/c/b/w/f$b;)V
    .locals 0

    iget-object p1, p1, Le/c/b/w/f$b;->b:Le/c/b/w/f;

    invoke-direct {p0, p1}, Le/c/b/w/f$d;-><init>(Le/c/b/w/f;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/w/f$d;->a()Le/c/b/w/f$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le/c/b/w/f$b$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
