.class public final enum Le/b/a/a/c/e$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/c/e$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/b/a/a/c/e$g;

.field public static final enum c:Le/b/a/a/c/e$g;

.field public static final enum d:Le/b/a/a/c/e$g;

.field private static final synthetic e:[Le/b/a/a/c/e$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Le/b/a/a/c/e$g;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/a/c/e$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/c/e$g;->b:Le/b/a/a/c/e$g;

    new-instance v0, Le/b/a/a/c/e$g;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/b/a/a/c/e$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/c/e$g;->c:Le/b/a/a/c/e$g;

    new-instance v0, Le/b/a/a/c/e$g;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/b/a/a/c/e$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/a/c/e$g;->d:Le/b/a/a/c/e$g;

    const/4 v1, 0x3

    new-array v1, v1, [Le/b/a/a/c/e$g;

    sget-object v5, Le/b/a/a/c/e$g;->b:Le/b/a/a/c/e$g;

    aput-object v5, v1, v2

    sget-object v2, Le/b/a/a/c/e$g;->c:Le/b/a/a/c/e$g;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Le/b/a/a/c/e$g;->e:[Le/b/a/a/c/e$g;

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

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/c/e$g;
    .locals 1

    const-class v0, Le/b/a/a/c/e$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/c/e$g;

    return-object p0
.end method

.method public static values()[Le/b/a/a/c/e$g;
    .locals 1

    sget-object v0, Le/b/a/a/c/e$g;->e:[Le/b/a/a/c/e$g;

    invoke-virtual {v0}, [Le/b/a/a/c/e$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/c/e$g;

    return-object v0
.end method
