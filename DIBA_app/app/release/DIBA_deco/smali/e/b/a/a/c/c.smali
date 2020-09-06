.class public Le/b/a/a/c/c;
.super Le/b/a/a/c/b;
.source ""


# instance fields
.field private g:Ljava/lang/String;

.field private h:Le/b/a/a/k/d;

.field private i:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/b/a/a/c/b;-><init>()V

    const-string v0, "Description Label"

    iput-object v0, p0, Le/b/a/a/c/c;->g:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Le/b/a/a/c/c;->i:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    iput v0, p0, Le/b/a/a/c/b;->e:F

    return-void
.end method


# virtual methods
.method public i()Le/b/a/a/k/d;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/c;->h:Le/b/a/a/k/d;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/c;->i:Landroid/graphics/Paint$Align;

    return-object v0
.end method
