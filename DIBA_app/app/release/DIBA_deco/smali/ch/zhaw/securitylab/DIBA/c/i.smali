.class public abstract Lch/zhaw/securitylab/DIBA/c/i;
.super Landroidx/fragment/app/Fragment;
.source ""


# instance fields
.field private X:I

.field private Y:I

.field protected Z:Landroid/view/View;

.field protected a0:Lch/zhaw/securitylab/DIBA/c/h;

.field protected b0:Landroid/widget/EditText;

.field protected c0:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/zhaw/securitylab/DIBA/c/i;-><init>(IIZ)V

    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->X:I

    iput p2, p0, Lch/zhaw/securitylab/DIBA/c/i;->Y:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->j1(Z)V

    return-void
.end method

.method static synthetic B1(Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p2}, Lch/zhaw/securitylab/DIBA/c/i;->y1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private D1()Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/c/f;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/c/f;-><init>(Lch/zhaw/securitylab/DIBA/c/i;)V

    return-object v0
.end method

.method private E1(Landroid/view/View;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/c/c;

    invoke-direct {v0, p1}, Lch/zhaw/securitylab/DIBA/c/c;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private F1()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/c/d;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/c/d;-><init>(Lch/zhaw/securitylab/DIBA/c/i;)V

    return-object v0
.end method

.method private s1()Z
    .locals 4

    new-instance v0, Lch/zhaw/securitylab/DIBA/e/e;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/i;->b0:Landroid/widget/EditText;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/i;->x1()Lch/zhaw/securitylab/DIBA/e/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/zhaw/securitylab/DIBA/e/e;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lch/zhaw/securitylab/DIBA/e/g;)V

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/e/e;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method private static y1(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public synthetic A1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p2}, Lch/zhaw/securitylab/DIBA/c/i;->y1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/i;->s1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic C1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/i;->s1()Z

    return-void
.end method

.method protected G1()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->b0:Landroid/widget/EditText;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lch/zhaw/securitylab/DIBA/c/i;->E1(Landroid/view/View;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/i;->D1()Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public g0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public h0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget p3, p0, Lch/zhaw/securitylab/DIBA/c/i;->Y:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/d;

    move-result-object p1

    check-cast p1, Lch/zhaw/securitylab/DIBA/c/h;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p2, p0, Lch/zhaw/securitylab/DIBA/c/i;->X:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    return-object p1
.end method

.method public r0(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a003c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->r0(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->p1(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected t1(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected u1(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lch/zhaw/securitylab/DIBA/c/e;

    invoke-direct {v0, p0, p2}, Lch/zhaw/securitylab/DIBA/c/e;-><init>(Lch/zhaw/securitylab/DIBA/c/i;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/i;->t1(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected v1(II)V
    .locals 1

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/i;->F1()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/i;->t1(ILandroid/view/View$OnClickListener;)V

    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;

    invoke-virtual {p0, p2, p1}, Lch/zhaw/securitylab/DIBA/c/i;->u1(ILjava/lang/Class;)V

    return-void
.end method

.method protected w1(II)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->b0:Landroid/widget/EditText;

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->Z:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/i;->c0:Landroid/widget/EditText;

    return-void
.end method

.method protected abstract x1()Lch/zhaw/securitylab/DIBA/e/g;
.end method

.method public synthetic z1(Ljava/lang/Class;Landroid/view/View;)V
    .locals 1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/i;->a0:Lch/zhaw/securitylab/DIBA/c/h;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->p1(Landroid/content/Intent;)V

    return-void
.end method
