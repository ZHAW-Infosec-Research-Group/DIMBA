.class public final Lg/y$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Lg/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/y$b;

    invoke-direct {v0}, Lg/y$b;-><init>()V

    sput-object v0, Lg/y$b;->a:Lg/y$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
