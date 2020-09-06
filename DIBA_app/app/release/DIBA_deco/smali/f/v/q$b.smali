.class final Lf/v/q$b;
.super Lf/s/b/g;
.source ""

# interfaces
.implements Lf/s/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/q;->V(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lf/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/s/b/g;",
        "Lf/s/a/c<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lf/h<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lf/v/q$b;->b:Ljava/util/List;

    iput-boolean p2, p0, Lf/v/q$b;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lf/s/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lf/v/q$b;->d(Ljava/lang/CharSequence;I)Lf/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/CharSequence;I)Lf/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lf/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf/v/q$b;->b:Ljava/util/List;

    iget-boolean v1, p0, Lf/v/q$b;->c:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lf/v/q;->w(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lf/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/h;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lf/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lf/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
