.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;
.super Lch/zhaw/securitylab/DIBA/e/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;


# direct methods
.method public constructor <init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/e/g;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->I1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->J1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    const v1, 0x7f120039

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->H(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->K1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/DIBA;->u(Ljava/lang/String;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/o;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;->H1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin;)Lch/zhaw/securitylab/DIBA/c/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/zhaw/securitylab/DIBA/g/d/o;-><init>(Landroidx/appcompat/app/e;)V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->a:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->d(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->b:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->d(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    const-string v0, "/login"

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->d([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentLogin$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
