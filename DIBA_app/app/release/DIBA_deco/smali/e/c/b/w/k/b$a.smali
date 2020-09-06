.class final Le/c/b/w/k/b$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/t<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/b/f;Ljava/lang/reflect/Type;Le/c/b/t;Le/c/b/w/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/f;",
            "Ljava/lang/reflect/Type;",
            "Le/c/b/t<",
            "TE;>;",
            "Le/c/b/w/g<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    new-instance p4, Le/c/b/w/k/l;

    invoke-direct {p4, p1, p3, p2}, Le/c/b/w/k/l;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V

    iput-object p4, p0, Le/c/b/w/k/b$a;->a:Le/c/b/t;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/b$a;->d(Le/c/b/y/a;Ljava/util/Collection;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-virtual {p1}, Le/c/b/y/a;->o()Le/c/b/y/a;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/c/b/w/k/b$a;->a:Le/c/b/t;

    invoke-virtual {v1, p1, v0}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/c/b/y/a;->A()Le/c/b/y/a;

    return-void
.end method
