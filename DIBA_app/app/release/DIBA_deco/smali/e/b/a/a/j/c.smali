.class public abstract Le/b/a/a/j/c;
.super Le/b/a/a/j/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/j/c$a;
    }
.end annotation


# instance fields
.field protected f:Le/b/a/a/j/c$a;


# direct methods
.method public constructor <init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/b/a/a/j/e;-><init>(Le/b/a/a/a/a;Le/b/a/a/k/i;)V

    new-instance p1, Le/b/a/a/j/c$a;

    invoke-direct {p1, p0}, Le/b/a/a/j/c$a;-><init>(Le/b/a/a/j/c;)V

    iput-object p1, p0, Le/b/a/a/j/c;->f:Le/b/a/a/j/c$a;

    return-void
.end method


# virtual methods
.method protected i(Le/b/a/a/d/l;Le/b/a/a/g/b/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, p1}, Le/b/a/a/g/b/d;->c0(Le/b/a/a/d/l;)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Le/b/a/a/g/b/d;->K()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Le/b/a/a/j/e;->b:Le/b/a/a/a/a;

    invoke-virtual {p2}, Le/b/a/a/a/a;->a()F

    move-result p2

    mul-float p1, p1, p2

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected j(Le/b/a/a/g/b/d;)Z
    .locals 1

    invoke-interface {p1}, Le/b/a/a/g/b/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Le/b/a/a/g/b/d;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
