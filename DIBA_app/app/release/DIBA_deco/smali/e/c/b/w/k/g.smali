.class public final Le/c/b/w/k/g;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/c/b/u;


# instance fields
.field private final a:Le/c/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/w/k/g$a;

    invoke-direct {v0}, Le/c/b/w/k/g$a;-><init>()V

    sput-object v0, Le/c/b/w/k/g;->b:Le/c/b/u;

    return-void
.end method

.method constructor <init>(Le/c/b/f;)V
    .locals 0

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    iput-object p1, p0, Le/c/b/w/k/g;->a:Le/c/b/f;

    return-void
.end method


# virtual methods
.method public c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    iget-object v0, p0, Le/c/b/w/k/g;->a:Le/c/b/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/f;->g(Ljava/lang/Class;)Le/c/b/t;

    move-result-object v0

    instance-of v1, v0, Le/c/b/w/k/g;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    return-void
.end method
