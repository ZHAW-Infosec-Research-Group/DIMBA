.class abstract Le/c/b/w/f$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Le/c/b/w/f$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/w/f$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Le/c/b/w/f$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/w/f$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Le/c/b/w/f;


# direct methods
.method constructor <init>(Le/c/b/w/f;)V
    .locals 1

    iput-object p1, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    iget-object v0, p1, Le/c/b/w/f;->f:Le/c/b/w/f$e;

    iget-object v0, v0, Le/c/b/w/f$e;->e:Le/c/b/w/f$e;

    iput-object v0, p0, Le/c/b/w/f$d;->b:Le/c/b/w/f$e;

    const/4 v0, 0x0

    iput-object v0, p0, Le/c/b/w/f$d;->c:Le/c/b/w/f$e;

    iget p1, p1, Le/c/b/w/f;->e:I

    iput p1, p0, Le/c/b/w/f$d;->d:I

    return-void
.end method


# virtual methods
.method final a()Le/c/b/w/f$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/w/f$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/f$d;->b:Le/c/b/w/f$e;

    iget-object v1, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    iget-object v2, v1, Le/c/b/w/f;->f:Le/c/b/w/f$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Le/c/b/w/f;->e:I

    iget v2, p0, Le/c/b/w/f$d;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Le/c/b/w/f$e;->e:Le/c/b/w/f$e;

    iput-object v1, p0, Le/c/b/w/f$d;->b:Le/c/b/w/f$e;

    iput-object v0, p0, Le/c/b/w/f$d;->c:Le/c/b/w/f$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Le/c/b/w/f$d;->b:Le/c/b/w/f$e;

    iget-object v1, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    iget-object v1, v1, Le/c/b/w/f;->f:Le/c/b/w/f$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Le/c/b/w/f$d;->c:Le/c/b/w/f$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Le/c/b/w/f;->f(Le/c/b/w/f$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Le/c/b/w/f$d;->c:Le/c/b/w/f$e;

    iget-object v0, p0, Le/c/b/w/f$d;->e:Le/c/b/w/f;

    iget v0, v0, Le/c/b/w/f;->e:I

    iput v0, p0, Le/c/b/w/f$d;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
