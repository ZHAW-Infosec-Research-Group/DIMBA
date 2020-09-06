.class public Le/b/a/a/h/a;
.super Le/b/a/a/h/b;
.source ""


# static fields
.field private static j:Le/b/a/a/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/a/k/e<",
            "Le/b/a/a/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Le/b/a/a/h/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/b/a/a/h/a;-><init>(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)V

    const/4 v0, 0x2

    invoke-static {v0, v6}, Le/b/a/a/k/e;->a(ILe/b/a/a/k/e$a;)Le/b/a/a/k/e;

    move-result-object v0

    sput-object v0, Le/b/a/a/h/a;->j:Le/b/a/a/k/e;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Le/b/a/a/k/e;->g(F)V

    return-void
.end method

.method public constructor <init>(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Le/b/a/a/h/b;-><init>(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)V

    return-void
.end method

.method public static b(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)Le/b/a/a/h/a;
    .locals 1

    sget-object v0, Le/b/a/a/h/a;->j:Le/b/a/a/k/e;

    invoke-virtual {v0}, Le/b/a/a/k/e;->b()Le/b/a/a/k/e$a;

    move-result-object v0

    check-cast v0, Le/b/a/a/h/a;

    iput-object p0, v0, Le/b/a/a/h/b;->e:Le/b/a/a/k/i;

    iput p1, v0, Le/b/a/a/h/b;->f:F

    iput p2, v0, Le/b/a/a/h/b;->g:F

    iput-object p3, v0, Le/b/a/a/h/b;->h:Le/b/a/a/k/f;

    iput-object p4, v0, Le/b/a/a/h/b;->i:Landroid/view/View;

    return-object v0
.end method

.method public static c(Le/b/a/a/h/a;)V
    .locals 1

    sget-object v0, Le/b/a/a/h/a;->j:Le/b/a/a/k/e;

    invoke-virtual {v0, p0}, Le/b/a/a/k/e;->c(Le/b/a/a/k/e$a;)V

    return-void
.end method


# virtual methods
.method protected a()Le/b/a/a/k/e$a;
    .locals 7

    new-instance v6, Le/b/a/a/h/a;

    iget-object v1, p0, Le/b/a/a/h/b;->e:Le/b/a/a/k/i;

    iget v2, p0, Le/b/a/a/h/b;->f:F

    iget v3, p0, Le/b/a/a/h/b;->g:F

    iget-object v4, p0, Le/b/a/a/h/b;->h:Le/b/a/a/k/f;

    iget-object v5, p0, Le/b/a/a/h/b;->i:Landroid/view/View;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/b/a/a/h/a;-><init>(Le/b/a/a/k/i;FFLe/b/a/a/k/f;Landroid/view/View;)V

    return-object v6
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Le/b/a/a/h/b;->d:[F

    iget v1, p0, Le/b/a/a/h/b;->f:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Le/b/a/a/h/b;->g:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Le/b/a/a/h/b;->h:Le/b/a/a/k/f;

    invoke-virtual {v1, v0}, Le/b/a/a/k/f;->i([F)V

    iget-object v0, p0, Le/b/a/a/h/b;->e:Le/b/a/a/k/i;

    iget-object v1, p0, Le/b/a/a/h/b;->d:[F

    iget-object v2, p0, Le/b/a/a/h/b;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Le/b/a/a/k/i;->e([FLandroid/view/View;)V

    invoke-static {p0}, Le/b/a/a/h/a;->c(Le/b/a/a/h/a;)V

    return-void
.end method
