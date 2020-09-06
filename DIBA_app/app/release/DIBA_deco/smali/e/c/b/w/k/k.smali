.class public final Le/c/b/w/k/k;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/w/k/k$b;,
        Le/c/b/w/k/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Le/c/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Le/c/b/f;

.field private final c:Le/c/b/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/x/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Le/c/b/u;

.field private final e:Le/c/b/w/k/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/w/k/k<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private f:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/b/r;Le/c/b/j;Le/c/b/f;Le/c/b/x/a;Le/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/r<",
            "TT;>;",
            "Le/c/b/j<",
            "TT;>;",
            "Le/c/b/f;",
            "Le/c/b/x/a<",
            "TT;>;",
            "Le/c/b/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    new-instance p2, Le/c/b/w/k/k$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Le/c/b/w/k/k$b;-><init>(Le/c/b/w/k/k;Le/c/b/w/k/k$a;)V

    iput-object p2, p0, Le/c/b/w/k/k;->e:Le/c/b/w/k/k$b;

    iput-object p1, p0, Le/c/b/w/k/k;->a:Le/c/b/r;

    iput-object p3, p0, Le/c/b/w/k/k;->b:Le/c/b/f;

    iput-object p4, p0, Le/c/b/w/k/k;->c:Le/c/b/x/a;

    iput-object p5, p0, Le/c/b/w/k/k;->d:Le/c/b/u;

    return-void
.end method

.method private d()Le/c/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/k/k;->f:Le/c/b/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/w/k/k;->b:Le/c/b/f;

    iget-object v1, p0, Le/c/b/w/k/k;->d:Le/c/b/u;

    iget-object v2, p0, Le/c/b/w/k/k;->c:Le/c/b/x/a;

    invoke-virtual {v0, v1, v2}, Le/c/b/f;->h(Le/c/b/u;Le/c/b/x/a;)Le/c/b/t;

    move-result-object v0

    iput-object v0, p0, Le/c/b/w/k/k;->f:Le/c/b/t;

    :goto_0
    return-object v0
.end method

.method public static e(Le/c/b/x/a;Ljava/lang/Object;)Le/c/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/x/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Le/c/b/u;"
        }
    .end annotation

    new-instance v0, Le/c/b/w/k/k$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Le/c/b/w/k/k$c;-><init>(Ljava/lang/Object;Le/c/b/x/a;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/k/k;->a:Le/c/b/r;

    if-nez v0, :cond_0

    invoke-direct {p0}, Le/c/b/w/k/k;->d()Le/c/b/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_1
    iget-object v1, p0, Le/c/b/w/k/k;->c:Le/c/b/x/a;

    invoke-virtual {v1}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Le/c/b/w/k/k;->e:Le/c/b/w/k/k$b;

    invoke-interface {v0, p2, v1, v2}, Le/c/b/r;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/b/q;)Le/c/b/k;

    move-result-object p2

    invoke-static {p2, p1}, Le/c/b/w/i;->a(Le/c/b/k;Le/c/b/y/a;)V

    return-void
.end method
