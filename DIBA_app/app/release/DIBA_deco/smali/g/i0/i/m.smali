.class public interface abstract Lg/i0/i/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/i0/i/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/i0/i/l;

    invoke-direct {v0}, Lg/i0/i/l;-><init>()V

    sput-object v0, Lg/i0/i/m;->a:Lg/i0/i/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg/i0/i/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILg/i0/i/b;)V
.end method

.method public abstract d(ILh/g;IZ)Z
.end method
