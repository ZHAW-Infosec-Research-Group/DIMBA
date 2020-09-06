.class final Le/c/b/w/k/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final b:Le/c/b/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/x/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Le/c/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/r<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Le/c/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Le/c/b/x/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/c/b/x/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Le/c/b/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/c/b/r;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Le/c/b/w/k/k$c;->e:Le/c/b/r;

    instance-of v0, p1, Le/c/b/j;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Le/c/b/j;

    :cond_1
    iput-object v1, p0, Le/c/b/w/k/k$c;->f:Le/c/b/j;

    iget-object p1, p0, Le/c/b/w/k/k$c;->e:Le/c/b/r;

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Le/c/b/w/a;->a(Z)V

    iput-object p2, p0, Le/c/b/w/k/k$c;->b:Le/c/b/x/a;

    iput-boolean p3, p0, Le/c/b/w/k/k$c;->c:Z

    iput-object p4, p0, Le/c/b/w/k/k$c;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/f;",
            "Le/c/b/x/a<",
            "TT;>;)",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/k/k$c;->b:Le/c/b/x/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Le/c/b/x/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/c/b/w/k/k$c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/k$c;->b:Le/c/b/x/a;

    invoke-virtual {v0}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Le/c/b/x/a;->c()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Le/c/b/w/k/k$c;->d:Ljava/lang/Class;

    invoke-virtual {p2}, Le/c/b/x/a;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Le/c/b/w/k/k;

    iget-object v2, p0, Le/c/b/w/k/k$c;->e:Le/c/b/r;

    iget-object v3, p0, Le/c/b/w/k/k$c;->f:Le/c/b/j;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Le/c/b/w/k/k;-><init>(Le/c/b/r;Le/c/b/j;Le/c/b/f;Le/c/b/x/a;Le/c/b/u;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
