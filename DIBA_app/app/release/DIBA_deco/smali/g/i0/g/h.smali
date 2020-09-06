.class public final Lg/i0/g/h;
.super Lg/f0;
.source ""


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lh/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLh/g;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg/f0;-><init>()V

    iput-object p1, p0, Lg/i0/g/h;->c:Ljava/lang/String;

    iput-wide p2, p0, Lg/i0/g/h;->d:J

    iput-object p4, p0, Lg/i0/g/h;->e:Lh/g;

    return-void
.end method


# virtual methods
.method public n()J
    .locals 2

    iget-wide v0, p0, Lg/i0/g/h;->d:J

    return-wide v0
.end method

.method public o()Lg/z;
    .locals 2

    iget-object v0, p0, Lg/i0/g/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lg/z;->e:Lg/z$a;

    invoke-virtual {v1, v0}, Lg/z$a;->b(Ljava/lang/String;)Lg/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r()Lh/g;
    .locals 1

    iget-object v0, p0, Lg/i0/g/h;->e:Lh/g;

    return-object v0
.end method
