.class public final Le/c/b/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Le/c/b/w/d;

.field private b:Le/c/b/s;

.field private c:Le/c/b/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/c/b/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Le/c/b/w/d;->h:Le/c/b/w/d;

    iput-object v0, p0, Le/c/b/g;->a:Le/c/b/w/d;

    sget-object v0, Le/c/b/s;->b:Le/c/b/s;

    iput-object v0, p0, Le/c/b/g;->b:Le/c/b/s;

    sget-object v0, Le/c/b/d;->b:Le/c/b/d;

    iput-object v0, p0, Le/c/b/g;->c:Le/c/b/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/c/b/g;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/b/g;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/b/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/b/g;->g:Z

    const/4 v1, 0x2

    iput v1, p0, Le/c/b/g;->i:I

    iput v1, p0, Le/c/b/g;->j:I

    iput-boolean v0, p0, Le/c/b/g;->k:Z

    iput-boolean v0, p0, Le/c/b/g;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/c/b/g;->m:Z

    iput-boolean v0, p0, Le/c/b/g;->n:Z

    iput-boolean v0, p0, Le/c/b/g;->o:Z

    iput-boolean v0, p0, Le/c/b/g;->p:Z

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Le/c/b/u;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Le/c/b/a;

    invoke-direct {p2, p1}, Le/c/b/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Le/c/b/a;

    invoke-direct {p1, p2, p3}, Le/c/b/a;-><init>(II)V

    move-object p2, p1

    :goto_0
    const-class p1, Ljava/util/Date;

    invoke-static {p1}, Le/c/b/x/a;->a(Ljava/lang/Class;)Le/c/b/x/a;

    move-result-object p1

    invoke-static {p1, p2}, Le/c/b/w/k/k;->e(Le/c/b/x/a;Ljava/lang/Object;)Le/c/b/u;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Timestamp;

    invoke-static {p1}, Le/c/b/x/a;->a(Ljava/lang/Class;)Le/c/b/x/a;

    move-result-object p1

    invoke-static {p1, p2}, Le/c/b/w/k/k;->e(Le/c/b/x/a;Ljava/lang/Object;)Le/c/b/u;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p1, Ljava/sql/Date;

    invoke-static {p1}, Le/c/b/x/a;->a(Ljava/lang/Class;)Le/c/b/x/a;

    move-result-object p1

    invoke-static {p1, p2}, Le/c/b/w/k/k;->e(Le/c/b/x/a;Ljava/lang/Object;)Le/c/b/u;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Le/c/b/f;
    .locals 14

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Le/c/b/g;->e:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Le/c/b/g;->f:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Le/c/b/g;->h:Ljava/lang/String;

    iget v1, p0, Le/c/b/g;->i:I

    iget v2, p0, Le/c/b/g;->j:I

    invoke-direct {p0, v0, v1, v2, v12}, Le/c/b/g;->a(Ljava/lang/String;IILjava/util/List;)V

    new-instance v13, Le/c/b/f;

    iget-object v1, p0, Le/c/b/g;->a:Le/c/b/w/d;

    iget-object v2, p0, Le/c/b/g;->c:Le/c/b/e;

    iget-object v3, p0, Le/c/b/g;->d:Ljava/util/Map;

    iget-boolean v4, p0, Le/c/b/g;->g:Z

    iget-boolean v5, p0, Le/c/b/g;->k:Z

    iget-boolean v6, p0, Le/c/b/g;->o:Z

    iget-boolean v7, p0, Le/c/b/g;->m:Z

    iget-boolean v8, p0, Le/c/b/g;->n:Z

    iget-boolean v9, p0, Le/c/b/g;->p:Z

    iget-boolean v10, p0, Le/c/b/g;->l:Z

    iget-object v11, p0, Le/c/b/g;->b:Le/c/b/s;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Le/c/b/f;-><init>(Le/c/b/w/d;Le/c/b/e;Ljava/util/Map;ZZZZZZZLe/c/b/s;Ljava/util/List;)V

    return-object v13
.end method
