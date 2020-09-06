.class public abstract Le/c/b/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/c/b/t$a;

    invoke-direct {v0, p0}, Le/c/b/t$a;-><init>(Le/c/b/t;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Le/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Le/c/b/k;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Le/c/b/w/k/e;

    invoke-direct {v0}, Le/c/b/w/k/e;-><init>()V

    invoke-virtual {p0, v0, p1}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    invoke-virtual {v0}, Le/c/b/w/k/e;->Y()Le/c/b/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Le/c/b/l;

    invoke-direct {v0, p1}, Le/c/b/l;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract c(Le/c/b/y/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "TT;)V"
        }
    .end annotation
.end method
