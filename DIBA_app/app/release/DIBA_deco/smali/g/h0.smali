.class public final enum Lg/h0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/h0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lg/h0;

.field public static final enum d:Lg/h0;

.field public static final enum e:Lg/h0;

.field public static final enum f:Lg/h0;

.field public static final enum g:Lg/h0;

.field private static final synthetic h:[Lg/h0;

.field public static final i:Lg/h0$a;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lg/h0;

    new-instance v1, Lg/h0;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    invoke-direct {v1, v2, v3, v4}, Lg/h0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/h0;->c:Lg/h0;

    aput-object v1, v0, v3

    new-instance v1, Lg/h0;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    invoke-direct {v1, v2, v3, v4}, Lg/h0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/h0;->d:Lg/h0;

    aput-object v1, v0, v3

    new-instance v1, Lg/h0;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    invoke-direct {v1, v2, v3, v4}, Lg/h0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/h0;->e:Lg/h0;

    aput-object v1, v0, v3

    new-instance v1, Lg/h0;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    invoke-direct {v1, v2, v3, v4}, Lg/h0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/h0;->f:Lg/h0;

    aput-object v1, v0, v3

    new-instance v1, Lg/h0;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    invoke-direct {v1, v2, v3, v4}, Lg/h0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/h0;->g:Lg/h0;

    aput-object v1, v0, v3

    sput-object v0, Lg/h0;->h:[Lg/h0;

    new-instance v0, Lg/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/h0$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/h0;->i:Lg/h0$a;

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

    iput-object p3, p0, Lg/h0;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/h0;
    .locals 1

    const-class v0, Lg/h0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/h0;

    return-object p0
.end method

.method public static values()[Lg/h0;
    .locals 1

    sget-object v0, Lg/h0;->h:[Lg/h0;

    invoke-virtual {v0}, [Lg/h0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/h0;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/h0;->b:Ljava/lang/String;

    return-object v0
.end method
