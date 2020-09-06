.class public final Le/c/b/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/f$g;
    }
.end annotation


# static fields
.field private static final j:Le/c/b/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/x/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Le/c/b/x/a<",
            "*>;",
            "Le/c/b/f$g<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/b/x/a<",
            "*>;",
            "Le/c/b/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/c/b/w/c;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Le/c/b/w/k/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/f$a;

    invoke-direct {v0}, Le/c/b/f$a;-><init>()V

    sput-object v0, Le/c/b/f;->j:Le/c/b/x/a;

    return-void
.end method

.method constructor <init>(Le/c/b/w/d;Le/c/b/e;Ljava/util/Map;ZZZZZZZLe/c/b/s;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/w/d;",
            "Le/c/b/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/c/b/h<",
            "*>;>;ZZZZZZZ",
            "Le/c/b/s;",
            "Ljava/util/List<",
            "Le/c/b/u;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/lang/ThreadLocal;

    invoke-direct {p9}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p9, p0, Le/c/b/f;->a:Ljava/lang/ThreadLocal;

    new-instance p9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p9, p0, Le/c/b/f;->b:Ljava/util/Map;

    new-instance p9, Le/c/b/w/c;

    invoke-direct {p9, p3}, Le/c/b/w/c;-><init>(Ljava/util/Map;)V

    iput-object p9, p0, Le/c/b/f;->d:Le/c/b/w/c;

    iput-boolean p4, p0, Le/c/b/f;->e:Z

    iput-boolean p6, p0, Le/c/b/f;->g:Z

    iput-boolean p7, p0, Le/c/b/f;->f:Z

    iput-boolean p8, p0, Le/c/b/f;->h:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Le/c/b/w/k/m;->Y:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/g;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Le/c/b/w/k/m;->D:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->m:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->g:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->i:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->k:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p11}, Le/c/b/f;->i(Le/c/b/s;)Le/c/b/t;

    move-result-object p4

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-static {p6, p7, p4}, Le/c/b/w/k/m;->b(Ljava/lang/Class;Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Double;

    invoke-direct {p0, p10}, Le/c/b/f;->d(Z)Le/c/b/t;

    move-result-object p8

    invoke-static {p6, p7, p8}, Le/c/b/w/k/m;->b(Ljava/lang/Class;Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Float;

    invoke-direct {p0, p10}, Le/c/b/f;->e(Z)Le/c/b/t;

    move-result-object p8

    invoke-static {p6, p7, p8}, Le/c/b/w/k/m;->b(Ljava/lang/Class;Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Le/c/b/w/k/m;->x:Le/c/b/u;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Le/c/b/w/k/m;->o:Le/c/b/u;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p6, Le/c/b/w/k/m;->q:Le/c/b/u;

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p4}, Le/c/b/f;->a(Le/c/b/t;)Le/c/b/t;

    move-result-object p7

    invoke-static {p6, p7}, Le/c/b/w/k/m;->a(Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p4}, Le/c/b/f;->b(Le/c/b/t;)Le/c/b/t;

    move-result-object p4

    invoke-static {p6, p4}, Le/c/b/w/k/m;->a(Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->s:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->z:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->F:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->H:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Le/c/b/w/k/m;->B:Le/c/b/t;

    invoke-static {p4, p6}, Le/c/b/w/k/m;->a(Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Le/c/b/w/k/m;->C:Le/c/b/t;

    invoke-static {p4, p6}, Le/c/b/w/k/m;->a(Ljava/lang/Class;Le/c/b/t;)Le/c/b/u;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->J:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->L:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->P:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->R:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->W:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->N:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->d:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/c;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->U:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/j;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/i;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->S:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/a;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->b:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Le/c/b/w/k/b;

    iget-object p6, p0, Le/c/b/f;->d:Le/c/b/w/c;

    invoke-direct {p4, p6}, Le/c/b/w/k/b;-><init>(Le/c/b/w/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Le/c/b/w/k/f;

    iget-object p6, p0, Le/c/b/f;->d:Le/c/b/w/c;

    invoke-direct {p4, p6, p5}, Le/c/b/w/k/f;-><init>(Le/c/b/w/c;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Le/c/b/w/k/d;

    iget-object p5, p0, Le/c/b/f;->d:Le/c/b/w/c;

    invoke-direct {p4, p5}, Le/c/b/w/k/d;-><init>(Le/c/b/w/c;)V

    iput-object p4, p0, Le/c/b/f;->i:Le/c/b/w/k/d;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Le/c/b/w/k/m;->Z:Le/c/b/u;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Le/c/b/w/k/h;

    iget-object p5, p0, Le/c/b/f;->d:Le/c/b/w/c;

    iget-object p6, p0, Le/c/b/f;->i:Le/c/b/w/k/d;

    invoke-direct {p4, p5, p2, p1, p6}, Le/c/b/w/k/h;-><init>(Le/c/b/w/c;Le/c/b/e;Le/c/b/w/d;Le/c/b/w/k/d;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/c/b/f;->c:Ljava/util/List;

    return-void
.end method

.method private static a(Le/c/b/t;)Le/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Le/c/b/t<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Le/c/b/f$e;

    invoke-direct {v0, p0}, Le/c/b/f$e;-><init>(Le/c/b/t;)V

    invoke-virtual {v0}, Le/c/b/t;->a()Le/c/b/t;

    move-result-object p0

    return-object p0
.end method

.method private static b(Le/c/b/t;)Le/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Le/c/b/t<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Le/c/b/f$f;

    invoke-direct {v0, p0}, Le/c/b/f$f;-><init>(Le/c/b/t;)V

    invoke-virtual {v0}, Le/c/b/t;->a()Le/c/b/t;

    move-result-object p0

    return-object p0
.end method

.method static c(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Z)Le/c/b/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le/c/b/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Le/c/b/w/k/m;->v:Le/c/b/t;

    return-object p1

    :cond_0
    new-instance p1, Le/c/b/f$b;

    invoke-direct {p1, p0}, Le/c/b/f$b;-><init>(Le/c/b/f;)V

    return-object p1
.end method

.method private e(Z)Le/c/b/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le/c/b/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Le/c/b/w/k/m;->u:Le/c/b/t;

    return-object p1

    :cond_0
    new-instance p1, Le/c/b/f$c;

    invoke-direct {p1, p0}, Le/c/b/f$c;-><init>(Le/c/b/f;)V

    return-object p1
.end method

.method private static i(Le/c/b/s;)Le/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/s;",
            ")",
            "Le/c/b/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Le/c/b/s;->b:Le/c/b/s;

    if-ne p0, v0, :cond_0

    sget-object p0, Le/c/b/w/k/m;->t:Le/c/b/t;

    return-object p0

    :cond_0
    new-instance p0, Le/c/b/f$d;

    invoke-direct {p0}, Le/c/b/f$d;-><init>()V

    return-object p0
.end method


# virtual methods
.method public f(Le/c/b/x/a;)Le/c/b/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/x/a<",
            "TT;>;)",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/f;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Le/c/b/f;->j:Le/c/b/x/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/t;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Le/c/b/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Le/c/b/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/c/b/f$g;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Le/c/b/f$g;

    invoke-direct {v2}, Le/c/b/f$g;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Le/c/b/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/c/b/u;

    invoke-interface {v4, p0, p1}, Le/c/b/u;->a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Le/c/b/f$g;->d(Le/c/b/t;)V

    iget-object v2, p0, Le/c/b/f;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p1, p0, Le/c/b/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p1, p0, Le/c/b/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public g(Ljava/lang/Class;)Le/c/b/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/x/a;->a(Ljava/lang/Class;)Le/c/b/x/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object p1

    return-object p1
.end method

.method public h(Le/c/b/u;Le/c/b/x/a;)Le/c/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/u;",
            "Le/c/b/x/a<",
            "TT;>;)",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Le/c/b/f;->i:Le/c/b/w/k/d;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Le/c/b/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/c/b/u;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Le/c/b/u;->a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public j(Ljava/io/Writer;)Le/c/b/y/a;
    .locals 1

    iget-boolean v0, p0, Le/c/b/f;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Le/c/b/y/a;

    invoke-direct {v0, p1}, Le/c/b/y/a;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Le/c/b/f;->h:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Le/c/b/y/a;->O(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Le/c/b/f;->e:Z

    invoke-virtual {v0, p1}, Le/c/b/y/a;->Q(Z)V

    return-object v0
.end method

.method public k(Le/c/b/k;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Le/c/b/f;->o(Le/c/b/k;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Le/c/b/m;->a:Le/c/b/m;

    invoke-virtual {p0, p1}, Le/c/b/f;->k(Le/c/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/c/b/f;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Le/c/b/f;->q(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Le/c/b/k;Le/c/b/y/a;)V
    .locals 4

    invoke-virtual {p2}, Le/c/b/y/a;->F()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p2}, Le/c/b/y/a;->E()Z

    move-result v1

    iget-boolean v2, p0, Le/c/b/f;->f:Z

    invoke-virtual {p2, v2}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p2}, Le/c/b/y/a;->D()Z

    move-result v2

    iget-boolean v3, p0, Le/c/b/f;->e:Z

    invoke-virtual {p2, v3}, Le/c/b/y/a;->Q(Z)V

    :try_start_0
    invoke-static {p1, p2}, Le/c/b/w/i;->a(Le/c/b/k;Le/c/b/y/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p2, v1}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p2, v2}, Le/c/b/y/a;->Q(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v3, Le/c/b/l;

    invoke-direct {v3, p1}, Le/c/b/l;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p2, v1}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p2, v2}, Le/c/b/y/a;->Q(Z)V

    throw p1
.end method

.method public o(Le/c/b/k;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Le/c/b/w/i;->b(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Le/c/b/f;->j(Ljava/io/Writer;)Le/c/b/y/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/b/f;->n(Le/c/b/k;Le/c/b/y/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/l;

    invoke-direct {p2, p1}, Le/c/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public p(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/b/y/a;)V
    .locals 4

    invoke-static {p2}, Le/c/b/x/a;->b(Ljava/lang/reflect/Type;)Le/c/b/x/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Le/c/b/f;->f(Le/c/b/x/a;)Le/c/b/t;

    move-result-object p2

    invoke-virtual {p3}, Le/c/b/y/a;->F()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p3}, Le/c/b/y/a;->E()Z

    move-result v1

    iget-boolean v2, p0, Le/c/b/f;->f:Z

    invoke-virtual {p3, v2}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p3}, Le/c/b/y/a;->D()Z

    move-result v2

    iget-boolean v3, p0, Le/c/b/f;->e:Z

    invoke-virtual {p3, v3}, Le/c/b/y/a;->Q(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p3, v1}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p3, v2}, Le/c/b/y/a;->Q(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Le/c/b/l;

    invoke-direct {p2, p1}, Le/c/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Le/c/b/y/a;->P(Z)V

    invoke-virtual {p3, v1}, Le/c/b/y/a;->N(Z)V

    invoke-virtual {p3, v2}, Le/c/b/y/a;->Q(Z)V

    throw p1
.end method

.method public q(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Le/c/b/w/i;->b(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Le/c/b/f;->j(Ljava/io/Writer;)Le/c/b/y/a;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Le/c/b/f;->p(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/b/y/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Le/c/b/l;

    invoke-direct {p2, p1}, Le/c/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Le/c/b/f;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/c/b/f;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/c/b/f;->d:Le/c/b/w/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
