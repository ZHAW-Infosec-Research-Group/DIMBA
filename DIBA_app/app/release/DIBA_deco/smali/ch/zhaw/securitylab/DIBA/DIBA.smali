.class public Lch/zhaw/securitylab/DIBA/DIBA;
.super Landroid/app/Application;
.source ""


# static fields
.field private static j:Lch/zhaw/securitylab/DIBA/DIBA;


# instance fields
.field private b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;

.field private c:Lch/zhaw/securitylab/DIBA/d/b/b;

.field private d:Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

.field private e:Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;

.field private f:Le/a/a/o;

.field private g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->g:Ljava/lang/String;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Lch/zhaw/securitylab/DIBA/DIBA;
    .locals 1

    sget-object v0, Lch/zhaw/securitylab/DIBA/DIBA;->j:Lch/zhaw/securitylab/DIBA/DIBA;

    return-object v0
.end method


# virtual methods
.method public b()Lch/zhaw/securitylab/DIBA/data/invest/d;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;->s()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lch/zhaw/securitylab/DIBA/d/b/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->c:Lch/zhaw/securitylab/DIBA/d/b/b;

    return-object v0
.end method

.method public e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;->s()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lch/zhaw/securitylab/DIBA/data/payment/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->e:Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;->s()Lch/zhaw/securitylab/DIBA/data/payment/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Le/a/a/o;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->f:Le/a/a/o;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/a;-><init>(Lch/zhaw/securitylab/DIBA/DIBA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public l()V
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/e/b;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/e/b;-><init>()V

    invoke-static {p0, v0}, Le/a/a/w/n;->b(Landroid/content/Context;Le/a/a/w/b;)Le/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->f:Le/a/a/o;

    return-void
.end method

.method public native loadsecret()Ljava/lang/String;
.end method

.method public synthetic m()V
    .locals 5

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;->s()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    sget-object v2, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->e:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    const v3, 0xc350

    const-string v4, "10.0.2.2"

    invoke-direct {v1, v4, v2, v3}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;-><init>(Ljava/lang/String;Lch/zhaw/securitylab/DIBA/data/metasettings/b;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->i(I)V

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->c(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V

    const-string v0, "DIBA"

    const-string v1, "Create Metasettings Entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/invest/d;->a()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->c:Lch/zhaw/securitylab/DIBA/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/d/b/b;->h()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-class v0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;

    const-string v1, "investments"

    invoke-static {p0, v0, v1}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/j$a;->b()Landroidx/room/j;

    move-result-object v0

    check-cast v0, Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->b:Lch/zhaw/securitylab/DIBA/data/invest/InvestmentDb;

    const-class v0, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    const-string v1, "metasettings"

    invoke-static {p0, v0, v1}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/j$a;->a()Landroidx/room/j$a;

    invoke-virtual {v0}, Landroidx/room/j$a;->b()Landroidx/room/j;

    move-result-object v0

    check-cast v0, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->d:Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    new-instance v0, Lch/zhaw/securitylab/DIBA/d/b/b;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/d/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->c:Lch/zhaw/securitylab/DIBA/d/b/b;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->loadsecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lnet/sqlcipher/database/SupportFactory;

    invoke-direct {v1, v0}, Lnet/sqlcipher/database/SupportFactory;-><init>([B)V

    const-class v0, Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;

    const-string v2, "payments"

    invoke-static {p0, v0, v2}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/room/j$a;->c(Ld/n/a/c$c;)Landroidx/room/j$a;

    invoke-virtual {v0}, Landroidx/room/j$a;->b()Landroidx/room/j;

    move-result-object v0

    check-cast v0, Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/DIBA;->e:Lch/zhaw/securitylab/DIBA/data/payment/PaymentDb;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->k()V

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->l()V

    sput-object p0, Lch/zhaw/securitylab/DIBA/DIBA;->j:Lch/zhaw/securitylab/DIBA/DIBA;

    return-void
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/DIBA;->e()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->a()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/DIBA;->s(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/zhaw/securitylab/DIBA/DIBA;->u(Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/DIBA;->h:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/DIBA;->i:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/DIBA;->g:Ljava/lang/String;

    return-void
.end method
