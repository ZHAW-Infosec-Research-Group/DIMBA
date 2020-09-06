.class public final enum Lch/zhaw/securitylab/DIBA/data/metasettings/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/zhaw/securitylab/DIBA/data/metasettings/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field public static final enum d:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field public static final enum e:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field public static final enum f:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field public static final enum g:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field private static final synthetic h:[Lch/zhaw/securitylab/DIBA/data/metasettings/b;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x0

    const-string v3, "LEVEL 1"

    invoke-direct {v0, v1, v2, v3}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "LEVEL_2"

    const/4 v3, 0x1

    const-string v4, "LEVEL 2"

    invoke-direct {v0, v1, v3, v4}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "LEVEL_3"

    const/4 v4, 0x2

    const-string v5, "LEVEL 3"

    invoke-direct {v0, v1, v4, v5}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->e:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "LEVEL_4"

    const/4 v5, 0x3

    const-string v6, "LEVEL 4"

    invoke-direct {v0, v1, v5, v6}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->f:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const-string v1, "LEVEL_5"

    const/4 v6, 0x4

    const-string v7, "LEVEL 5"

    invoke-direct {v0, v1, v6, v7}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->g:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const/4 v1, 0x5

    new-array v1, v1, [Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    sget-object v7, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    aput-object v7, v1, v2

    sget-object v2, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    aput-object v2, v1, v3

    sget-object v2, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->e:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    aput-object v2, v1, v4

    sget-object v2, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->f:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->h:[Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/data/metasettings/b;
    .locals 5

    invoke-static {}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->values()[Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/data/metasettings/b;
    .locals 1

    const-class v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    return-object p0
.end method

.method public static values()[Lch/zhaw/securitylab/DIBA/data/metasettings/b;
    .locals 1

    sget-object v0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->h:[Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    invoke-virtual {v0}, [Lch/zhaw/securitylab/DIBA/data/metasettings/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->b:Ljava/lang/String;

    return-object v0
.end method
