.class Ld/n/a/g/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/n/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ld/n/a/g/a;Ld/n/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/n/a/c$a;

.field final synthetic b:[Ld/n/a/g/a;


# direct methods
.method constructor <init>(Ld/n/a/c$a;[Ld/n/a/g/a;)V
    .locals 0

    iput-object p1, p0, Ld/n/a/g/b$a$a;->a:Ld/n/a/c$a;

    iput-object p2, p0, Ld/n/a/g/b$a$a;->b:[Ld/n/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Ld/n/a/g/b$a$a;->a:Ld/n/a/c$a;

    iget-object v1, p0, Ld/n/a/g/b$a$a;->b:[Ld/n/a/g/a;

    invoke-static {v1, p1}, Ld/n/a/g/b$a;->n([Ld/n/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)Ld/n/a/g/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/n/a/c$a;->c(Ld/n/a/b;)V

    return-void
.end method
