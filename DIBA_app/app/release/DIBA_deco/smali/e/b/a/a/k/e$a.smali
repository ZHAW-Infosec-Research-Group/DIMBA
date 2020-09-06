.class public abstract Le/b/a/a/k/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static c:I = -0x1


# instance fields
.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Le/b/a/a/k/e$a;->c:I

    iput v0, p0, Le/b/a/a/k/e$a;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a()Le/b/a/a/k/e$a;
.end method
