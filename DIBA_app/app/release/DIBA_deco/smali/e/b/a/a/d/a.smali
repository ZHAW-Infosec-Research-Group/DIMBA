.class public Le/b/a/a/d/a;
.super Le/b/a/a/d/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/a/d/c<",
        "Le/b/a/a/g/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/b/a/a/d/c;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Le/b/a/a/d/a;->j:F

    return-void
.end method


# virtual methods
.method public v()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/a;->j:F

    return v0
.end method
