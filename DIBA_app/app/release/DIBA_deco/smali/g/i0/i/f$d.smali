.class public abstract Lg/i0/i/f$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i0/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# static fields
.field public static final a:Lg/i0/i/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/i0/i/f$d$a;

    invoke-direct {v0}, Lg/i0/i/f$d$a;-><init>()V

    sput-object v0, Lg/i0/i/f$d;->a:Lg/i0/i/f$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/i0/i/f;Lg/i0/i/n;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lg/i0/i/i;)V
.end method
