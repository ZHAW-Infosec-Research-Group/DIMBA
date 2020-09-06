.class public final Lg/d0$a$a;
.super Lg/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/d0$a;->a([BLg/z;II)Lg/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:[B

.field final synthetic c:Lg/z;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>([BLg/z;II)V
    .locals 0

    iput-object p1, p0, Lg/d0$a$a;->b:[B

    iput-object p2, p0, Lg/d0$a$a;->c:Lg/z;

    iput p3, p0, Lg/d0$a$a;->d:I

    iput p4, p0, Lg/d0$a$a;->e:I

    invoke-direct {p0}, Lg/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lg/d0$a$a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lg/z;
    .locals 1

    iget-object v0, p0, Lg/d0$a$a;->c:Lg/z;

    return-object v0
.end method

.method public e(Lh/f;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/d0$a$a;->b:[B

    iget v1, p0, Lg/d0$a$a;->e:I

    iget v2, p0, Lg/d0$a$a;->d:I

    invoke-interface {p1, v0, v1, v2}, Lh/f;->d([BII)Lh/f;

    return-void
.end method
