.class final Lf/v/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/u/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/u/c<",
        "Lf/t/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lf/s/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/s/a/c<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lf/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILf/s/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lf/s/a/c<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lf/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/v/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lf/v/e;->b:I

    iput p3, p0, Lf/v/e;->c:I

    iput-object p4, p0, Lf/v/e;->d:Lf/s/a/c;

    return-void
.end method

.method public static final synthetic b(Lf/v/e;)Lf/s/a/c;
    .locals 0

    iget-object p0, p0, Lf/v/e;->d:Lf/s/a/c;

    return-object p0
.end method

.method public static final synthetic c(Lf/v/e;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lf/v/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic d(Lf/v/e;)I
    .locals 0

    iget p0, p0, Lf/v/e;->c:I

    return p0
.end method

.method public static final synthetic e(Lf/v/e;)I
    .locals 0

    iget p0, p0, Lf/v/e;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lf/t/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lf/v/e$a;

    invoke-direct {v0, p0}, Lf/v/e$a;-><init>(Lf/v/e;)V

    return-object v0
.end method
