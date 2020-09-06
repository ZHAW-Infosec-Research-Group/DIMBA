.class public Lch/zhaw/securitylab/DIBA/d/b/c;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# instance fields
.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/d/b/c;->t:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/d/b/c;->u:Landroid/widget/TextView;

    return-void
.end method

.method public static N(Landroid/view/View;I)Lch/zhaw/securitylab/DIBA/d/b/c;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lch/zhaw/securitylab/DIBA/d/b/c;->P(Landroid/view/View;)Lch/zhaw/securitylab/DIBA/d/b/c;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lch/zhaw/securitylab/DIBA/d/b/c;->O(Landroid/view/View;)Lch/zhaw/securitylab/DIBA/d/b/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not an applicable view type. 1 or 2 is."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static O(Landroid/view/View;)Lch/zhaw/securitylab/DIBA/d/b/c;
    .locals 3

    new-instance v0, Lch/zhaw/securitylab/DIBA/d/b/c;

    const v1, 0x7f0a0165

    const v2, 0x7f0a0166

    invoke-direct {v0, p0, v1, v2}, Lch/zhaw/securitylab/DIBA/d/b/c;-><init>(Landroid/view/View;II)V

    return-object v0
.end method

.method private static P(Landroid/view/View;)Lch/zhaw/securitylab/DIBA/d/b/c;
    .locals 3

    new-instance v0, Lch/zhaw/securitylab/DIBA/d/b/c;

    const v1, 0x7f0a0186

    const v2, 0x7f0a0187

    invoke-direct {v0, p0, v1, v2}, Lch/zhaw/securitylab/DIBA/d/b/c;-><init>(Landroid/view/View;II)V

    return-object v0
.end method


# virtual methods
.method protected M(Lch/zhaw/securitylab/DIBA/d/b/a;)V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/c;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/c;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->c()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
