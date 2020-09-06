.class public interface abstract Lg/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/s;

    invoke-direct {v0}, Lg/s;-><init>()V

    sput-object v0, Lg/t;->a:Lg/t;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
