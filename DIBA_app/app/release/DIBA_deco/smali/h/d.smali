.class public Lh/d;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/d$b;,
        Lh/d$a;
    }
.end annotation


# static fields
.field private static final h:J

.field private static final i:J

.field private static j:Lh/d;

.field public static final k:Lh/d$a;


# instance fields
.field private e:Z

.field private f:Lh/d;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/d$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lh/d;->k:Lh/d$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lh/d;->h:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lh/d;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lh/d;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/b0;-><init>()V

    return-void
.end method

.method public static final synthetic i()Lh/d;
    .locals 1

    sget-object v0, Lh/d;->j:Lh/d;

    return-object v0
.end method

.method public static final synthetic j()J
    .locals 2

    sget-wide v0, Lh/d;->h:J

    return-wide v0
.end method

.method public static final synthetic k()J
    .locals 2

    sget-wide v0, Lh/d;->i:J

    return-wide v0
.end method

.method public static final synthetic l(Lh/d;)Lh/d;
    .locals 0

    iget-object p0, p0, Lh/d;->f:Lh/d;

    return-object p0
.end method

.method public static final synthetic n(Lh/d;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/d;->u(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic o(Lh/d;)V
    .locals 0

    sput-object p0, Lh/d;->j:Lh/d;

    return-void
.end method

.method public static final synthetic p(Lh/d;Lh/d;)V
    .locals 0

    iput-object p1, p0, Lh/d;->f:Lh/d;

    return-void
.end method

.method public static final synthetic q(Lh/d;J)V
    .locals 0

    iput-wide p1, p0, Lh/d;->g:J

    return-void
.end method

.method private final u(J)J
    .locals 2

    iget-wide v0, p0, Lh/d;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final m(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-virtual {p0, p1}, Lh/d;->t(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final r()V
    .locals 7

    iget-boolean v0, p0, Lh/d;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh/b0;->h()J

    move-result-wide v2

    invoke-virtual {p0}, Lh/b0;->e()Z

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lh/d;->e:Z

    sget-object v1, Lh/d;->k:Lh/d$a;

    invoke-static {v1, p0, v2, v3, v0}, Lh/d$a;->b(Lh/d$a;Lh/d;JZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Z
    .locals 2

    iget-boolean v0, p0, Lh/d;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lh/d;->e:Z

    sget-object v0, Lh/d;->k:Lh/d$a;

    invoke-static {v0, p0}, Lh/d$a;->a(Lh/d$a;Lh/d;)Z

    move-result v0

    return v0
.end method

.method protected t(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final v(Lh/y;)Lh/y;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/d$c;

    invoke-direct {v0, p0, p1}, Lh/d$c;-><init>(Lh/d;Lh/y;)V

    return-object v0
.end method

.method public final w(Lh/a0;)Lh/a0;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/d$d;

    invoke-direct {v0, p0, p1}, Lh/d$d;-><init>(Lh/d;Lh/a0;)V

    return-object v0
.end method

.method protected x()V
    .locals 0

    return-void
.end method
