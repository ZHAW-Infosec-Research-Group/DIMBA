.class Le/c/b/w/d$a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/d;->a(Le/c/b/f;Le/c/b/x/a;)Le/c/b/t;
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
.field private a:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Le/c/b/f;

.field final synthetic d:Le/c/b/x/a;

.field final synthetic e:Le/c/b/w/d;


# direct methods
.method constructor <init>(Le/c/b/w/d;ZZLe/c/b/f;Le/c/b/x/a;)V
    .locals 0

    iput-object p1, p0, Le/c/b/w/d$a;->e:Le/c/b/w/d;

    iput-boolean p3, p0, Le/c/b/w/d$a;->b:Z

    iput-object p4, p0, Le/c/b/w/d$a;->c:Le/c/b/f;

    iput-object p5, p0, Le/c/b/w/d$a;->d:Le/c/b/x/a;

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method

.method private d()Le/c/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/d$a;->a:Le/c/b/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/w/d$a;->c:Le/c/b/f;

    iget-object v1, p0, Le/c/b/w/d$a;->e:Le/c/b/w/d;

    iget-object v2, p0, Le/c/b/w/d$a;->d:Le/c/b/x/a;

    invoke-virtual {v0, v1, v2}, Le/c/b/f;->h(Le/c/b/u;Le/c/b/x/a;)Le/c/b/t;

    move-result-object v0

    iput-object v0, p0, Le/c/b/w/d$a;->a:Le/c/b/t;

    :goto_0
    return-object v0
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

    iget-boolean v0, p0, Le/c/b/w/d$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-direct {p0}, Le/c/b/w/d$a;->d()Le/c/b/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
