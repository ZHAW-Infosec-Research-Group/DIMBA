.class public final Le/c/b/w/k/e;
.super Le/c/b/y/a;
.source ""


# static fields
.field private static final p:Ljava/io/Writer;

.field private static final q:Le/c/b/p;


# instance fields
.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Le/c/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/b/w/k/e$a;

    invoke-direct {v0}, Le/c/b/w/k/e$a;-><init>()V

    sput-object v0, Le/c/b/w/k/e;->p:Ljava/io/Writer;

    new-instance v0, Le/c/b/p;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Le/c/b/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/c/b/w/k/e;->q:Le/c/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Le/c/b/w/k/e;->p:Ljava/io/Writer;

    invoke-direct {p0, v0}, Le/c/b/y/a;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    sget-object v0, Le/c/b/m;->a:Le/c/b/m;

    iput-object v0, p0, Le/c/b/w/k/e;->o:Le/c/b/k;

    return-void
.end method

.method private Z()Le/c/b/k;
    .locals 2

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/k;

    return-object v0
.end method

.method private a0(Le/c/b/k;)V
    .locals 2

    iget-object v0, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/c/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/c/b/y/a;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Le/c/b/w/k/e;->Z()Le/c/b/k;

    move-result-object v0

    check-cast v0, Le/c/b/n;

    iget-object v1, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Le/c/b/n;->h(Ljava/lang/String;Le/c/b/k;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Le/c/b/w/k/e;->o:Le/c/b/k;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Le/c/b/w/k/e;->Z()Le/c/b/k;

    move-result-object v0

    instance-of v1, v0, Le/c/b/i;

    if-eqz v1, :cond_4

    check-cast v0, Le/c/b/i;

    invoke-virtual {v0, p1}, Le/c/b/i;->h(Le/c/b/k;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public A()Le/c/b/y/a;
    .locals 2

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Le/c/b/w/k/e;->Z()Le/c/b/k;

    move-result-object v0

    instance-of v0, v0, Le/c/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public C()Le/c/b/y/a;
    .locals 2

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Le/c/b/w/k/e;->Z()Le/c/b/k;

    move-result-object v0

    instance-of v0, v0, Le/c/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public G(Ljava/lang/String;)Le/c/b/y/a;
    .locals 1

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Le/c/b/w/k/e;->Z()Le/c/b/k;

    move-result-object v0

    instance-of v0, v0, Le/c/b/n;

    if-eqz v0, :cond_0

    iput-object p1, p0, Le/c/b/w/k/e;->n:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public I()Le/c/b/y/a;
    .locals 1

    sget-object v0, Le/c/b/m;->a:Le/c/b/m;

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public S(J)Le/c/b/y/a;
    .locals 1

    new-instance v0, Le/c/b/p;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Le/c/b/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public T(Ljava/lang/Boolean;)Le/c/b/y/a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Le/c/b/w/k/e;->I()Le/c/b/y/a;

    return-object p0

    :cond_0
    new-instance v0, Le/c/b/p;

    invoke-direct {v0, p1}, Le/c/b/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public U(Ljava/lang/Number;)Le/c/b/y/a;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Le/c/b/w/k/e;->I()Le/c/b/y/a;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Le/c/b/y/a;->F()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Le/c/b/p;

    invoke-direct {v0, p1}, Le/c/b/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public V(Ljava/lang/String;)Le/c/b/y/a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Le/c/b/w/k/e;->I()Le/c/b/y/a;

    return-object p0

    :cond_0
    new-instance v0, Le/c/b/p;

    invoke-direct {v0, p1}, Le/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public W(Z)Le/c/b/y/a;
    .locals 1

    new-instance v0, Le/c/b/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Le/c/b/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    return-object p0
.end method

.method public Y()Le/c/b/k;
    .locals 3

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/e;->o:Le/c/b/k;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    sget-object v1, Le/c/b/w/k/e;->q:Le/c/b/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public o()Le/c/b/y/a;
    .locals 2

    new-instance v0, Le/c/b/i;

    invoke-direct {v0}, Le/c/b/i;-><init>()V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    iget-object v1, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public r()Le/c/b/y/a;
    .locals 2

    new-instance v0, Le/c/b/n;

    invoke-direct {v0}, Le/c/b/n;-><init>()V

    invoke-direct {p0, v0}, Le/c/b/w/k/e;->a0(Le/c/b/k;)V

    iget-object v1, p0, Le/c/b/w/k/e;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
