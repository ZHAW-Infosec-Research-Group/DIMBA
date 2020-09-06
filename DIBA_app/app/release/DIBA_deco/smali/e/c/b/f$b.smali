.class Le/c/b/f$b;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/f;->d(Z)Le/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/c/b/f;)V
    .locals 0

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Le/c/b/f$b;->d(Le/c/b/y/a;Ljava/lang/Number;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Le/c/b/f;->c(D)V

    invoke-virtual {p1, p2}, Le/c/b/y/a;->U(Ljava/lang/Number;)Le/c/b/y/a;

    return-void
.end method
