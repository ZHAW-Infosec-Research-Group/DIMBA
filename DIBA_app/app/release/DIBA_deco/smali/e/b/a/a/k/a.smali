.class public final Le/b/a/a/k/a;
.super Le/b/a/a/k/e$a;
.source ""


# static fields
.field private static f:Le/b/a/a/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/k/e<",
            "Le/b/a/a/k/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:F

.field public e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/b/a/a/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Le/b/a/a/k/a;-><init>(FF)V

    const/16 v1, 0x100

    invoke-static {v1, v0}, Le/b/a/a/k/e;->a(ILe/b/a/a/k/e$a;)Le/b/a/a/k/e;

    move-result-object v0

    sput-object v0, Le/b/a/a/k/a;->f:Le/b/a/a/k/e;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Le/b/a/a/k/e;->g(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/b/a/a/k/e$a;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Le/b/a/a/k/e$a;-><init>()V

    iput p1, p0, Le/b/a/a/k/a;->d:F

    iput p2, p0, Le/b/a/a/k/a;->e:F

    return-void
.end method

.method public static b(FF)Le/b/a/a/k/a;
    .locals 1

    sget-object v0, Le/b/a/a/k/a;->f:Le/b/a/a/k/e;

    invoke-virtual {v0}, Le/b/a/a/k/e;->b()Le/b/a/a/k/e$a;

    move-result-object v0

    check-cast v0, Le/b/a/a/k/a;

    iput p0, v0, Le/b/a/a/k/a;->d:F

    iput p1, v0, Le/b/a/a/k/a;->e:F

    return-object v0
.end method

.method public static c(Le/b/a/a/k/a;)V
    .locals 1

    sget-object v0, Le/b/a/a/k/a;->f:Le/b/a/a/k/e;

    invoke-virtual {v0, p0}, Le/b/a/a/k/e;->c(Le/b/a/a/k/e$a;)V

    return-void
.end method


# virtual methods
.method protected a()Le/b/a/a/k/e$a;
    .locals 2

    new-instance v0, Le/b/a/a/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Le/b/a/a/k/a;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Le/b/a/a/k/a;

    if-eqz v2, :cond_2

    check-cast p1, Le/b/a/a/k/a;

    iget v2, p0, Le/b/a/a/k/a;->d:F

    iget v3, p1, Le/b/a/a/k/a;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Le/b/a/a/k/a;->e:F

    iget p1, p1, Le/b/a/a/k/a;->e:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/b/a/a/k/a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Le/b/a/a/k/a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Le/b/a/a/k/a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/k/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
