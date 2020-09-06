.class Le/c/b/w/k/m$a0$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/k/m$a0;->a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/c/b/w/k/m$a0;


# direct methods
.method constructor <init>(Le/c/b/w/k/m$a0;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Le/c/b/w/k/m$a0$a;->a:Le/c/b/w/k/m$a0;

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
            "TT1;)V"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/k/m$a0$a;->a:Le/c/b/w/k/m$a0;

    iget-object v0, v0, Le/c/b/w/k/m$a0;->c:Le/c/b/t;

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
