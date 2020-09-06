.class Le/c/b/w/c$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/w/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/w/c;->a(Le/c/b/x/a;)Le/c/b/w/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/b/w/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/c/b/h;

.field final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Le/c/b/w/c;Le/c/b/h;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p2, p0, Le/c/b/w/c$g;->a:Le/c/b/h;

    iput-object p3, p0, Le/c/b/w/c$g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/w/c$g;->a:Le/c/b/h;

    iget-object v1, p0, Le/c/b/w/c$g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Le/c/b/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
