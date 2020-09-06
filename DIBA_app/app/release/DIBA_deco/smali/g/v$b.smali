.class final Lg/v$b;
.super Lf/s/b/g;
.source ""

# interfaces
.implements Lf/s/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/v;-><init>(Lg/h0;Lg/j;Ljava/util/List;Lf/s/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/s/b/g;",
        "Lf/s/a/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lf/s/a/a;


# direct methods
.method constructor <init>(Lf/s/a/a;)V
    .locals 0

    iput-object p1, p0, Lg/v$b;->b:Lf/s/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/s/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/v$b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lg/v$b;->b:Lf/s/a/a;

    invoke-interface {v0}, Lf/s/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lf/o/j;->f()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
