.class final Le/c/b/w/k/m$u;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Le/c/b/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Le/c/b/k;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/m$u;->d(Le/c/b/y/a;Le/c/b/k;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Le/c/b/k;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Le/c/b/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Le/c/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Le/c/b/k;->c()Le/c/b/p;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/p;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Le/c/b/p;->j()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/b/y/a;->U(Ljava/lang/Number;)Le/c/b/y/a;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Le/c/b/p;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Le/c/b/p;->h()Z

    move-result p2

    invoke-virtual {p1, p2}, Le/c/b/y/a;->W(Z)Le/c/b/y/a;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Le/c/b/p;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/b/y/a;->V(Ljava/lang/String;)Le/c/b/y/a;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Le/c/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Le/c/b/y/a;->o()Le/c/b/y/a;

    invoke-virtual {p2}, Le/c/b/k;->a()Le/c/b/i;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/i;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/k;

    invoke-virtual {p0, p1, v0}, Le/c/b/w/k/m$u;->d(Le/c/b/y/a;Le/c/b/k;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Le/c/b/y/a;->A()Le/c/b/y/a;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Le/c/b/k;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    invoke-virtual {p2}, Le/c/b/k;->b()Le/c/b/n;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/n;->i()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/k;

    invoke-virtual {p0, p1, v0}, Le/c/b/w/k/m$u;->d(Le/c/b/y/a;Le/c/b/k;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    :goto_3
    return-void
.end method
