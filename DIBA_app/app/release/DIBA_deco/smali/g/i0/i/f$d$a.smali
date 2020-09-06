.class public final Lg/i0/i/f$d$a;
.super Lg/i0/i/f$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/i/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/i0/i/f$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lg/i0/i/i;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/i0/i/b;->g:Lg/i0/i/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/i0/i/i;->d(Lg/i0/i/b;Ljava/io/IOException;)V

    return-void
.end method
