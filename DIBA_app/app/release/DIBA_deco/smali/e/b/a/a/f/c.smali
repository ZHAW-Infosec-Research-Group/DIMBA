.class public Le/b/a/a/f/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:Le/b/a/a/c/i$a;

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(FFFFIILe/b/a/a/c/i$a;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Le/b/a/a/f/c;-><init>(FFFFILe/b/a/a/c/i$a;)V

    iput p6, p0, Le/b/a/a/f/c;->g:I

    return-void
.end method

.method public constructor <init>(FFFFILe/b/a/a/c/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Le/b/a/a/f/c;->a:F

    iput v0, p0, Le/b/a/a/f/c;->b:F

    const/4 v0, -0x1

    iput v0, p0, Le/b/a/a/f/c;->e:I

    iput v0, p0, Le/b/a/a/f/c;->g:I

    iput p1, p0, Le/b/a/a/f/c;->a:F

    iput p2, p0, Le/b/a/a/f/c;->b:F

    iput p3, p0, Le/b/a/a/f/c;->c:F

    iput p4, p0, Le/b/a/a/f/c;->d:F

    iput p5, p0, Le/b/a/a/f/c;->f:I

    iput-object p6, p0, Le/b/a/a/f/c;->h:Le/b/a/a/c/i$a;

    return-void
.end method


# virtual methods
.method public a(Le/b/a/a/f/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Le/b/a/a/f/c;->f:I

    iget v2, p1, Le/b/a/a/f/c;->f:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Le/b/a/a/f/c;->a:F

    iget v2, p1, Le/b/a/a/f/c;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Le/b/a/a/f/c;->g:I

    iget v2, p1, Le/b/a/a/f/c;->g:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Le/b/a/a/f/c;->e:I

    iget p1, p1, Le/b/a/a/f/c;->e:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b()Le/b/a/a/c/i$a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/f/c;->h:Le/b/a/a/c/i$a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->f:I

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->i:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->j:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->g:I

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->a:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->c:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->b:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Le/b/a/a/f/c;->d:F

    return v0
.end method

.method public k(FF)V
    .locals 0

    iput p1, p0, Le/b/a/a/f/c;->i:F

    iput p2, p0, Le/b/a/a/f/c;->j:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Highlight, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/f/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/f/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/f/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/f/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
