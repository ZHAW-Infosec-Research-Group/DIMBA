.class public final Lf/u/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf/s/b/o/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/u/i;->a(Lf/u/c;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lf/s/b/o/a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lf/u/c;


# direct methods
.method public constructor <init>(Lf/u/c;)V
    .locals 0

    iput-object p1, p0, Lf/u/i$a;->b:Lf/u/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lf/u/i$a;->b:Lf/u/c;

    invoke-interface {v0}, Lf/u/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
