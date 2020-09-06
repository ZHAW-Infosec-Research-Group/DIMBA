.class Ld/o/q$b;
.super Ld/o/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ld/o/q;


# direct methods
.method constructor <init>(Ld/o/q;)V
    .locals 0

    invoke-direct {p0}, Ld/o/n;-><init>()V

    iput-object p1, p0, Ld/o/q$b;->a:Ld/o/q;

    return-void
.end method


# virtual methods
.method public c(Ld/o/m;)V
    .locals 1

    iget-object p1, p0, Ld/o/q$b;->a:Ld/o/q;

    iget-boolean v0, p1, Ld/o/q;->N:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ld/o/m;->b0()V

    iget-object p1, p0, Ld/o/q$b;->a:Ld/o/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld/o/q;->N:Z

    :cond_0
    return-void
.end method

.method public e(Ld/o/m;)V
    .locals 2

    iget-object v0, p0, Ld/o/q$b;->a:Ld/o/q;

    iget v1, v0, Ld/o/q;->M:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld/o/q;->M:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/o/q;->N:Z

    invoke-virtual {v0}, Ld/o/m;->p()V

    :cond_0
    invoke-virtual {p1, p0}, Ld/o/m;->Q(Ld/o/m$f;)Ld/o/m;

    return-void
.end method
