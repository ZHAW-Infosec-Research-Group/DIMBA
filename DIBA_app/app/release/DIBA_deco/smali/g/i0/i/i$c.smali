.class public final Lg/i0/i/i$c;
.super Lh/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic l:Lg/i0/i/i;


# direct methods
.method public constructor <init>(Lg/i0/i/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg/i0/i/i$c;->l:Lg/i0/i/i;

    invoke-direct {p0}, Lh/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected t(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected x()V
    .locals 2

    iget-object v0, p0, Lg/i0/i/i$c;->l:Lg/i0/i/i;

    sget-object v1, Lg/i0/i/b;->h:Lg/i0/i/b;

    invoke-virtual {v0, v1}, Lg/i0/i/i;->f(Lg/i0/i/b;)V

    iget-object v0, p0, Lg/i0/i/i$c;->l:Lg/i0/i/i;

    invoke-virtual {v0}, Lg/i0/i/i;->g()Lg/i0/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/i0/i/f;->k0()V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, Lh/d;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/i0/i/i$c;->t(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
