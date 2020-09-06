.class Ld/o/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ld/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/d/a<",
            "Landroid/view/View;",
            "Ld/o/s;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ld/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/d/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ld/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/d/a;

    invoke-direct {v0}, Ld/d/a;-><init>()V

    iput-object v0, p0, Ld/o/t;->a:Ld/d/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ld/o/t;->b:Landroid/util/SparseArray;

    new-instance v0, Ld/d/d;

    invoke-direct {v0}, Ld/d/d;-><init>()V

    iput-object v0, p0, Ld/o/t;->c:Ld/d/d;

    new-instance v0, Ld/d/a;

    invoke-direct {v0}, Ld/d/a;-><init>()V

    iput-object v0, p0, Ld/o/t;->d:Ld/d/a;

    return-void
.end method
