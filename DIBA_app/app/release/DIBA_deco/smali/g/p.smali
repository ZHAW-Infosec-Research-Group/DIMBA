.class public interface abstract Lg/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/o;

    invoke-direct {v0}, Lg/o;-><init>()V

    sput-object v0, Lg/p;->a:Lg/p;

    return-void
.end method


# virtual methods
.method public abstract a(Lg/x;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/x;",
            ")",
            "Ljava/util/List<",
            "Lg/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lg/x;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/x;",
            "Ljava/util/List<",
            "Lg/n;",
            ">;)V"
        }
    .end annotation
.end method
