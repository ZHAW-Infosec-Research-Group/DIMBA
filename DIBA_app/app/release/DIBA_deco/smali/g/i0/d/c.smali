.class public final Lg/i0/d/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i0/d/c$b;,
        Lg/i0/d/c$a;
    }
.end annotation


# static fields
.field public static final c:Lg/i0/d/c$a;


# instance fields
.field private final a:Lg/c0;

.field private final b:Lg/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/i0/d/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/i0/d/c$a;-><init>(Lf/s/b/d;)V

    sput-object v0, Lg/i0/d/c;->c:Lg/i0/d/c$a;

    return-void
.end method

.method public constructor <init>(Lg/c0;Lg/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/i0/d/c;->a:Lg/c0;

    iput-object p2, p0, Lg/i0/d/c;->b:Lg/e0;

    return-void
.end method


# virtual methods
.method public final a()Lg/e0;
    .locals 1

    iget-object v0, p0, Lg/i0/d/c;->b:Lg/e0;

    return-object v0
.end method

.method public final b()Lg/c0;
    .locals 1

    iget-object v0, p0, Lg/i0/d/c;->a:Lg/c0;

    return-object v0
.end method
