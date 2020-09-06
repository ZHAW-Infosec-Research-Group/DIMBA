.class public Lch/zhaw/securitylab/DIBA/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroidx/appcompat/app/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/e/b;->a:Landroidx/appcompat/app/e;

    return-void
.end method

.method private d(Ljava/lang/Class;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    new-instance v0, Lch/zhaw/securitylab/DIBA/e/a;

    invoke-direct {v0, p0, p1}, Lch/zhaw/securitylab/DIBA/e/a;-><init>(Lch/zhaw/securitylab/DIBA/e/b;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/b;->a:Landroidx/appcompat/app/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lch/zhaw/securitylab/DIBA/e/b;->d(Ljava/lang/Class;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/e/b;->a(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Class;Landroid/view/View;)V
    .locals 1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/b;->a:Landroidx/appcompat/app/e;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/e/b;->a:Landroidx/appcompat/app/e;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
