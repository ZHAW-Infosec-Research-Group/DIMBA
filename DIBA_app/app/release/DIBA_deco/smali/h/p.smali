.class final synthetic Lh/p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/AssertionError;)Z
    .locals 4

    const-string v0, "$this$isAndroidGetsocknameError"

    invoke-static {p0, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "getsockname failed"

    invoke-static {p0, v3, v1, v0, v2}, Lf/v/g;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final b(Ljava/net/Socket;)Lh/y;
    .locals 3

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/z;

    invoke-direct {v0, p0}, Lh/z;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lh/s;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lh/s;-><init>(Ljava/io/OutputStream;Lh/b0;)V

    invoke-virtual {v0, v1}, Lh/d;->v(Lh/y;)Lh/y;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/io/InputStream;)Lh/a0;
    .locals 2

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/n;

    new-instance v1, Lh/b0;

    invoke-direct {v1}, Lh/b0;-><init>()V

    invoke-direct {v0, p0, v1}, Lh/n;-><init>(Ljava/io/InputStream;Lh/b0;)V

    return-object v0
.end method

.method public static final d(Ljava/net/Socket;)Lh/a0;
    .locals 3

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/z;

    invoke-direct {v0, p0}, Lh/z;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lh/n;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lf/s/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lh/n;-><init>(Ljava/io/InputStream;Lh/b0;)V

    invoke-virtual {v0, v1}, Lh/d;->w(Lh/a0;)Lh/a0;

    move-result-object p0

    return-object p0
.end method
