.class final Lf/v/i$a;
.super Lf/s/b/g;
.source ""

# interfaces
.implements Lf/s/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/i;->b(Ljava/lang/String;)Lf/s/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/s/b/g;",
        "Lf/s/a/b<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lf/v/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/v/i$a;

    invoke-direct {v0}, Lf/v/i$a;-><init>()V

    sput-object v0, Lf/v/i$a;->b:Lf/v/i$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lf/s/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/v/i$a;->d(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "line"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
