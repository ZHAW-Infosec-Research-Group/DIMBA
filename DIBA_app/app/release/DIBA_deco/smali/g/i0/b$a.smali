.class public final Lg/i0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/b;->e(Lg/u;)Lg/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/u;


# direct methods
.method constructor <init>(Lg/u;)V
    .locals 0

    iput-object p1, p0, Lg/i0/b$a;->a:Lg/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/f;)Lg/u;
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lf/s/b/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/i0/b$a;->a:Lg/u;

    return-object p1
.end method
