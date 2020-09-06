.class public Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private final c:Lch/zhaw/securitylab/DIBA/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SFr"

    const-string v1, "Eur"

    const-string v2, "$"

    const-string v3, "\u00a3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;-><init>(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)V

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->c:Lch/zhaw/securitylab/DIBA/b$a;

    return-void
.end method

.method static synthetic a(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->c:Lch/zhaw/securitylab/DIBA/b$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    const-string v1, "currencyPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->b:Landroid/content/SharedPreferences;

    const-string v1, "already filled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    aget-object v2, v3, v2

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "1.5"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    const-string v4, "0.9"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->d:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const-string v4, "1.75"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
