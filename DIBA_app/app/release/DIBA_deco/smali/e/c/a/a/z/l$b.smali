.class final Le/c/a/a/z/l$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/z/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Le/c/a/a/z/k;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Le/c/a/a/z/l$a;

.field public final e:F


# direct methods
.method constructor <init>(Le/c/a/a/z/k;FLandroid/graphics/RectF;Le/c/a/a/z/l$a;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Le/c/a/a/z/l$b;->d:Le/c/a/a/z/l$a;

    iput-object p1, p0, Le/c/a/a/z/l$b;->a:Le/c/a/a/z/k;

    iput p2, p0, Le/c/a/a/z/l$b;->e:F

    iput-object p3, p0, Le/c/a/a/z/l$b;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Le/c/a/a/z/l$b;->b:Landroid/graphics/Path;

    return-void
.end method
