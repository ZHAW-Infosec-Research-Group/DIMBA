.class public final Le/c/b/w/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/w/i$a;
    }
.end annotation


# direct methods
.method public static a(Le/c/b/k;Le/c/b/y/a;)V
    .locals 1

    sget-object v0, Le/c/b/w/k/m;->X:Le/c/b/t;

    invoke-virtual {v0, p1, p0}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Le/c/b/w/i$a;

    invoke-direct {v0, p0}, Le/c/b/w/i$a;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
