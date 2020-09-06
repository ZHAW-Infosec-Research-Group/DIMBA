.class final Lf/o/b$d;
.super Lf/o/b;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/o/b<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private c:I

.field private final d:Lf/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/o/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(Lf/o/b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/o/b<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lf/o/b;-><init>()V

    iput-object p1, p0, Lf/o/b$d;->d:Lf/o/b;

    iput p2, p0, Lf/o/b$d;->e:I

    sget-object v0, Lf/o/b;->b:Lf/o/b$a;

    invoke-virtual {p1}, Lf/o/a;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lf/o/b$a;->c(III)V

    iget p1, p0, Lf/o/b$d;->e:I

    sub-int/2addr p3, p1

    iput p3, p0, Lf/o/b$d;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf/o/b$d;->c:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lf/o/b;->b:Lf/o/b$a;

    iget v1, p0, Lf/o/b$d;->c:I

    invoke-virtual {v0, p1, v1}, Lf/o/b$a;->a(II)V

    iget-object v0, p0, Lf/o/b$d;->d:Lf/o/b;

    iget v1, p0, Lf/o/b$d;->e:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lf/o/b;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
