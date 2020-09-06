.class public Lch/zhaw/securitylab/DIBA/h/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static h:[Ljava/lang/String;


# instance fields
.field private a:Le/c/b/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/h/c;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/c/b/g;

    invoke-direct {v0}, Le/c/b/g;-><init>()V

    invoke-virtual {v0}, Le/c/b/g;->b()Le/c/b/f;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->a:Le/c/b/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/h/a;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/h/a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->a:Le/c/b/f;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->h()Lch/zhaw/securitylab/DIBA/data/payment/b;

    move-result-object v1

    invoke-interface {v1}, Lch/zhaw/securitylab/DIBA/data/payment/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/f;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->a:Le/c/b/f;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->b()Lch/zhaw/securitylab/DIBA/data/invest/d;

    move-result-object v1

    invoke-interface {v1}, Lch/zhaw/securitylab/DIBA/data/invest/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/f;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->a:Le/c/b/f;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/DIBA;->d()Lch/zhaw/securitylab/DIBA/d/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lch/zhaw/securitylab/DIBA/d/b/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/f;->l(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->d:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    const-string v0, "/key"

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/n;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/g/d/n;-><init>(Lch/zhaw/securitylab/DIBA/h/c;)V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method private d()V
    .locals 6

    const-string v0, "{"

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    invoke-static {}, Lch/zhaw/securitylab/DIBA/ProviderSettings;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    return-void
.end method

.method private e(Landroid/app/Activity;)Z
    .locals 4

    new-instance v0, Lch/zhaw/securitylab/DIBA/h/b;

    const v1, 0x7f12002e

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lch/zhaw/securitylab/DIBA/h/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/h/c;->g:Ljava/lang/String;

    if-nez v2, :cond_1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lch/zhaw/securitylab/DIBA/h/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/h/c;->f:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic f(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lch/zhaw/securitylab/DIBA/h/c;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/h/c;-><init>()V

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/h/c;->b()V

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/h/c;->d()V

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/h/c;->c(Landroid/app/Activity;)V

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/h/c;->e(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Key couldn\'t be retrieved, aborted report."

    invoke-static {p0}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/h/c;->g()V

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/h/c;->h(Landroid/app/Activity;)V

    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "DIBA-report.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/h/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/g/b;->b()Lch/zhaw/securitylab/DIBA/g/b;

    move-result-object p1

    const-string v0, "/report"

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->h(Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/h/c;->f:Ljava/lang/String;

    const-string v1, "payLoad"

    invoke-virtual {p1, v1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->e(Ljava/lang/String;Ljava/lang/String;)Lch/zhaw/securitylab/DIBA/g/b;

    new-instance v0, Lch/zhaw/securitylab/DIBA/g/d/t;

    invoke-direct {v0}, Lch/zhaw/securitylab/DIBA/g/d/t;-><init>()V

    invoke-virtual {p1, v0}, Lch/zhaw/securitylab/DIBA/g/b;->g(Lch/zhaw/securitylab/DIBA/g/d/g;)Lch/zhaw/securitylab/DIBA/g/b;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/g/b;->a()V

    return-void
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Ld/g/d/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lch/zhaw/securitylab/DIBA/h/c;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->i(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/h/c;->g:Ljava/lang/String;

    return-void
.end method
