.class public Le/b/a/a/c/h;
.super Le/b/a/a/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/c/h$a;
    }
.end annotation


# instance fields
.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field protected M:F

.field private N:Z

.field private O:Le/b/a/a/c/h$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/b/a/a/c/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Le/b/a/a/c/h;->K:I

    iput v0, p0, Le/b/a/a/c/h;->L:I

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/c/h;->M:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/b/a/a/c/h;->N:Z

    sget-object v0, Le/b/a/a/c/h$a;->b:Le/b/a/a/c/h$a;

    iput-object v0, p0, Le/b/a/a/c/h;->O:Le/b/a/a/c/h$a;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Le/b/a/a/k/h;->e(F)F

    move-result v0

    iput v0, p0, Le/b/a/a/c/b;->c:F

    return-void
.end method


# virtual methods
.method public I()F
    .locals 1

    iget v0, p0, Le/b/a/a/c/h;->M:F

    return v0
.end method

.method public J()Le/b/a/a/c/h$a;
    .locals 1

    iget-object v0, p0, Le/b/a/a/c/h;->O:Le/b/a/a/c/h$a;

    return-object v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Le/b/a/a/c/h;->N:Z

    return v0
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Le/b/a/a/c/h;->N:Z

    return-void
.end method

.method public M(Le/b/a/a/c/h$a;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/c/h;->O:Le/b/a/a/c/h$a;

    return-void
.end method
