.class Ld/n/a/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/n/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/n/a/g/b$a;
    }
.end annotation


# instance fields
.field private final b:Ld/n/a/g/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld/n/a/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Ld/n/a/g/b;->g(Landroid/content/Context;Ljava/lang/String;Ld/n/a/c$a;)Ld/n/a/g/b$a;

    move-result-object p1

    iput-object p1, p0, Ld/n/a/g/b;->b:Ld/n/a/g/b$a;

    return-void
.end method

.method private g(Landroid/content/Context;Ljava/lang/String;Ld/n/a/c$a;)Ld/n/a/g/b$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ld/n/a/g/a;

    new-instance v1, Ld/n/a/g/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Ld/n/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ld/n/a/g/a;Ld/n/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ld/n/a/g/b;->b:Ld/n/a/g/b$a;

    invoke-virtual {v0}, Ld/n/a/g/b$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/n/a/g/b;->b:Ld/n/a/g/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Ld/n/a/b;
    .locals 1

    iget-object v0, p0, Ld/n/a/g/b;->b:Ld/n/a/g/b$a;

    invoke-virtual {v0}, Ld/n/a/g/b$a;->o()Ld/n/a/b;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Ld/n/a/g/b;->b:Ld/n/a/g/b$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
