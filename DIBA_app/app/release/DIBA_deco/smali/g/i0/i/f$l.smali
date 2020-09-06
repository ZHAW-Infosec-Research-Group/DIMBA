.class public final Lg/i0/i/f$l;
.super Lg/i0/e/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/i/f;->w0(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/i0/i/f;

.field final synthetic f:I

.field final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;IJ)V
    .locals 0

    iput-object p5, p0, Lg/i0/i/f$l;->e:Lg/i0/i/f;

    iput p6, p0, Lg/i0/i/f$l;->f:I

    iput-wide p7, p0, Lg/i0/i/f$l;->g:J

    invoke-direct {p0, p3, p4}, Lg/i0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f$l;->e:Lg/i0/i/f;

    invoke-virtual {v0}, Lg/i0/i/f;->a0()Lg/i0/i/j;

    move-result-object v0

    iget v1, p0, Lg/i0/i/f$l;->f:I

    iget-wide v2, p0, Lg/i0/i/f$l;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lg/i0/i/j;->I(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/i0/i/f$l;->e:Lg/i0/i/f;

    invoke-static {v1, v0}, Lg/i0/i/f;->g(Lg/i0/i/f;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
