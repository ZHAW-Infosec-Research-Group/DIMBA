.class public final Lg/i0/i/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/i/f$b;,
        Lg/i0/i/f$e;,
        Lg/i0/i/f$d;,
        Lg/i0/i/f$c;
    }
.end annotation


# static fields
.field private static final D:Lg/i0/i/n;

.field public static final E:Lg/i0/i/f$c;


# instance fields
.field private final A:Lg/i0/i/j;

.field private final B:Lg/i0/i/f$e;

.field private final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lg/i0/i/f$d;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg/i0/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private final i:Lg/i0/e/e;

.field private final j:Lg/i0/e/d;

.field private final k:Lg/i0/e/d;

.field private final l:Lg/i0/e/d;

.field private final m:Lg/i0/i/m;

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private final t:Lg/i0/i/n;

.field private u:Lg/i0/i/n;

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private final z:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/i0/i/f$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/i0/i/f$c;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/i0/i/f;->E:Lg/i0/i/f$c;

    new-instance v0, Lg/i0/i/n;

    invoke-direct {v0}, Lg/i0/i/n;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lg/i0/i/n;->h(II)Lg/i0/i/n;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lg/i0/i/n;->h(II)Lg/i0/i/n;

    sput-object v0, Lg/i0/i/f;->D:Lg/i0/i/n;

    return-void
.end method

.method public constructor <init>(Lg/i0/i/f$b;)V
    .locals 9

    const-string v0, "builder"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lg/i0/i/f$b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lg/i0/i/f;->b:Z

    invoke-virtual {p1}, Lg/i0/i/f$b;->d()Lg/i0/i/f$d;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->c:Lg/i0/i/f$d;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lg/i0/i/f$b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lg/i0/i/f$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lg/i0/i/f;->g:I

    invoke-virtual {p1}, Lg/i0/i/f$b;->j()Lg/i0/e/e;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->i:Lg/i0/e/e;

    invoke-virtual {v0}, Lg/i0/e/e;->i()Lg/i0/e/d;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    iget-object v0, p0, Lg/i0/i/f;->i:Lg/i0/e/e;

    invoke-virtual {v0}, Lg/i0/e/e;->i()Lg/i0/e/d;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    iget-object v0, p0, Lg/i0/i/f;->i:Lg/i0/e/e;

    invoke-virtual {v0}, Lg/i0/e/e;->i()Lg/i0/e/d;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->l:Lg/i0/e/d;

    invoke-virtual {p1}, Lg/i0/i/f$b;->f()Lg/i0/i/m;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->m:Lg/i0/i/m;

    new-instance v0, Lg/i0/i/n;

    invoke-direct {v0}, Lg/i0/i/n;-><init>()V

    invoke-virtual {p1}, Lg/i0/i/f$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Lg/i0/i/n;->h(II)Lg/i0/i/n;

    :cond_1
    iput-object v0, p0, Lg/i0/i/f;->t:Lg/i0/i/n;

    sget-object v0, Lg/i0/i/f;->D:Lg/i0/i/n;

    iput-object v0, p0, Lg/i0/i/f;->u:Lg/i0/i/n;

    invoke-virtual {v0}, Lg/i0/i/n;->c()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/i0/i/f;->y:J

    invoke-virtual {p1}, Lg/i0/i/f$b;->h()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lg/i0/i/f;->z:Ljava/net/Socket;

    new-instance v0, Lg/i0/i/j;

    invoke-virtual {p1}, Lg/i0/i/f$b;->g()Lh/f;

    move-result-object v1

    iget-boolean v2, p0, Lg/i0/i/f;->b:Z

    invoke-direct {v0, v1, v2}, Lg/i0/i/j;-><init>(Lh/f;Z)V

    iput-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    new-instance v0, Lg/i0/i/f$e;

    new-instance v1, Lg/i0/i/h;

    invoke-virtual {p1}, Lg/i0/i/f$b;->i()Lh/g;

    move-result-object v2

    iget-boolean v3, p0, Lg/i0/i/f;->b:Z

    invoke-direct {v1, v2, v3}, Lg/i0/i/h;-><init>(Lh/g;Z)V

    invoke-direct {v0, p0, v1}, Lg/i0/i/f$e;-><init>(Lg/i0/i/f;Lg/i0/i/h;)V

    iput-object v0, p0, Lg/i0/i/f;->B:Lg/i0/i/f$e;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lg/i0/i/f;->C:Ljava/util/Set;

    invoke-virtual {p1}, Lg/i0/i/f$b;->e()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lg/i0/i/f$b;->e()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object p1, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lg/i0/i/f$a;

    move-object v3, v2

    move-object v4, v5

    move-object v6, p0

    move-wide v7, v0

    invoke-direct/range {v3 .. v8}, Lg/i0/i/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/i0/i/f;J)V

    invoke-virtual {p1, v2, v0, v1}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    :cond_2
    return-void
