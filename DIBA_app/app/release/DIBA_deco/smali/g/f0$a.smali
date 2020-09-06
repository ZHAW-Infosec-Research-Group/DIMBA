.class public final Lg/f0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf/s/b/d;)V
    .locals 0

    invoke-direct {p0}, Lg/f0$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lg/f0$a;[BLg/z;ILjava/lang/Object;)Lg/f0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/f0$a;->b([BLg/z;)Lg/f0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lh/g;Lg/z;J)Lg/f0;
    .locals 1

    const-string v0, "$this$asResponseBody"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/f0$a$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/f0$a$a;-><init>(Lh/g;Lg/z;J)V

    return-object v0
.end method

.method public final b([BLg/z;)Lg/f0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lh/e;

    invoke-direct {v0}, Lh/e;-><init>()V

    invoke-virtual {v0, p1}, Lh/e;->V([B)Lh/e;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lg/f0$a;->a(Lh/g;Lg/z;J)Lg/f0;

    move-result-object p1

    return-object p1
.end method
