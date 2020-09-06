.class public final Le/c/b/w/k/a;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/c/b/u;


# instance fields
.field private final a:Le/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/t<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/w/k/a$a;

    invoke-direct {v0}, Le/c/b/w/k/a$a;-><init>()V

    sput-object v0, Le/c/b/w/k/a;->b:Le/c/b/u;

    return-void
.end method

.method public constructor <init>(Le/c/b/f;Le/c/b/t;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/f;",
            "Le/c/b/t<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    new-instance v0, Le/c/b/w/k/l;

    invoke-direct {v0, p1, p2, p3}, Le/c/b/w/k/l;-><init>(Le/c/b/f;Le/c/b/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Le/c/b/w/k/a;->a:Le/c/b/t;

    return-void
.end method


# virtual methods
.method public c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-virtual {p1}, Le/c/b/y/a;->o()Le/c/b/y/a;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Le/c/b/w/k/a;->a:Le/c/b/t;

    invoke-virtual {v3, p1, v2}, Le/c/b/t;->c(Le/c/b/y/a;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/c/b/y/a;->A()Le/c/b/y/a;

    return-void
.end method
