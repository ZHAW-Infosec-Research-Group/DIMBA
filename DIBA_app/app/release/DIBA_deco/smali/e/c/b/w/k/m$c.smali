.class final Le/c/b/w/k/m$c;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/m$c;->d(Le/c/b/y/a;Ljava/lang/Number;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Le/c/b/y/a;->U(Ljava/lang/Number;)Le/c/b/y/a;

    return-void
.end method
