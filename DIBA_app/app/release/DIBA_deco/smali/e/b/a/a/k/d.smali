.class public Le/b/a/a/k/d;
.super Le/b/a/a/k/e$a;
.source ""


# static fields
.field private static f:Le/b/a/a/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/k/e<",
            "Le/b/a/a/k/d;",
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

    new-instance v0, Le/b/a/a/k/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Le/b/a/a/k/d;-><init>(FF)V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Le/b/a/a/k/e;->a(ILe/b/a/a/k/e$a;)Le/b/a/a/k/e;

    move-result-object v0

    sput-object v0, Le/b/a/a/k/d;->f:Le/b/a/a/k/e;

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

    iput p1, p0, Le/b/a/a/k/d;->d:F

    iput p2, p0, Le/b/a/a/k/d;->e:F

    return-void
.end method

.method public static b(FF)Le/b/a/a/k/d;
    .locals 1

    sget-object v0, Le/b/a/a/k/d;->f:Le/b/a/a/k/e;

    invoke-virtual {v0}, Le/b/a/a/k/e;->b()Le/b/a/a/k/e$a;

    move-result-object v0

    check-cast v0, Le/b/a/a/k/d;

    iput p0, v0, Le/b/a/a/k/d;->d:F

    iput p1, v0, Le/b/a/a/k/d;->e:F

    return-object v0
.end method

.method public static c(Le/b/a/a/k/d;)V
    .locals 1

    sget-object v0, Le/b/a/a/k/d;->f:Le/b/a/a/k/e;

    invoke-virtual {v0, p0}, Le/b/a/a/k/e;->c(Le/b/a/a/k/e$a;)V

    return-void
.end method


# virtual methods
.method protected a()Le/b/a/a/k/e$a;
    .locals 2

    new-instance v0, Le/b/a/a/k/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Le/b/a/a/k/d;-><init>(FF)V

    return-object v0
.end method
