.class Ld/o/q$a;
.super Ld/o/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/o/q;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/o/m;


# direct methods
.method constructor <init>(Ld/o/q;Ld/o/m;)V
    .locals 0

    iput-object p2, p0, Ld/o/q$a;->a:Ld/o/m;

    invoke-direct {p0}, Ld/o/n;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ld/o/m;)V
    .locals 1

    iget-object v0, p0, Ld/o/q$a;->a:Ld/o/m;

    invoke-virtual {v0}, Ld/o/m;->U()V

    invoke-virtual {p1, p0}, Ld/o/m;->Q(Ld/o/m$f;)Ld/o/m;

    return-void
.end method
