.class Ld/g/l/a0$h;
.super Ld/g/l/a0$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/l/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private e:Ld/g/e/b;


# direct methods
.method constructor <init>(Ld/g/l/a0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g/l/a0$g;-><init>(Ld/g/l/a0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/g/l/a0$h;->e:Ld/g/e/b;

    return-void
.end method

.method constructor <init>(Ld/g/l/a0;Ld/g/l/a0$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g/l/a0$g;-><init>(Ld/g/l/a0;Ld/g/l/a0$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/g/l/a0$h;->e:Ld/g/e/b;

    return-void
.end method


# virtual methods
.method e()Ld/g/e/b;
    .locals 1

    iget-object v0, p0, Ld/g/l/a0$h;->e:Ld/g/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/g/l/a0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ld/g/e/b;->b(Landroid/graphics/Insets;)Ld/g/e/b;

    move-result-object v0

    iput-object v0, p0, Ld/g/l/a0$h;->e:Ld/g/e/b;

    :cond_0
    iget-object v0, p0, Ld/g/l/a0$h;->e:Ld/g/e/b;

    return-object v0
.end method

.method h(IIII)Ld/g/l/a0;
    .locals 1

    iget-object v0, p0, Ld/g/l/a0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Ld/g/l/a0;->p(Landroid/view/WindowInsets;)Ld/g/l/a0;

    move-result-object p1

    return-object p1
.end method
