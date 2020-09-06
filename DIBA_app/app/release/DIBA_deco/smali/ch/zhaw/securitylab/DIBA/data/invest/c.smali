.class public Lch/zhaw/securitylab/DIBA/data/invest/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lch/zhaw/securitylab/DIBA/d/a/a;


# static fields
.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/math/BigDecimal;

.field private e:Ljava/math/BigDecimal;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string v2, "dd.MM.yy:HH.mm.ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lch/zhaw/securitylab/DIBA/data/invest/c;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->c:Ljava/util/Date;

    iput-object p3, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->d:Ljava/math/BigDecimal;

    iput-object p4, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->e:Ljava/math/BigDecimal;

    iput-object p5, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lch/zhaw/securitylab/DIBA/data/invest/c;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/data/invest/c;->f()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/data/invest/c;->c()Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "amount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/data/invest/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->b:Ljava/lang/String;

    const-string v2, "owner"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->e:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amountSFr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->f:Ljava/lang/String;

    const-string v2, "currency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public d()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->e:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->c:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->a:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lch/zhaw/securitylab/DIBA/data/invest/c;->a:I

    return-void
.end method
