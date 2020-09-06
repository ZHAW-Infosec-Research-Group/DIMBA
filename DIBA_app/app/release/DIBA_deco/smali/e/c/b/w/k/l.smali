.class final Le/c/b/w/k/l;
.super Le/c/b/t;
.source ""


# annotations
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
.field private final a:Le/c/b/f;

.field private final b:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/f;",
            "Le/c/b/t<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    iput-object p1, p0, Le/c/b/w/k/l;->a:Le/c/b/f;

    iput-object p2, p0, Le/c/b/w/k/l;->b:Le/c/b/t;

    iput-object p3, p0, Le/c/b/w/k/l;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
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

    iget-object v0, p0, Le/c/b/w/k/l;->b:Le/c/b/t;

    iget-object v1, p0, Le/c/b/w/k/l;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Le/c/b/w/k/l;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Le/c/b/w/k/l;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Le/c/b/w/k/l;->a:Le/c/b/f;

    invoke-static {v1}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object v0

    instance-of v1, v0, Le/c/b/w/k/h$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/c/b/w/k/l;->b:Le/c/b/t;

    instance-of v2, v1, Le/c/b/w/k/h$b;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
