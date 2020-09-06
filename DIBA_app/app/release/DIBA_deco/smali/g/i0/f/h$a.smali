.class public final Lg/i0/f/h$a;
.super Lg/i0/e/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/f/h;-><init>(Lg/i0/e/e;IJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/i0/f/h;


# direct methods
.method constructor <init>(Lg/i0/f/h;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lg/i0/f/h$a;->e:Lg/i0/f/h;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lg/i0/e/a;-><init>(Ljava/lang/String;ZILf/s/b/d;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lg/i0/f/h$a;->e:Lg/i0/f/h;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg/i0/f/h;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
