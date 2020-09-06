.class public interface abstract Lg/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/b;

    invoke-direct {v0}, Lg/b;-><init>()V

    sput-object v0, Lg/c;->a:Lg/c;

    new-instance v0, Lg/i0/c/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lg/i0/c/b;-><init>(Lg/t;ILf/s/b/d;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lg/g0;Lg/e0;)Lg/c0;
.end method
