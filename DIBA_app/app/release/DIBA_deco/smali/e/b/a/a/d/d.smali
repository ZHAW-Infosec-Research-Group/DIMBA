.class public abstract Le/b/a/a/d/d;
.super Le/b/a/a/d/k;
.source ""

# interfaces
.implements Le/b/a/a/g/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/a/a/d/l;",
        ">",
        "Le/b/a/a/d/k<",
        "TT;>;",
        "Le/b/a/a/g/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected t:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Le/b/a/a/d/k;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0xff

    const/16 p2, 0xbb

    const/16 v0, 0x73

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Le/b/a/a/d/d;->t:I

    return-void
.end method


# virtual methods
.method public y()I
    .locals 1

    iget v0, p0, Le/b/a/a/d/d;->t:I

    return v0
.end method
