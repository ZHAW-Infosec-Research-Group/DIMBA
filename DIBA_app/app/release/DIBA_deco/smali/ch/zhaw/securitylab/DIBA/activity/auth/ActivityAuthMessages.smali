.class public Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Lch/zhaw/securitylab/DIBA/DIBA;

.field private D:Landroidx/recyclerview/widget/RecyclerView;

.field private E:Lch/zhaw/securitylab/DIBA/d/b/d;

.field private F:Landroid/widget/EditText;

.field private G:Landroid/widget/EditText;

.field private H:Lch/zhaw/securitylab/DIBA/d/b/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d0021

    const v2, 0x7f0a011f

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;IZ)V

    return-void
.end method

.method private a0()V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->H:Lch/zhaw/securitylab/DIBA/d/b/b;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->C:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/d/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-direct {v1, v0}, Lch/zhaw/securitylab/DIBA/d/b/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->D:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lch/zhaw/securitylab/DIBA/d/b/a;

    const/4 v1, 0x2

    const-string v2, "Please update to receive the messages"

    invoke-direct {v0, v2, v1}, Lch/zhaw/securitylab/DIBA/d/b/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->Z(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/g;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/auth/g;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;)V

    return-object v0
.end method

.method private e0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/auth/f;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/auth/f;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;)V

    return-object v0
.end method

.method private f0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object v0

    const-string v1, "/messages"

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v1, Lch/zhaw/securitylab/DIBA/g/d/p;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/g/d/p;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;)V

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method private h0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->H:Lch/zhaw/securitylab/DIBA/d/b/b;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->C:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lch/zhaw/securitylab/DIBA/d/b/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/d/b/d;->y()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/d/b/d;->w(Ljava/util/List;)V

    return-void
.end method

.method private i0(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lch/zhaw/securitylab/DIBA/d/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lch/zhaw/securitylab/DIBA/d/b/a;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->H:Lch/zhaw/securitylab/DIBA/d/b/b;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->C:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {v2}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lch/zhaw/securitylab/DIBA/d/b/b;->a(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Z

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/d/b/d;->x(Lch/zhaw/securitylab/DIBA/d/b/a;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v2}, Lch/zhaw/securitylab/DIBA/d/b/d;->c()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->g1(I)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    const-string v1, "/messages"

    invoke-virtual {p1, v1}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->c(Lch/zhaw/securitylab/DIBA/d/a/a;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/p;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/g/d/p;-><init>(Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;)V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->g0()V

    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, "Fetched new messages from server."

    return-object v0
.end method

.method public Z(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/d/b/d;->y()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v0, p1}, Lch/zhaw/securitylab/DIBA/d/b/d;->w(Ljava/util/List;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/d;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->i(II)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->E:Lch/zhaw/securitylab/DIBA/d/b/d;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/d/b/d;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->g1(I)V

    return-void
.end method

.method public synthetic b0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->F:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->i0(Ljava/lang/String;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->F:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->f0()V

    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->G:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->h0(Ljava/lang/String;)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->f0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->C:Lch/zhaw/securitylab/DIBA/DIBA;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->d()Lch/zhaw/securitylab/DIBA/d/b/b;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->H:Lch/zhaw/securitylab/DIBA/d/b/b;

    const p1, 0x7f0a0178

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->G:Landroid/widget/EditText;

    const p1, 0x7f0a00f0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->F:Landroid/widget/EditText;

    const p1, 0x7f0a00f2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->d0()Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f0a00ef

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->e0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v0, v0, [I

    const v1, 0x7f0a0177

    aput v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->H:Lch/zhaw/securitylab/DIBA/d/b/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/b;->e()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMessages;->a0()V

    return-void
.end method
