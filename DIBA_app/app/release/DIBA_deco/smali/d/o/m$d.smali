.class Ld/o/m$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Ld/o/s;

.field d:Ld/o/m0;

.field e:Ld/o/m;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Ld/o/m;Ld/o/m0;Ld/o/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/m$d;->a:Landroid/view/View;

    iput-object p2, p0, Ld/o/m$d;->b:Ljava/lang/String;

    iput-object p5, p0, Ld/o/m$d;->c:Ld/o/s;

    iput-object p4, p0, Ld/o/m$d;->d:Ld/o/m0;

    iput-object p3, p0, Ld/o/m$d;->e:Ld/o/m;

    return-void
.end method
