.class Le/c/b/w/k/h$a;
.super Le/c/b/w/k/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/k/h;->b(Le/c/b/f;Ljava/lang/reflect/Field;Ljava/lang/String;Le/c/b/x/a;ZZ)Le/c/b/w/k/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Z

.field final synthetic e:Le/c/b/t;

.field final synthetic f:Le/c/b/f;

.field final synthetic g:Le/c/b/x/a;


# direct methods
.method constructor <init>(Le/c/b/w/k/h;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLe/c/b/t;Le/c/b/f;Le/c/b/x/a;Z)V
    .locals 0

    iput-object p5, p0, Le/c/b/w/k/h$a;->c:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Le/c/b/w/k/h$a;->d:Z

    iput-object p7, p0, Le/c/b/w/k/h$a;->e:Le/c/b/t;

    iput-object p8, p0, Le/c/b/w/k/h$a;->f:Le/c/b/f;

    iput-object p9, p0, Le/c/b/w/k/h$a;->g:Le/c/b/x/a;

    invoke-direct {p0, p2, p3, p4}, Le/c/b/w/k/h$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Le/c/b/w/k/h$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Le/c/b/w/k/h$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/w/k/h$a;->e:Le/c/b/t;

    goto :goto_0

    :cond_0
    new-instance v0, Le/c/b/w/k/l;

    iget-object v1, p0, Le/c/b/w/k/h$a;->f:Le/c/b/f;

    iget-object v2, p0, Le/c/b/w/k/h$a;->e:Le/c/b/t;

    iget-object v3, p0, Le/c/b/w/k/h$a;->g:Le/c/b/x/a;

    invoke-virtual {v3}, Le/c/b/x/a;->e()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Le/c/b/w/k/l;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Le/c/b/w/k/h$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Le/c/b/w/k/h$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
