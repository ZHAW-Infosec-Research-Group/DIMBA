.class Ld/o/o$a$a;
.super Ld/o/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/o/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/d/a;

.field final synthetic b:Ld/o/o$a;


# direct methods
.method constructor <init>(Ld/o/o$a;Ld/d/a;)V
    .locals 0

    iput-object p1, p0, Ld/o/o$a$a;->b:Ld/o/o$a;

    iput-object p2, p0, Ld/o/o$a$a;->a:Ld/d/a;

    invoke-direct {p0}, Ld/o/n;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ld/o/m;)V
    .locals 2

    iget-object v0, p0, Ld/o/o$a$a;->a:Ld/d/a;

    iget-object v1, p0, Ld/o/o$a$a;->b:Ld/o/o$a;

    iget-object v1, v1, Ld/o/o$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ld/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ld/o/m;->Q(Ld/o/m$f;)Ld/o/m;

    return-void
.end method
