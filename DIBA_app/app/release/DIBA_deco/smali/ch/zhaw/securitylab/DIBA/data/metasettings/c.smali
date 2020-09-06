.class public Lch/zhaw/securitylab/DIBA/data/metasettings/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lch/zhaw/securitylab/DIBA/data/metasettings/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    iput p3, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Lch/zhaw/securitylab/DIBA/data/metasettings/b;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a:I

    return v0
.end method

.method public e(Lch/zhaw/securitylab/DIBA/data/metasettings/b;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->a(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->e(Lch/zhaw/securitylab/DIBA/data/metasettings/b;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "difficulty must be !empty, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->d:I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a:I

    return-void
.end method
