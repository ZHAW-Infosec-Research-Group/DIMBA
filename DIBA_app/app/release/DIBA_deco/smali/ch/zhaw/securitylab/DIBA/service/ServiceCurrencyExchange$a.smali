.class Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;
.super Lch/zhaw/securitylab/DIBA/b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;->a:Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;->a:Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;

    invoke-static {v1}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->a(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;->a:Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->a(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange$a;->a:Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;->a(Lch/zhaw/securitylab/DIBA/service/ServiceCurrencyExchange;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unknown Currency"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
