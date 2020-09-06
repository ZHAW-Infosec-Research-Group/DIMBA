.class Ld/o/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/o/c;->n(Landroid/view/ViewGroup;Ld/o/s;Ld/o/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/o/c$k;

.field private mViewBounds:Ld/o/c$k;


# direct methods
.method constructor <init>(Ld/o/c;Ld/o/c$k;)V
    .locals 0

    iput-object p2, p0, Ld/o/c$h;->a:Ld/o/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Ld/o/c$h;->a:Ld/o/c$k;

    iput-object p1, p0, Ld/o/c$h;->mViewBounds:Ld/o/c$k;

    return-void
.end method
