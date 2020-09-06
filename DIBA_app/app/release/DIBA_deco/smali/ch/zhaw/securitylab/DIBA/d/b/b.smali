.class public Lch/zhaw/securitylab/DIBA/d/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "message"

    const-string v2, "creationTime"

    const-string v3, "viewType"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/zhaw/securitylab/DIBA/d/b/b;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lch/zhaw/securitylab/DIBA/d/b/b;->c:Ljava/lang/String;

    sput-object v0, Lch/zhaw/securitylab/DIBA/d/b/b;->d:Ljava/lang/String;

    sput-object v0, Lch/zhaw/securitylab/DIBA/d/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DIBA"

    const-string v1, "MessagesDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lch/zhaw/securitylab/DIBA/e/c;

    const-string v4, "MessagesDB"

    const/4 v5, 0x1

    const-string v6, "messages"

    const-string v7, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, user TEXT NOT NULL, message TEXT NOT NULL, creationTime INTEGER NOT NULL, viewType INTEGER NOT NULL);"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lch/zhaw/securitylab/DIBA/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private d(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lch/zhaw/securitylab/DIBA/d/b/a;

    invoke-direct {v4, v1, v3, v2}, Lch/zhaw/securitylab/DIBA/d/b/a;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private g(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lch/zhaw/securitylab/DIBA/d/b/b;->i(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists multiple times"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DIBA"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->d()Ljava/lang/String;

    move-result-object p2

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->c()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "creationTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "viewType"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "messages"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lch/zhaw/securitylab/DIBA/d/b/b;->b:[Ljava/lang/String;

    sget-object v6, Lch/zhaw/securitylab/DIBA/d/b/b;->c:Ljava/lang/String;

    sget-object v7, Lch/zhaw/securitylab/DIBA/d/b/b;->d:Ljava/lang/String;

    sget-object v9, Lch/zhaw/securitylab/DIBA/d/b/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "messages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "creationTime"

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/zhaw/securitylab/DIBA/d/b/b;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    sget-object v4, Lch/zhaw/securitylab/DIBA/d/b/b;->b:[Ljava/lang/String;

    sget-object v7, Lch/zhaw/securitylab/DIBA/d/b/b;->c:Ljava/lang/String;

    sget-object v8, Lch/zhaw/securitylab/DIBA/d/b/b;->d:Ljava/lang/String;

    sget-object v10, Lch/zhaw/securitylab/DIBA/d/b/b;->e:Ljava/lang/String;

    const-string v3, "messages"

    const-string v5, "user = ?"

    const-string v9, "creationTime"

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/d/b/b;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 8

    const-string v0, "Alice: So what can I do to prevent SQL injection vulnerabilities?"

    const-string v1, "Bob: Make sure that you never create SQL statements in the code by using string concatenation and by directly inserting untrusted data, e.g., data received from the user. Instead, use a secure approach to create SQL statements."

    const-string v2, "Alice: OK\u2026 and how can I do this?"

    const-string v3, "Bob: Just use prepared statements and you should be fine."

    const-string v4, "Alice: Great, thanks and bye!"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/M/d/H"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    const-string v5, "Alice"

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2020/01/01/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    aget-object v6, v0, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "quote"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x2

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v5, 0x1

    :goto_3
    new-instance v7, Lch/zhaw/securitylab/DIBA/d/b/a;

    invoke-direct {v7, v6, v5, v4}, Lch/zhaw/securitylab/DIBA/d/b/a;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v5}, Lch/zhaw/securitylab/DIBA/d/b/b;->f(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/zhaw/securitylab/DIBA/d/b/a;

    invoke-direct {p0, v0, p2}, Lch/zhaw/securitylab/DIBA/d/b/b;->g(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lch/zhaw/securitylab/DIBA/d/b/b;->a(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, "\'1\'=\'1\'"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public i(Lch/zhaw/securitylab/DIBA/d/b/a;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/d/b/a;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v6, v0

    const/4 p1, 0x3

    aput-object p2, v6, p1

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lch/zhaw/securitylab/DIBA/d/b/b;->b:[Ljava/lang/String;

    sget-object v7, Lch/zhaw/securitylab/DIBA/d/b/b;->c:Ljava/lang/String;

    sget-object v8, Lch/zhaw/securitylab/DIBA/d/b/b;->d:Ljava/lang/String;

    sget-object v10, Lch/zhaw/securitylab/DIBA/d/b/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "messages"

    const-string v5, "message = ? AND creationTime = ? AND viewType = ? AND user = ?"

    const-string v9, "creationTime"

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/d/b/b;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lch/zhaw/securitylab/DIBA/d/b/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' AND user = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/d/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "messages"

    sget-object v4, Lch/zhaw/securitylab/DIBA/d/b/b;->b:[Ljava/lang/String;

    sget-object v7, Lch/zhaw/securitylab/DIBA/d/b/b;->c:Ljava/lang/String;

    sget-object v8, Lch/zhaw/securitylab/DIBA/d/b/b;->d:Ljava/lang/String;

    const-string v9, "creationTime"

    sget-object v10, Lch/zhaw/securitylab/DIBA/d/b/b;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/zhaw/securitylab/DIBA/d/b/b;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "DIBA"

    const-string v0, "SQL error in searchMessage: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
