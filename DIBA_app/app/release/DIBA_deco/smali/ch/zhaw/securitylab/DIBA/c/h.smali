.class public abstract Lch/zhaw/securitylab/DIBA/c/h;
.super Landroidx/appcompat/app/e;
.source ""


# instance fields
.field private A:Z

.field protected B:Lch/zhaw/securitylab/DIBA/c/h;

.field private t:Lch/zhaw/securitylab/DIBA/e/b;

.field private u:Landroidx/appcompat/widget/Toolbar;

.field private v:Landroidx/drawerlayout/widget/DrawerLayout;

.field private w:Lcom/google/android/material/navigation/NavigationView;

.field private x:I

.field private y:Lch/zhaw/securitylab/DIBA/c/j;

.field private z:I


# direct methods
.method public constructor <init>(ILch/zhaw/securitylab/DIBA/c/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method public constructor <init>(ILch/zhaw/securitylab/DIBA/c/j;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;IZ)V

    return-void
.end method

.method public constructor <init>(ILch/zhaw/securitylab/DIBA/c/j;IZ)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->x:I

    sget-object v1, Lch/zhaw/securitylab/DIBA/c/j;->b:Lch/zhaw/securitylab/DIBA/c/j;

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/c/h;->y:Lch/zhaw/securitylab/DIBA/c/j;

    iput v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->z:I

    iput p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->x:I

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/c/h;->y:Lch/zhaw/securitylab/DIBA/c/j;

    iput p3, p0, Lch/zhaw/securitylab/DIBA/c/h;->z:I

    iput-boolean p4, p0, Lch/zhaw/securitylab/DIBA/c/h;->A:Z

    return-void
.end method

.method private O()Z
    .locals 1

    const-string v0, "bug"

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/c/h;->V(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private P()Z
    .locals 1

    const-string v0, "info"

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/c/h;->V(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private R()V
    .locals 7

    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v3, p0, Lch/zhaw/securitylab/DIBA/c/h;->v:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v0, Landroidx/appcompat/app/b;

    iget-object v4, p0, Lch/zhaw/securitylab/DIBA/c/h;->u:Landroidx/appcompat/widget/Toolbar;

    const v5, 0x7f120075

    const v6, 0x7f120074

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/app/b;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/h;->v:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->i()V

    return-void
.end method

.method private S(Lch/zhaw/securitylab/DIBA/f/a;)V
    .locals 2

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/f/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->h(I)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->g(I)Landroid/view/View;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$c;)V

    iget p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->z:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->y:Lch/zhaw/securitylab/DIBA/c/j;

    sget-object v1, Lch/zhaw/securitylab/DIBA/c/j;->b:Lch/zhaw/securitylab/DIBA/c/j;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->Y()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->u:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->y:Lch/zhaw/securitylab/DIBA/c/j;

    sget-object v1, Lch/zhaw/securitylab/DIBA/c/j;->c:Lch/zhaw/securitylab/DIBA/c/j;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lch/zhaw/securitylab/DIBA/c/h$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lch/zhaw/securitylab/DIBA/f/c;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/f/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lch/zhaw/securitylab/DIBA/f/b;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/f/b;-><init>(Landroid/app/Activity;)V

    :goto_0
    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lch/zhaw/securitylab/DIBA/f/c;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/f/c;-><init>(Landroid/app/Activity;)V

    :cond_4
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->R()V

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/c/h;->S(Lch/zhaw/securitylab/DIBA/f/a;)V

    return-void
.end method

.method private U()Z
    .locals 1

    const-string v0, "autoUpdate"

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/c/h;->V(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private V(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "bug"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ch.zhaw.securitylab.DIBA.activity.auth.ActivityAuthMain"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method private W(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logged in as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private Y()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/c/h;->W(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->G(Landroidx/appcompat/widget/Toolbar;)V

    return-object v0
.end method


# virtual methods
.method protected J()V
    .locals 0

    return-void
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method public varargs L(Landroid/view/View$OnClickListener;[I)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/c/h;->t:Lch/zhaw/securitylab/DIBA/e/b;

    invoke-virtual {v3, v2, p1}, Lch/zhaw/securitylab/DIBA/e/b;->a(ILandroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs M(Ljava/lang/Class;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/c/h;->t:Lch/zhaw/securitylab/DIBA/e/b;

    invoke-virtual {v3, v2, p1}, Lch/zhaw/securitylab/DIBA/e/b;->b(ILjava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected Q()V
    .locals 0

    return-void
.end method

.method protected X(I)V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->v:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->v:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->onCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->A:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->x:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->setContentView(I)V

    :cond_1
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->T()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/ProviderSettings;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->J()V

    :cond_2
    new-instance p1, Lch/zhaw/securitylab/DIBA/e/b;

    invoke-direct {p1, p0}, Lch/zhaw/securitylab/DIBA/e/b;-><init>(Landroidx/appcompat/app/e;)V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->t:Lch/zhaw/securitylab/DIBA/e/b;

    iput-object p0, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/c/h;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0037

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a003c

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0045

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->J()V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->N()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->Q()V

    return v2

    :cond_4
    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/c/h;->K()V

    return v2
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/e;->onPostResume()V

    iget v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->z:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/c/h;->w:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    return-void
.end method
