.class public Lnet/sqlcipher/database/SupportFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/n/a/c$c;


# instance fields
.field private final clearPassphrase:Z

.field private final hook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

.field private final passphrase:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/database/SupportFactory;-><init>([BLnet/sqlcipher/database/SQLiteDatabaseHook;)V

    return-void
.end method

.method public constructor <init>([BLnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/sqlcipher/database/SupportFactory;-><init>([BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V

    return-void
.end method

.method public constructor <init>([BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sqlcipher/database/SupportFactory;->passphrase:[B

    iput-object p2, p0, Lnet/sqlcipher/database/SupportFactory;->hook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    iput-boolean p3, p0, Lnet/sqlcipher/database/SupportFactory;->clearPassphrase:Z

    return-void
.end method


# virtual methods
.method public create(Ld/n/a/c$b;)Ld/n/a/c;
    .locals 4

    new-instance v0, Lnet/sqlcipher/database/SupportHelper;

    iget-object v1, p0, Lnet/sqlcipher/database/SupportFactory;->passphrase:[B

    iget-object v2, p0, Lnet/sqlcipher/database/SupportFactory;->hook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    iget-boolean v3, p0, Lnet/sqlcipher/database/SupportFactory;->clearPassphrase:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/sqlcipher/database/SupportHelper;-><init>(Ld/n/a/c$b;[BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V

    return-object v0
.end method
