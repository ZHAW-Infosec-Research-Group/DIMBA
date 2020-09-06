.class Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Ljava/util/ArrayList;Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;-><init>(Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public a(FLe/b/a/a/c/a;)Ljava/lang/String;
    .locals 0

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/stock/ActivityAuthStock$b;->a:Ljava/util/ArrayList;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
