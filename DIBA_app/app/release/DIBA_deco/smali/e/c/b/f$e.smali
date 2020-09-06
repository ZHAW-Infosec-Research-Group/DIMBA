.class final Le/c/b/f$e;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/f;->a(Le/c/b/t;)Le/c/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/c/b/t;


# direct methods
.method constructor <init>(Le/c/b/t;)V
    .locals 0

    iput-object p1, p0, Le/c/b/f$e;->a:Le/c/b/t;

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Le/c/b/f$e;->d(Le/c/b/y/a;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 3

    iget-object v0, p0, Le/c/b/f$e;->a:Le/c/b/t;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
