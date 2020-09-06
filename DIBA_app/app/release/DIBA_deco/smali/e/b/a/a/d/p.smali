.class public abstract Le/b/a/a/d/p;
.super Le/b/a/a/d/d;
.source ""

# interfaces
.implements Le/b/a/a/g/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/b/a/a/d/l;",
        ">",
        "Le/b/a/a/d/d<",
        "TT;>;",
        "Le/b/a/a/g/b/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected u:Z

.field protected v:Z

.field protected w:F

.field protected x:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Le/b/a/a/d/d;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/b/a/a/d/p;->u:Z

    iput-boolean p1, p0, Le/b/a/a/d/p;->v:Z

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Le/b/a/a/d/p;->w:F

    const/4 p2, 0x0

    iput-object p2, p0, Le/b/a/a/d/p;->x:Landroid/graphics/DashPathEffect;

    invoke-static {p1}, Le/b/a/a/k/h;->e(F)F

    move-result p1

    iput p1, p0, Le/b/a/a/d/p;->w:F

    return-void
.end method


# virtual methods
.method public S()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/p;->u:Z

    return v0
.end method

.method public U()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/p;->x:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public i0()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/d/p;->v:Z

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/p;->w:F

    return v0
.end method
