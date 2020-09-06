.class public final Lg/i0/i/f$k;
.super Lg/i0/e/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/i0/i/f;->v0(ILg/i0/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/i0/i/f;

.field final synthetic f:I

.field final synthetic g:Lg/i0/i/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg/i0/i/f;ILg/i0/i/b;)V
    .locals 0

    iput-object p5, p0, Lg/i0/i/f$k;->e:Lg/i0/i/f;

    iput p6, p0, Lg/i0/i/f$k;->f:I

    iput-object p7, p0, Lg/i0/i/f$k;->g:Lg/i0/i/b;

    invoke-direct {p0, p3, p4}, Lg/i0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/i0/i/f$k;->e:Lg/i0/i/f;

    iget v1, p0, Lg/i0/i/f$k;->f:I

    iget-object v2, p0, Lg/i0/i/f$k;->g:Lg/i0/i/b;

    invoke-virtual {v0, v1, v2}, Lg/i0/i/f;->u0(ILg/i0/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/i0/i/f$k;->e:Lg/i0/i/f;

    invoke-static {v1, v0}, Lg/i0/i/f;->g(Lg/i0/i/f;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
