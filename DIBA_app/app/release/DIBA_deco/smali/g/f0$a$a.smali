.class public final Lg/f0$a$a;
.super Lg/f0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f0$a;->a(Lh/g;Lg/z;J)Lg/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lh/g;

.field final synthetic d:Lg/z;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lh/g;Lg/z;J)V
    .locals 0

    iput-object p1, p0, Lg/f0$a$a;->c:Lh/g;

    iput-object p2, p0, Lg/f0$a$a;->d:Lg/z;

    iput-wide p3, p0, Lg/f0$a$a;->e:J

    invoke-direct {p0}, Lg/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public n()J
    .locals 2

    iget-wide v0, p0, Lg/f0$a$a;->e:J

    return-wide v0
.end method

.method public o()Lg/z;
    .locals 1

    iget-object v0, p0, Lg/f0$a$a;->d:Lg/z;

    return-object v0
.end method

.method public r()Lh/g;
    .locals 1

    iget-object v0, p0, Lg/f0$a$a;->c:Lh/g;

    return-object v0
.end method
