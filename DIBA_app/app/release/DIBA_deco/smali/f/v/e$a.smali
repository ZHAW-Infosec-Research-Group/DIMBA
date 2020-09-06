.class public final Lf/v/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lf/s/b/o/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lf/t/c;",
        ">;",
        "Lf/s/b/o/a;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lf/t/c;

.field private f:I

.field final synthetic g:Lf/v/e;


# direct methods
.method constructor <init>(Lf/v/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf/v/e$a;->b:I

    invoke-static {p1}, Lf/v/e;->e(Lf/v/e;)I

    move-result v0

    invoke-static {p1}, Lf/v/e;->c(Lf/v/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lf/t/d;->d(III)I

    move-result p1

    iput p1, p0, Lf/v/e$a;->c:I

    iput p1, p0, Lf/v/e$a;->d:I

    return-void
.end method

.method private final a()V
    .locals 6

    iget v0, p0, Lf/v/e$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lf/v/e$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lf/v/e$a;->e:Lf/t/c;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v0}, Lf/v/e;->d(Lf/v/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lf/v/e$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lf/v/e$a;->f:I

    iget-object v4, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v4}, Lf/v/e;->d(Lf/v/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lf/v/e$a;->d:I

    iget-object v4, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v4}, Lf/v/e;->c(Lf/v/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lf/v/e$a;->c:I

    new-instance v1, Lf/t/c;

    iget-object v4, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v4}, Lf/v/e;->c(Lf/v/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lf/v/q;->F(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lf/t/c;-><init>(II)V

    :goto_0
    iput-object v1, p0, Lf/v/e$a;->e:Lf/t/c;

    :goto_1
    iput v2, p0, Lf/v/e$a;->d:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v0}, Lf/v/e;->b(Lf/v/e;)Lf/s/a/c;

    move-result-object v0

    iget-object v4, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v4}, Lf/v/e;->c(Lf/v/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lf/v/e$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lf/s/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h;

    if-nez v0, :cond_4

    iget v0, p0, Lf/v/e$a;->c:I

    new-instance v1, Lf/t/c;

    iget-object v4, p0, Lf/v/e$a;->g:Lf/v/e;

    invoke-static {v4}, Lf/v/e;->c(Lf/v/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lf/v/q;->F(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lf/t/c;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lf/h;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lf/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lf/v/e$a;->c:I

    invoke-static {v4, v2}, Lf/t/d;->g(II)Lf/t/c;

    move-result-object v4

    iput-object v4, p0, Lf/v/e$a;->e:Lf/t/c;

    add-int/2addr v2, v0

    iput v2, p0, Lf/v/e$a;->c:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    iput v3, p0, Lf/v/e$a;->b:I

    :goto_3
    return-void
.end method


# virtual methods
.method public b()Lf/t/c;
    .locals 3

    iget v0, p0, Lf/v/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lf/v/e$a;->a()V

    :cond_0
    iget v0, p0, Lf/v/e$a;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/v/e$a;->e:Lf/t/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lf/v/e$a;->e:Lf/t/c;

    iput v1, p0, Lf/v/e$a;->b:I

    return-object v0

    :cond_1
    new-instance v0, Lf/k;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lf/k;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lf/v/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lf/v/e$a;->a()V

    :cond_0
    iget v0, p0, Lf/v/e$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf/v/e$a;->b()Lf/t/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
