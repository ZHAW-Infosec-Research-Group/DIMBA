.class Le/a/a/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Le/a/a/n;

.field private final c:Le/a/a/p;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/a/a/f;Le/a/a/n;Le/a/a/p;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/a/f$b;->b:Le/a/a/n;

    iput-object p3, p0, Le/a/a/f$b;->c:Le/a/a/p;

    iput-object p4, p0, Le/a/a/f$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    invoke-virtual {v0}, Le/a/a/n;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Le/a/a/n;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/a/a/f$b;->c:Le/a/a/p;

    invoke-virtual {v0}, Le/a/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    iget-object v1, p0, Le/a/a/f$b;->c:Le/a/a/p;

    iget-object v1, v1, Le/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/a/a/n;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    iget-object v1, p0, Le/a/a/f$b;->c:Le/a/a/p;

    iget-object v1, v1, Le/a/a/p;->c:Le/a/a/u;

    invoke-virtual {v0, v1}, Le/a/a/n;->d(Le/a/a/u;)V

    :goto_0
    iget-object v0, p0, Le/a/a/f$b;->c:Le/a/a/p;

    iget-boolean v0, v0, Le/a/a/p;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Le/a/a/n;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Le/a/a/f$b;->b:Le/a/a/n;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Le/a/a/n;->h(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Le/a/a/f$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
