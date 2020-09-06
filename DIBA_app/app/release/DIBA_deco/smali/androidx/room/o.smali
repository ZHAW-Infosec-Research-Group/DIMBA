.class Landroidx/room/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/n/a/c$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Ld/n/a/c$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ld/n/a/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/o;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/o;->b:Ljava/io/File;

    iput-object p3, p0, Landroidx/room/o;->c:Ld/n/a/c$c;

    return-void
.end method


# virtual methods
.method public create(Ld/n/a/c$b;)Ld/n/a/c;
    .locals 7

    new-instance v6, Landroidx/room/n;

    iget-object v1, p1, Ld/n/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/o;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/o;->b:Ljava/io/File;

    iget-object v0, p1, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    iget v4, v0, Ld/n/a/c$a;->a:I

    iget-object v0, p0, Landroidx/room/o;->c:Ld/n/a/c$c;

    invoke-interface {v0, p1}, Ld/n/a/c$c;->create(Ld/n/a/c$b;)Ld/n/a/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILd/n/a/c;)V

    return-object v6
.end method
