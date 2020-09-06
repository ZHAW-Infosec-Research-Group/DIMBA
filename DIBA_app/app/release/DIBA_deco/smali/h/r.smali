.class public final Lh/r;
.super Lf/o/b;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/o/b<",
        "Lh/h;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final e:Lh/r$a;


# instance fields
.field private final c:[Lh/h;

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/r$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lh/r;->e:Lh/r$a;

    return-void
.end method

.method private constructor <init>([Lh/h;[I)V
    .locals 0

    invoke-direct {p0}, Lf/o/b;-><init>()V

    iput-object p1, p0, Lh/r;->c:[Lh/h;

    iput-object p2, p0, Lh/r;->d:[I

    return-void
.end method

.method public synthetic constructor <init>([Lh/h;[ILf/s/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/r;-><init>([Lh/h;[I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lh/r;->c:[Lh/h;

    array-length v0, v0

    return v0
.end method

.method public bridge b(Lh/h;)Z
    .locals 0

    invoke-super {p0, p1}, Lf/o/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Lh/h;
    .locals 1

    iget-object v0, p0, Lh/r;->c:[Lh/h;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lh/h;

    if-eqz v0, :cond_0

    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lh/r;->b(Lh/h;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()[Lh/h;
    .locals 1

    iget-object v0, p0, Lh/r;->c:[Lh/h;

    return-object v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lh/r;->d:[I

    return-object v0
.end method

.method public bridge f(Lh/h;)I
    .locals 0

    invoke-super {p0, p1}, Lf/o/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge g(Lh/h;)I
    .locals 0

    invoke-super {p0, p1}, Lf/o/b;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lh/r;->c(I)Lh/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lh/h;

    if-eqz v0, :cond_0

    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lh/r;->f(Lh/h;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lh/h;

    if-eqz v0, :cond_0

    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lh/r;->g(Lh/h;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
