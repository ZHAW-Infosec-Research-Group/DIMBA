.class public Lch/zhaw/securitylab/DIBA/e/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lch/zhaw/securitylab/DIBA/e/g;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lch/zhaw/securitylab/DIBA/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/e/e;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lch/zhaw/securitylab/DIBA/e/e;->c:Lch/zhaw/securitylab/DIBA/e/g;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->c:Lch/zhaw/securitylab/DIBA/e/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/e/e;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Email: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DIBA"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lch/zhaw/securitylab/DIBA/e/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->b:Landroid/widget/TextView;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v7

    const v8, 0x7f12003b

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->b:Landroid/widget/TextView;

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v1

    const/4 v7, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v7

    const v8, 0x7f120037

    :goto_1
    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/e/e;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->a:Landroid/widget/TextView;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v7

    const v8, 0x7f12003a

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    const-string v0, "Login failed."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/e/e;->c:Lch/zhaw/securitylab/DIBA/e/g;

    invoke-virtual {v3, v0}, Lch/zhaw/securitylab/DIBA/e/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->c:Lch/zhaw/securitylab/DIBA/e/g;

    invoke-virtual {v0, v2}, Lch/zhaw/securitylab/DIBA/e/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/e;->c:Lch/zhaw/securitylab/DIBA/e/g;

    new-array v2, v6, [Ljava/lang/Void;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    return-void
.end method