.end method

.method public static final synthetic A(Lg/i0/i/f;)J
    .locals 2

    iget-wide v0, p0, Lg/i0/i/f;->n:J

    return-wide v0
.end method

.method public static final synthetic C(Lg/i0/i/f;)J
    .locals 2

    iget-wide v0, p0, Lg/i0/i/f;->o:J

    return-wide v0
.end method

.method public static final synthetic D(Lg/i0/i/f;)Lg/i0/i/m;
    .locals 0

    iget-object p0, p0, Lg/i0/i/f;->m:Lg/i0/i/m;

    return-object p0
.end method

.method public static final synthetic E(Lg/i0/i/f;)Lg/i0/e/d;
    .locals 0

    iget-object p0, p0, Lg/i0/i/f;->l:Lg/i0/e/d;

    return-object p0
.end method

.method public static final synthetic F(Lg/i0/i/f;)Lg/i0/e/e;
    .locals 0

    iget-object p0, p0, Lg/i0/i/f;->i:Lg/i0/e/e;

    return-object p0
.end method

.method public static final synthetic G(Lg/i0/i/f;)Lg/i0/e/d;
    .locals 0

    iget-object p0, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    return-object p0
.end method

.method public static final synthetic H(Lg/i0/i/f;)Z
    .locals 0

    iget-boolean p0, p0, Lg/i0/i/f;->h:Z

    return p0
.end method

