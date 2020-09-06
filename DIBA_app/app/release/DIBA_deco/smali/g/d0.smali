.class public abstract Lg/d0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/d0$a;
    }
.end annotation


# static fields
.field public static final a:Lg/d0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/d0$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/d0;->a:Lg/d0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lg/z;
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e(Lh/f;)V
.end method
