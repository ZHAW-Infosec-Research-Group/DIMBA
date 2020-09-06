.class public Lnet/sqlcipher/database/SQLiteQueryStats;
.super Ljava/lang/Object;
.source ""


# instance fields
.field largestIndividualRowSize:J

.field totalQueryResultSize:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->totalQueryResultSize:J

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->largestIndividualRowSize:J

    iput-wide p1, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->totalQueryResultSize:J

    iput-wide p3, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->largestIndividualRowSize:J

    return-void
.end method


# virtual methods
.method public getLargestIndividualRowSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->largestIndividualRowSize:J

    return-wide v0
.end method

.method public getTotalQueryResultSize()J
    .locals 2

    iget-wide v0, p0, Lnet/sqlcipher/database/SQLiteQueryStats;->totalQueryResultSize:J

    return-wide v0
.end method
