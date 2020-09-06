.class Le/c/b/t$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/t;->a()Le/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/c/b/t;


# direct methods
.method constructor <init>(Le/c/b/t;)V
    .locals 0

    iput-object p1, p0, Le/c/b/t$a;->a:Le/c/b/t;

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/y/a;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/t$a;->a:Le/c/b/t;

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
