.class Le/c/b/w/f$c$a;
.super Le/c/b/w/f$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/f$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/w/f<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/c/b/w/f$c;)V
    .locals 0

    iget-object p1, p1, Le/c/b/w/f$c;->b:Le/c/b/w/f;

    invoke-direct {p0, p1}, Le/c/b/w/f$d;-><init>(Le/c/b/w/f;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/w/f$d;->a()Le/c/b/w/f$e;

    move-result-object v0

    iget-object v0, v0, Le/c/b/w/f$e;->g:Ljava/lang/Object;

    return-object v0
.end method
