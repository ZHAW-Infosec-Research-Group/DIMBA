.class public final Lg/i0/i/f$e$a;
.super Lg/i0/e/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/i/f$e;->l(ZLg/i0/i/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/i0/i/f$e;

.field final synthetic f:Lf/s/b/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f$e;ZLf/s/b/j;Lg/i0/i/n;Lf/s/b/i;Lf/s/b/j;)V
    .locals 0

    iput-object p5, p0, Lg/i0/i/f$e$a;->e:Lg/i0/i/f$e;

    iput-object p7, p0, Lg/i0/i/f$e$a;->f:Lf/s/b/j;

    invoke-direct {p0, p3, p4}, Lg/i0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lg/i0/i/f$e$a;->e:Lg/i0/i/f$e;

    iget-object v0, v0, Lg/i0/i/f$e;->c:Lg/i0/i/f;

    invoke-virtual {v0}, Lg/i0/i/f;->T()Lg/i0/i/f$d;

    move-result-object v0

    iget-object v1, p0, Lg/i0/i/f$e$a;->e:Lg/i0/i/f$e;

    iget-object v1, v1, Lg/i0/i/f$e;->c:Lg/i0/i/f;

    iget-object v2, p0, Lg/i0/i/f$e$a;->f:Lf/s/b/j;

    iget-object v2, v2, Lf/s/b/j;->b:Ljava/lang/Object;

    check-cast v2, Lg/i0/i/n;

    invoke-virtual {v0, v1, v2}, Lg/i0/i/f$d;->a(Lg/i0/i/f;Lg/i0/i/n;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
