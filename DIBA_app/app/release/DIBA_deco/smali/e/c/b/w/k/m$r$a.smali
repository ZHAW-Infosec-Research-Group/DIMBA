.class Le/c/b/w/k/m$r$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/k/m$r;->a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/c/b/t;


# direct methods
.method constructor <init>(Le/c/b/w/k/m$r;Le/c/b/t;)V
    .locals 0

    iput-object p2, p0, Le/c/b/w/k/m$r$a;->a:Le/c/b/t;

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/m$r$a;->d(Le/c/b/y/a;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/sql/Timestamp;)V
    .locals 1

    iget-object v0, p0, Le/c/b/w/k/m$r$a;->a:Le/c/b/t;

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
