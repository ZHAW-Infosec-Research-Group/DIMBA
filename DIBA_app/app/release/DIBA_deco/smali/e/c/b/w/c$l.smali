.class Le/c/b/w/c$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/w/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Le/c/b/w/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/b/w/g<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/c/b/w/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method
