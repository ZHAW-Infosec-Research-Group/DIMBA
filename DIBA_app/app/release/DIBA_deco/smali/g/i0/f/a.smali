.class public final Lg/i0/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/y;


# static fields
.field public static final a:Lg/i0/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/i0/f/a;

    invoke-direct {v0}, Lg/i0/f/a;-><init>()V

    sput-object v0, Lg/i0/f/a;->a:Lg/i0/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/y$a;)Lg/e0;
    .locals 10

    const-string v0, "chain"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/i0/g/g;

    invoke-virtual {p1}, Lg/i0/g/g;->e()Lg/i0/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/i0/f/e;->p(Lg/i0/g/g;)Lg/i0/f/c;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lg/i0/g/g;->d(Lg/i0/g/g;ILg/i0/f/c;Lg/c0;IIIILjava/lang/Object;)Lg/i0/g/g;

    move-result-object v0

    invoke-virtual {p1}, Lg/i0/g/g;->i()Lg/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/i0/g/g;->a(Lg/c0;)Lg/e0;

    move-result-object p1

    return-object p1
.end method
