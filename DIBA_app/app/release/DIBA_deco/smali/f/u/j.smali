.class public final Lf/u/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/u/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/u/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lf/u/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/u/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lf/s/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/s/a/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/u/c;Lf/s/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/u/c<",
            "+TT;>;",
            "Lf/s/a/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/u/j;->a:Lf/u/c;

    iput-object p2, p0, Lf/u/j;->b:Lf/s/a/b;

    return-void
.end method

.method public static final synthetic b(Lf/u/j;)Lf/u/c;
    .locals 0

    iget-object p0, p0, Lf/u/j;->a:Lf/u/c;

    return-object p0
.end method

.method public static final synthetic c(Lf/u/j;)Lf/s/a/b;
    .locals 0

    iget-object p0, p0, Lf/u/j;->b:Lf/s/a/b;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lf/u/j$a;

    invoke-direct {v0, p0}, Lf/u/j$a;-><init>(Lf/u/j;)V

    return-object v0
.end method
