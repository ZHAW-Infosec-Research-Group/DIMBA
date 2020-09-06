.class public final enum Le/b/a/a/c/i$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/c/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/b/a/a/c/i$b;

.field public static final enum c:Le/b/a/a/c/i$b;

.field private static final synthetic d:[Le/b/a/a/c/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Le/b/a/a/c/i$b;

    const-string v1, "OUTSIDE_CHART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/a/c/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    new-instance v0, Le/b/a/a/c/i$b;

    const-string v1, "INSIDE_CHART"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/b/a/a/c/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/c/i$b;->c:Le/b/a/a/c/i$b;

    const/4 v1, 0x2

    new-array v1, v1, [Le/b/a/a/c/i$b;

    sget-object v4, Le/b/a/a/c/i$b;->b:Le/b/a/a/c/i$b;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Le/b/a/a/c/i$b;->d:[Le/b/a/a/c/i$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/c/i$b;
    .locals 1

    const-class v0, Le/b/a/a/c/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/c/i$b;

    return-object p0
.end method

.method public static values()[Le/b/a/a/c/i$b;
    .locals 1

    sget-object v0, Le/b/a/a/c/i$b;->d:[Le/b/a/a/c/i$b;

    invoke-virtual {v0}, [Le/b/a/a/c/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/c/i$b;

    return-object v0
.end method
