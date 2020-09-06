.class final Lg/i0/f/g$a;
.super Lf/s/b/g;
.source ""

# interfaces
.implements Lf/s/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/f/g;->i(Lg/i0/f/b;)V
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
.field final synthetic b:Lg/h;

.field final synthetic c:Lg/v;

.field final synthetic d:Lg/a;


# direct methods
.method constructor <init>(Lg/h;Lg/v;Lg/a;)V
    .locals 0

    iput-object p1, p0, Lg/i0/f/g$a;->b:Lg/h;

    iput-object p2, p0, Lg/i0/f/g$a;->c:Lg/v;

    iput-object p3, p0, Lg/i0/f/g$a;->d:Lg/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/s/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/i0/f/g$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/i0/f/g$a;->b:Lg/h;

    invoke-virtual {v0}, Lg/h;->d()Lg/i0/l/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/i0/f/g$a;->c:Lg/v;

    invoke-virtual {v1}, Lg/v;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lg/i0/f/g$a;->d:Lg/a;

    invoke-virtual {v2}, Lg/a;->l()Lg/x;

    move-result-object v2

    invoke-virtual {v2}, Lg/x;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/i0/l/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lf/s/b/f;->g()V

    const/4 v0, 0x0

    throw v0
.end method
