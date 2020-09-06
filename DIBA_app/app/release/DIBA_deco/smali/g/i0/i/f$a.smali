.class public final Lg/i0/i/f$a;
.super Lg/i0/e/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/i/f;-><init>(Lg/i0/i/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/i0/i/f;

.field final synthetic f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/i0/i/f;J)V
    .locals 0

    iput-object p3, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    iput-wide p4, p0, Lg/i0/i/f$a;->f:J

    const/4 p1, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lg/i0/e/a;-><init>(Ljava/lang/String;ZILf/s/b/d;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 9

    iget-object v0, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    invoke-static {v1}, Lg/i0/i/f;->C(Lg/i0/i/f;)J

    move-result-wide v1

    iget-object v3, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    invoke-static {v3}, Lg/i0/i/f;->A(Lg/i0/i/f;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    invoke-static {v1}, Lg/i0/i/f;->A(Lg/i0/i/f;)J

    move-result-wide v2

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v1, v2, v3}, Lg/i0/i/f;->K(Lg/i0/i/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lg/i0/i/f$a;->e:Lg/i0/i/f;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/i0/i/f;->g(Lg/i0/i/f;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v6, v5, v6}, Lg/i0/i/f;->t0(ZII)V

    iget-wide v0, p0, Lg/i0/i/f$a;->f:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
