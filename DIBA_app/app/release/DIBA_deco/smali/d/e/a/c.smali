.class public Ld/e/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ld/e/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/a/g<",
            "Ld/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ld/e/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/a/g<",
            "Ld/e/a/i;",
            ">;"
        }
    .end annotation
.end field

.field c:[Ld/e/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/e/a/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ld/e/a/h;-><init>(I)V

    iput-object v0, p0, Ld/e/a/c;->a:Ld/e/a/g;

    new-instance v0, Ld/e/a/h;

    invoke-direct {v0, v1}, Ld/e/a/h;-><init>(I)V

    iput-object v0, p0, Ld/e/a/c;->b:Ld/e/a/g;

    const/16 v0, 0x20

    new-array v0, v0, [Ld/e/a/i;

    iput-object v0, p0, Ld/e/a/c;->c:[Ld/e/a/i;

    return-void
.end method
