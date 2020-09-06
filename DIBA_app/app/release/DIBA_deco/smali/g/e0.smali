.class public final Lg/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e0$a;
    }
.end annotation


# instance fields
.field private b:Lg/e;

.field private final c:Lg/c0;

.field private final d:Lg/b0;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Lg/v;

.field private final h:Lg/w;

.field private final i:Lg/f0;

.field private final j:Lg/e0;

.field private final k:Lg/e0;

.field private final l:Lg/e0;

.field private final m:J

.field private final n:J

.field private final o:Lg/i0/f/c;


# direct methods
.method public constructor <init>(Lg/c0;Lg/b0;Ljava/lang/String;ILg/v;Lg/w;Lg/f0;Lg/e0;Lg/e0;Lg/e0;JJLg/i0/f/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lg/e0;->c:Lg/c0;

    iput-object v2, v0, Lg/e0;->d:Lg/b0;

    iput-object v3, v0, Lg/e0;->e:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lg/e0;->f:I

    move-object v1, p5

    iput-object v1, v0, Lg/e0;->g:Lg/v;

    iput-object v4, v0, Lg/e0;->h:Lg/w;

    move-object v1, p7

    iput-object v1, v0, Lg/e0;->i:Lg/f0;

    move-object v1, p8

    iput-object v1, v0, Lg/e0;->j:Lg/e0;

    move-object v1, p9

    iput-object v1, v0, Lg/e0;->k:Lg/e0;

    move-object/from16 v1, p10

    iput-object v1, v0, Lg/e0;->l:Lg/e0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lg/e0;->m:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lg/e0;->n:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lg/e0;->o:Lg/i0/f/c;

    return-void
.end method

.method public static synthetic E(Lg/e0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/e0;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lg/i0/f/c;
    .locals 1

    iget-object v0, p0, Lg/e0;->o:Lg/i0/f/c;

    return-object v0
.end method

.method public final C()Lg/v;
    .locals 1

    iget-object v0, p0, Lg/e0;->g:Lg/v;

    return-object v0
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/e0;->h:Lg/w;

    invoke-virtual {v0, p1}, Lg/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final F()Lg/w;
    .locals 1

    iget-object v0, p0, Lg/e0;->h:Lg/w;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/e0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Lg/e0;
    .locals 1

    iget-object v0, p0, Lg/e0;->j:Lg/e0;

    return-object v0
.end method

.method public final I()Lg/e0$a;
    .locals 1

    new-instance v0, Lg/e0$a;

    invoke-direct {v0, p0}, Lg/e0$a;-><init>(Lg/e0;)V

    return-object v0
.end method

.method public final J()Lg/e0;
    .locals 1

    iget-object v0, p0, Lg/e0;->l:Lg/e0;

    return-object v0
.end method

.method public final K()Lg/b0;
    .locals 1

    iget-object v0, p0, Lg/e0;->d:Lg/b0;

    return-object v0
.end method

.method public final L()J
    .locals 2

    iget-wide v0, p0, Lg/e0;->n:J

    return-wide v0
.end method

.method public final M()Lg/c0;
    .locals 1

    iget-object v0, p0, Lg/e0;->c:Lg/c0;

    return-object v0
.end method

.method public final N()J
    .locals 2

    iget-wide v0, p0, Lg/e0;->m:J

    return-wide v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lg/e0;->i:Lg/f0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/f0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lg/f0;
    .locals 1

    iget-object v0, p0, Lg/e0;->i:Lg/f0;

    return-object v0
.end method

.method public final n()Lg/e;
    .locals 2

    iget-object v0, p0, Lg/e0;->b:Lg/e;

    if-nez v0, :cond_0

    sget-object v0, Lg/e;->n:Lg/e$b;

    iget-object v1, p0, Lg/e0;->h:Lg/w;

    invoke-virtual {v0, v1}, Lg/e$b;->b(Lg/w;)Lg/e;

    move-result-object v0

    iput-object v0, p0, Lg/e0;->b:Lg/e;

    :cond_0
    return-object v0
.end method

.method public final o()Lg/e0;
    .locals 1

    iget-object v0, p0, Lg/e0;->k:Lg/e0;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/e0;->h:Lg/w;

    iget v1, p0, Lg/e0;->f:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_0

    invoke-static {}, Lf/o/j;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v1, "WWW-Authenticate"

    :goto_0
    invoke-static {v0, v1}, Lg/i0/g/e;->a(Lg/w;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lg/e0;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e0;->d:Lg/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/e0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/e0;->c:Lg/c0;

    invoke-virtual {v1}, Lg/c0;->i()Lg/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
