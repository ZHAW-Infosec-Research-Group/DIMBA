.class public final enum Le/a/a/n$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/a/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/a/a/n$c;

.field public static final enum c:Le/a/a/n$c;

.field public static final enum d:Le/a/a/n$c;

.field public static final enum e:Le/a/a/n$c;

.field private static final synthetic f:[Le/a/a/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Le/a/a/n$c;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/n$c;->b:Le/a/a/n$c;

    new-instance v0, Le/a/a/n$c;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/n$c;->c:Le/a/a/n$c;

    new-instance v0, Le/a/a/n$c;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/n$c;->d:Le/a/a/n$c;

    new-instance v0, Le/a/a/n$c;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Le/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/n$c;->e:Le/a/a/n$c;

    const/4 v1, 0x4

    new-array v1, v1, [Le/a/a/n$c;

    sget-object v6, Le/a/a/n$c;->b:Le/a/a/n$c;

    aput-object v6, v1, v2

    sget-object v2, Le/a/a/n$c;->c:Le/a/a/n$c;

    aput-object v2, v1, v3

    sget-object v2, Le/a/a/n$c;->d:Le/a/a/n$c;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Le/a/a/n$c;->f:[Le/a/a/n$c;

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

.method public static valueOf(Ljava/lang/String;)Le/a/a/n$c;
    .locals 1

    const-class v0, Le/a/a/n$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/a/n$c;

    return-object p0
.end method

.method public static values()[Le/a/a/n$c;
    .locals 1

    sget-object v0, Le/a/a/n$c;->f:[Le/a/a/n$c;

    invoke-virtual {v0}, [Le/a/a/n$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/n$c;

    return-object v0
.end method
