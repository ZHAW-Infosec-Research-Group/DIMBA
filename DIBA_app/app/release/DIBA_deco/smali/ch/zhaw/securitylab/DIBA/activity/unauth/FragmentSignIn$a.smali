.class public Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;
.super Lch/zhaw/securitylab/DIBA/e/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;


# direct methods
.method public constructor <init>(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/DIBA;->u(Ljava/lang/String;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/s;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;->c:Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;->H1(Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn;)Lch/zhaw/securitylab/DIBA/c/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/zhaw/securitylab/DIBA/g/d/s;-><init>(Landroidx/appcompat/app/e;)V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->a:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->d(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/e/g;->b:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->d(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    const-string v0, "/register"

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentSignIn$a;->d([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
