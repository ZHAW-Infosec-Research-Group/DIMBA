.class Ld/g/e/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/e/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/e/j;->f(Ld/g/d/c/c$b;I)Ld/g/d/c/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/g/e/j$c<",
        "Ld/g/d/c/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ld/g/e/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld/g/d/c/c$c;

    invoke-virtual {p0, p1}, Ld/g/e/j$b;->c(Ld/g/d/c/c$c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ld/g/d/c/c$c;

    invoke-virtual {p0, p1}, Ld/g/e/j$b;->d(Ld/g/d/c/c$c;)Z

    move-result p1

    return p1
.end method

.method public c(Ld/g/d/c/c$c;)I
    .locals 0

    invoke-virtual {p1}, Ld/g/d/c/c$c;->e()I

    move-result p1

    return p1
.end method

.method public d(Ld/g/d/c/c$c;)Z
    .locals 0

    invoke-virtual {p1}, Ld/g/d/c/c$c;->f()Z

    move-result p1

    return p1
.end method
