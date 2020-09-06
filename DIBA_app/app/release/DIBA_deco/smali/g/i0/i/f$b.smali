.class public final Lg/i0/i/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lh/g;

.field public d:Lh/f;

.field private e:Lg/i0/i/f$d;

.field private f:Lg/i0/i/m;

.field private g:I

.field private h:Z

.field private final i:Lg/i0/e/e;


# direct methods
.method public constructor <init>(ZLg/i0/e/e;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/i0/i/f$b;->h:Z

    iput-object p2, p0, Lg/i0/i/f$b;->i:Lg/i0/e/e;

    sget-object p1, Lg/i0/i/f$d;->a:Lg/i0/i/f$d;

    iput-object p1, p0, Lg/i0/i/f$b;->e:Lg/i0/i/f$d;

    sget-object p1, Lg/i0/i/m;->a:Lg/i0/i/m;

    iput-object p1, p0, Lg/i0/i/f$b;->f:Lg/i0/i/m;

    return-void
.end method


# virtual methods
.method public final a()Lg/i0/i/f;
    .locals 1

    new-instance v0, Lg/i0/i/f;

    invoke-direct {v0, p0}, Lg/i0/i/f;-><init>(Lg/i0/i/f$b;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lg/i0/i/f$b;->h:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "connectionName"

    invoke-static {v0}, Lf/s/b/f;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lg/i0/i/f$d;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->e:Lg/i0/i/f$d;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg/i0/i/f$b;->g:I

    return v0
.end method

.method public final f()Lg/i0/i/m;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->f:Lg/i0/i/m;

    return-object v0
.end method

.method public final g()Lh/f;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->d:Lh/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sink"

    invoke-static {v0}, Lf/s/b/f;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "socket"

    invoke-static {v0}, Lf/s/b/f;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Lh/g;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->c:Lh/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "source"

    invoke-static {v0}, Lf/s/b/f;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Lg/i0/e/e;
    .locals 1

    iget-object v0, p0, Lg/i0/i/f$b;->i:Lg/i0/e/e;

    return-object v0
.end method

.method public final k(Lg/i0/i/f$d;)Lg/i0/i/f$b;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/i0/i/f$b;->e:Lg/i0/i/f$d;

    return-object p0
.end method

.method public final l(I)Lg/i0/i/f$b;
    .locals 0

    iput p1, p0, Lg/i0/i/f$b;->g:I

    return-object p0
.end method

.method public final m(Ljava/net/Socket;Ljava/lang/String;Lh/g;Lh/f;)Lg/i0/i/f$b;
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/i0/i/f$b;->a:Ljava/net/Socket;

    iget-boolean p1, p0, Lg/i0/i/f$b;->h:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lg/i0/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockWebServer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/i0/i/f$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/i0/i/f$b;->c:Lh/g;

    iput-object p4, p0, Lg/i0/i/f$b;->d:Lh/f;

    return-object p0
.end method
