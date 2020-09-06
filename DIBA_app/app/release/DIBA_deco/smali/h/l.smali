.class public final Lh/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a0;


# instance fields
.field private b:B

.field private final c:Lh/u;

.field private final d:Ljava/util/zip/Inflater;

.field private final e:Lh/m;

.field private final f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lh/a0;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/u;

    invoke-direct {v0, p1}, Lh/u;-><init>(Lh/a0;)V

    iput-object v0, p0, Lh/l;->c:Lh/u;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lh/l;->d:Ljava/util/zip/Inflater;

    new-instance v0, Lh/m;

    iget-object v1, p0, Lh/l;->c:Lh/u;

    invoke-direct {v0, v1, p1}, Lh/m;-><init>(Lh/g;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lh/l;->e:Lh/m;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lh/l;->f:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final g(Ljava/lang/String;II)V
    .locals 3

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(this, *args)"

    invoke-static {p1, p2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final n()V
    .locals 17

    move-object/from16 v6, p0

    iget-object v0, v6, Lh/l;->c:Lh/u;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lh/u;->s(J)V

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v0, v0, Lh/u;->b:Lh/e;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lh/e;->C(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v1, v0, Lh/u;->b:Lh/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lh/l;->r(Lh/e;JJ)V

    :cond_1
    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0}, Lh/u;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    invoke-direct {v6, v2, v1, v0}, Lh/l;->g(Ljava/lang/String;II)V

    iget-object v0, v6, Lh/l;->c:Lh/u;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lh/u;->l(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, v6, Lh/l;->c:Lh/u;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lh/u;->s(J)V

    if-eqz v10, :cond_3

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v1, v0, Lh/u;->b:Lh/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lh/l;->r(Lh/e;JJ)V

    :cond_3
    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v0, v0, Lh/u;->b:Lh/e;

    invoke-virtual {v0}, Lh/e;->L()S

    move-result v0

    int-to-long v11, v0

    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0, v11, v12}, Lh/u;->s(J)V

    if-eqz v10, :cond_4

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v1, v0, Lh/u;->b:Lh/e;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lh/l;->r(Lh/e;JJ)V

    :cond_4
    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0, v11, v12}, Lh/u;->l(J)V

    :cond_5
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-eqz v0, :cond_9

    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0, v9}, Lh/u;->g(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_8

    if-eqz v10, :cond_7

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v1, v0, Lh/u;->b:Lh/e;

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lh/l;->r(Lh/e;JJ)V

    :cond_7
    iget-object v0, v6, Lh/l;->c:Lh/u;

    add-long v1, v15, v13

    invoke-virtual {v0, v1, v2}, Lh/u;->l(J)V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    :goto_3
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_d

    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0, v9}, Lh/u;->g(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_c

    if-eqz v10, :cond_b

    iget-object v0, v6, Lh/l;->c:Lh/u;

    iget-object v1, v0, Lh/u;->b:Lh/e;

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lh/l;->r(Lh/e;JJ)V

    :cond_b
    iget-object v0, v6, Lh/l;->c:Lh/u;

    add-long/2addr v7, v13

    invoke-virtual {v0, v7, v8}, Lh/u;->l(J)V

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d
    :goto_5
    if-eqz v10, :cond_e

    iget-object v0, v6, Lh/l;->c:Lh/u;

    invoke-virtual {v0}, Lh/u;->r()S

    move-result v0

    iget-object v1, v6, Lh/l;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lh/l;->g(Ljava/lang/String;II)V

    iget-object v0, v6, Lh/l;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_e
    return-void
.end method

.method private final o()V
    .locals 3

    iget-object v0, p0, Lh/l;->c:Lh/u;

    invoke-virtual {v0}, Lh/u;->o()I

    move-result v0

    iget-object v1, p0, Lh/l;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Lh/l;->g(Ljava/lang/String;II)V

    iget-object v0, p0, Lh/l;->c:Lh/u;

    invoke-virtual {v0}, Lh/u;->o()I

    move-result v0

    iget-object v1, p0, Lh/l;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Lh/l;->g(Ljava/lang/String;II)V

    return-void
.end method

.method private final r(Lh/e;JJ)V
    .locals 6

    iget-object p1, p1, Lh/e;->b:Lh/v;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :goto_0
    iget v1, p1, Lh/v;->c:I

    iget v2, p1, Lh/v;->b:I

    sub-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object p1, p1, Lh/v;->f:Lh/v;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    cmp-long v3, p4, v1

    if-lez v3, :cond_3

    iget v3, p1, Lh/v;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    iget p3, p1, Lh/v;->c:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    iget-object v3, p0, Lh/l;->f:Ljava/util/zip/CRC32;

    iget-object v4, p1, Lh/v;->a:[B

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lh/v;->f:Lh/v;

    if-eqz p1, :cond_2

    move-wide p2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lf/s/b/f;->g()V

    throw v0

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lf/s/b/f;->g()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public b()Lh/b0;
    .locals 1

    iget-object v0, p0, Lh/l;->c:Lh/u;

    invoke-virtual {v0}, Lh/u;->b()Lh/b0;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lh/l;->e:Lh/m;

    invoke-virtual {v0}, Lh/m;->close()V

    return-void
.end method

.method public i(Lh/e;J)J
    .locals 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    iget-byte v1, p0, Lh/l;->b:B

    if-nez v1, :cond_2

    invoke-direct {p0}, Lh/l;->n()V

    iput-byte v0, p0, Lh/l;->b:B

    :cond_2
    iget-byte v1, p0, Lh/l;->b:B

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lh/e;->Q()J

    move-result-wide v7

    iget-object v0, p0, Lh/l;->e:Lh/m;

    invoke-virtual {v0, p1, p2, p3}, Lh/m;->i(Lh/e;J)J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lh/l;->r(Lh/e;JJ)V

    return-wide p2

    :cond_3
    iput-byte v4, p0, Lh/l;->b:B

    :cond_4
    iget-byte p1, p0, Lh/l;->b:B

    if-ne p1, v4, :cond_6

    invoke-direct {p0}, Lh/l;->o()V

    const/4 p1, 0x3

    iput-byte p1, p0, Lh/l;->b:B

    iget-object p1, p0, Lh/l;->c:Lh/u;

    invoke-virtual {p1}, Lh/u;->v()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-wide v2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
