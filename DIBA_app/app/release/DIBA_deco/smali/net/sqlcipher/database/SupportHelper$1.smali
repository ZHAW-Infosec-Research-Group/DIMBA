.class Lnet/sqlcipher/database/SupportHelper$1;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sqlcipher/database/SupportHelper;-><init>(Ld/n/a/c$b;[BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sqlcipher/database/SupportHelper;

.field final synthetic val$configuration:Ld/n/a/c$b;


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SupportHelper;Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Ld/n/a/c$b;)V
    .locals 6

    iput-object p1, p0, Lnet/sqlcipher/database/SupportHelper$1;->this$0:Lnet/sqlcipher/database/SupportHelper;

    iput-object p7, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    iget-object v0, v0, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    invoke-virtual {v0, p1}, Ld/n/a/c$a;->b(Ld/n/a/b;)V

    return-void
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    iget-object v0, v0, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    invoke-virtual {v0, p1}, Ld/n/a/c$a;->d(Ld/n/a/b;)V

    return-void
.end method

.method public onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    iget-object v0, v0, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    invoke-virtual {v0, p1, p2, p3}, Ld/n/a/c$a;->e(Ld/n/a/b;II)V

    return-void
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    iget-object v0, v0, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    invoke-virtual {v0, p1}, Ld/n/a/c$a;->f(Ld/n/a/b;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ld/n/a/c$b;

    iget-object v0, v0, Ld/n/a/c$b;->c:Ld/n/a/c$a;

    invoke-virtual {v0, p1, p2, p3}, Ld/n/a/c$a;->g(Ld/n/a/b;II)V

    return-void
.end method
