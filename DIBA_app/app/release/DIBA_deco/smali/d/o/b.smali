.class public Ld/o/b;
.super Ld/o/q;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/o/q;-><init>()V

    invoke-direct {p0}, Ld/o/b;->q0()V

    return-void
.end method

.method private q0()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/o/q;->n0(I)Ld/o/q;

    new-instance v1, Ld/o/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld/o/d;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/o/q;->f0(Ld/o/m;)Ld/o/q;

    new-instance v1, Ld/o/c;

    invoke-direct {v1}, Ld/o/c;-><init>()V

    invoke-virtual {p0, v1}, Ld/o/q;->f0(Ld/o/m;)Ld/o/q;

    new-instance v1, Ld/o/d;

    invoke-direct {v1, v0}, Ld/o/d;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/o/q;->f0(Ld/o/m;)Ld/o/q;

    return-void
.end method