.method public static final synthetic I(Lg/i0/i/f;J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/i/f;->r:J

    return-void
.end method

.method public static final synthetic J(Lg/i0/i/f;J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/i/f;->q:J

    return-void
.end method

.method public static final synthetic K(Lg/i0/i/f;J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/i/f;->n:J

    return-void
.end method

.method public static final synthetic L(Lg/i0/i/f;J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/i/f;->o:J

    return-void
.end method

.method public static final synthetic M(Lg/i0/i/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lg/i0/i/f;->h:Z

    return-void
.end method

.method public static final synthetic N(Lg/i0/i/f;J)V
    .locals 0

    iput-wide p1, p0, Lg/i0/i/f;->y:J

    return-void
.end method

.method private final P(Ljava/io/IOException;)V
    .locals 1

    sget-object v0, Lg/i0/i/b;->d:Lg/i0/i/b;

    invoke-virtual {p0, v0, v0, p1}, Lg/i0/i/f;->O(Lg/i0/i/b;Lg/i0/i/b;Ljava/io/IOException;)V

    return-void
.end method

.method private final c0(ILjava/util/List;Z)Lg/i0/i/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;Z)",
            "Lg/i0/i/i;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lg/i0/i/f;->g:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    sget-object v0, Lg/i0/i/b;->g:Lg/i0/i/b;

    invoke-virtual {p0, v0}, Lg/i0/i/f;->n0(Lg/i0/i/b;)V

    :cond_0
    iget-boolean v0, p0, Lg/i0/i/f;->h:Z

    if-nez v0, :cond_7

    iget v8, p0, Lg/i0/i/f;->g:I

    iget v0, p0, Lg/i0/i/f;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/i0/i/f;->g:I

    new-instance v9, Lg/i0/i/i;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lg/i0/i/i;-><init>(ILg/i0/i/f;ZZLg/w;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-wide v1, p0, Lg/i0/i/f;->x:J

    iget-wide v3, p0, Lg/i0/i/f;->y:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    invoke-virtual {v9}, Lg/i0/i/i;->r()J

    move-result-wide v1

    invoke-virtual {v9}, Lg/i0/i/i;->q()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {v9}, Lg/i0/i/i;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_4

    iget-object p1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {p1, v6, v8, p2}, Lg/i0/i/j;->C(ZILjava/util/List;)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lg/i0/i/f;->b:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v0, p1, v8, p2}, Lg/i0/i/j;->F(IILjava/util/List;)V

    :goto_2
    sget-object p1, Lf/n;->a:Lf/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    if-eqz p3, :cond_5

    iget-object p1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {p1}, Lg/i0/i/j;->flush()V

    :cond_5
    return-object v9

    :cond_6
    :try_start_3
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :try_start_4
    new-instance p1, Lg/i0/i/a;

    invoke-direct {p1}, Lg/i0/i/a;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v7

    throw p1
.end method

.method public static final synthetic g(Lg/i0/i/f;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/i0/i/f;->P(Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic n(Lg/i0/i/f;)J
    .locals 2

    iget-wide v0, p0, Lg/i0/i/f;->r:J

    return-wide v0
.end method

.method public static final synthetic o(Lg/i0/i/f;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lg/i0/i/f;->C:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic p0(Lg/i0/i/f;ZLg/i0/e/e;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lg/i0/e/e;->h:Lg/i0/e/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg/i0/i/f;->o0(ZLg/i0/e/e;)V

    return-void
.end method

.method public static final synthetic r()Lg/i0/i/n;
    .locals 1

    sget-object v0, Lg/i0/i/f;->D:Lg/i0/i/n;

    return-object v0
.end method

.method public static final synthetic t(Lg/i0/i/f;)J
    .locals 2

    iget-wide v0, p0, Lg/i0/i/f;->q:J

    return-wide v0
.end method


# virtual methods
.method public final O(Lg/i0/i/b;Lg/i0/i/b;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lg/i0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const-string v0, "Thread.currentThread()"

    invoke-static {p3, v0}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lg/i0/i/f;->n0(Lg/i0/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lg/i0/i/i;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lg/i0/i/i;

    iget-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_2
    new-instance p1, Lf/k;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lf/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_4

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lg/i0/i/i;->d(Lg/i0/i/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object p1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {p1}, Lg/i0/i/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lg/i0/i/f;->z:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    invoke-virtual {p1}, Lg/i0/e/d;->n()V

    iget-object p1, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    invoke-virtual {p1}, Lg/i0/e/d;->n()V

    iget-object p1, p0, Lg/i0/i/f;->l:Lg/i0/e/d;

    invoke-virtual {p1}, Lg/i0/e/d;->n()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final Q()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/i/f;->b:Z

    return v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final S()I
    .locals 1

    iget v0, p0, Lg/i0/i/f;->f:I

    return v0
.end method

.method public final T()Lg/i0/i/f$d;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->c:Lg/i0/i/f$d;

    return-object v0
.end method

.method public final U()I
    .locals 1

    iget v0, p0, Lg/i0/i/f;->g:I

    return v0
.end method

.method public final V()Lg/i0/i/n;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->t:Lg/i0/i/n;

    return-object v0
.end method

.method public final W()Lg/i0/i/n;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->u:Lg/i0/i/n;

    return-object v0
.end method

.method public final declared-synchronized X(I)Lg/i0/i/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/i0/i/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg/i0/i/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final Z()J
    .locals 2

    iget-wide v0, p0, Lg/i0/i/f;->y:J

    return-wide v0
.end method

.method public final a0()Lg/i0/i/j;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    return-object v0
.end method

.method public final declared-synchronized b0(J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/i0/i/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lg/i0/i/f;->q:J

    iget-wide v4, p0, Lg/i0/i/f;->p:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lg/i0/i/f;->s:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 3

    sget-object v0, Lg/i0/i/b;->c:Lg/i0/i/b;

    sget-object v1, Lg/i0/i/b;->h:Lg/i0/i/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg/i0/i/f;->O(Lg/i0/i/b;Lg/i0/i/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d0(Ljava/util/List;Z)Lg/i0/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;Z)",
            "Lg/i0/i/i;"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lg/i0/i/f;->c0(ILjava/util/List;Z)Lg/i0/i/i;

    move-result-object p1

    return-object p1
.end method

.method public final e0(ILh/g;IZ)V
    .locals 11

    const-string v0, "source"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lh/e;

    invoke-direct {v8}, Lh/e;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lh/g;->s(J)V

    invoke-interface {p2, v8, v0, v1}, Lh/a0;->i(Lh/e;J)J

    iget-object p2, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lg/i0/i/f$f;

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v4

    move v3, v5

    move-object v6, p0

    move v7, p1

    move v9, p3

    move v10, p4

    invoke-direct/range {v1 .. v10}, Lg/i0/i/f$f;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILh/e;IZ)V

    const-wide/16 p3, 0x0

    invoke-virtual {p2, v0, p3, p4}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method

.method public final f0(ILjava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lg/i0/i/f$g;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    move v11, p3

    invoke-direct/range {v3 .. v11}, Lg/i0/i/f$g;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILjava/util/List;Z)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v0}, Lg/i0/i/j;->flush()V

    return-void
.end method

.method public final g0(ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f;->C:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lg/i0/i/b;->d:Lg/i0/i/b;

    invoke-virtual {p0, p1, p2}, Lg/i0/i/f;->v0(ILg/i0/i/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/i0/i/f;->C:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    new-instance v11, Lg/i0/i/f$h;

    move-object v3, v11

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lg/i0/i/f$h;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILjava/util/List;)V

    invoke-virtual {v0, v11, v1, v2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h0(ILg/i0/i/b;)V
    .locals 11

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->k:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lg/i0/i/f$i;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lg/i0/i/f$i;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILg/i0/i/b;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method

.method public final i0(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized j0(I)Lg/i0/i/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/i0/i/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k0()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lg/i0/i/f;->q:J

    iget-wide v2, p0, Lg/i0/i/f;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lg/i0/i/f;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/i0/i/f;->p:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/i0/i/f;->s:J

    sget-object v0, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    new-instance v9, Lg/i0/i/f$j;

    move-object v3, v9

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lg/i0/i/f$j;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;)V

    invoke-virtual {v0, v9, v1, v2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l0(I)V
    .locals 0

    iput p1, p0, Lg/i0/i/f;->f:I

    return-void
.end method

.method public final m0(Lg/i0/i/n;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/i0/i/f;->u:Lg/i0/i/n;

    return-void
.end method

.method public final n0(Lg/i0/i/b;)V
    .locals 4

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lg/i0/i/f;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lg/i0/i/f;->h:Z

    iget v1, p0, Lg/i0/i/f;->f:I

    sget-object v2, Lf/n;->a:Lf/n;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    iget-object v2, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    sget-object v3, Lg/i0/b;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lg/i0/i/j;->A(ILg/i0/i/b;[B)V

    sget-object p1, Lf/n;->a:Lf/n;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final o0(ZLg/i0/e/e;)V
    .locals 8

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {p1}, Lg/i0/i/j;->n()V

    iget-object p1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    iget-object v0, p0, Lg/i0/i/f;->t:Lg/i0/i/n;

    invoke-virtual {p1, v0}, Lg/i0/i/j;->H(Lg/i0/i/n;)V

    iget-object p1, p0, Lg/i0/i/f;->t:Lg/i0/i/n;

    invoke-virtual {p1}, Lg/i0/i/n;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lg/i0/i/j;->I(IJ)V

    :cond_0
    invoke-virtual {p2}, Lg/i0/e/e;->i()Lg/i0/e/d;

    move-result-object p1

    iget-object v4, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lg/i0/i/f;->B:Lg/i0/i/f$e;

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    new-instance p2, Lg/i0/e/c;

    move-object v0, p2

    move-object v2, v4

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lg/i0/e/c;-><init>(Lf/s/a/a;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, p2, v6, v7}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method

.method public final declared-synchronized q0(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lg/i0/i/f;->v:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lg/i0/i/f;->v:J

    iget-wide p1, p0, Lg/i0/i/f;->w:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lg/i0/i/f;->t:Lg/i0/i/n;

    invoke-virtual {p1}, Lg/i0/i/n;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lg/i0/i/f;->w0(IJ)V

    iget-wide p1, p0, Lg/i0/i/f;->w:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lg/i0/i/f;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r0(IZLh/e;J)V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-object p4, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {p4, p2, p1, p3, v0}, Lg/i0/i/j;->o(ZILh/e;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    new-instance v3, Lf/s/b/h;

    invoke-direct {v3}, Lf/s/b/h;-><init>()V

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lg/i0/i/f;->x:J

    iget-wide v6, p0, Lg/i0/i/f;->y:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    iget-object v4, p0, Lg/i0/i/f;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-wide v4, p0, Lg/i0/i/f;->y:J

    iget-wide v6, p0, Lg/i0/i/f;->x:J

    sub-long/2addr v4, v6

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, v3, Lf/s/b/h;->b:I

    iget-object v4, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v4}, Lg/i0/i/j;->D()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lf/s/b/h;->b:I

    iget-wide v5, p0, Lg/i0/i/f;->x:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lg/i0/i/f;->x:J

    sget-object v5, Lf/n;->a:Lf/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    int-to-long v4, v4

    sub-long/2addr p4, v4

    iget-object v4, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget v3, v3, Lf/s/b/h;->b:I

    invoke-virtual {v4, v5, p1, p3, v3}, Lg/i0/i/j;->o(ZILh/e;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final s0(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alternating"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v0, p2, p1, p3}, Lg/i0/i/j;->C(ZILjava/util/List;)V

    return-void
.end method

.method public final t0(ZII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v0, p1, p2, p3}, Lg/i0/i/j;->E(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lg/i0/i/f;->P(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final u0(ILg/i0/i/b;)V
    .locals 1

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->A:Lg/i0/i/j;

    invoke-virtual {v0, p1, p2}, Lg/i0/i/j;->G(ILg/i0/i/b;)V

    return-void
.end method

.method public final v0(ILg/i0/i/b;)V
    .locals 11

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lg/i0/i/f$k;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lg/i0/i/f$k;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILg/i0/i/b;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method

.method public final w0(IJ)V
    .locals 12

    iget-object v0, p0, Lg/i0/i/f;->j:Lg/i0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/i0/i/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lg/i0/i/f$l;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Lg/i0/i/f$l;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lg/i0/e/d;->i(Lg/i0/e/a;J)V

    return-void
.end method
