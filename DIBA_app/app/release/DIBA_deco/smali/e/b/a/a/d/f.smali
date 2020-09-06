.class public abstract Le/b/a/a/d/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:F

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/d/f;->b:F

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/d/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/d/f;->b:F

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/a/a/d/f;->c:Ljava/lang/Object;

    iput p1, p0, Le/b/a/a/d/f;->b:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/b/a/a/d/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Le/b/a/a/d/f;->b:F

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/d/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Le/b/a/a/d/f;->b:F

    return-void
.end method
