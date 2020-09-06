.class Lcom/google/android/material/internal/g$h;
.super Landroidx/recyclerview/widget/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic f:Lcom/google/android/material/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/g;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/g$h;->f:Lcom/google/android/material/internal/g;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Ld/g/l/b0/c;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/k;->g(Landroid/view/View;Ld/g/l/b0/c;)V

    iget-object p1, p0, Lcom/google/android/material/internal/g$h;->f:Lcom/google/android/material/internal/g;

    iget-object p1, p1, Lcom/google/android/material/internal/g;->g:Lcom/google/android/material/internal/g$c;

    invoke-virtual {p1}, Lcom/google/android/material/internal/g$c;->z()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Ld/g/l/b0/c$b;->a(IIZ)Ld/g/l/b0/c$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld/g/l/b0/c;->c0(Ljava/lang/Object;)V

    return-void
.end method
