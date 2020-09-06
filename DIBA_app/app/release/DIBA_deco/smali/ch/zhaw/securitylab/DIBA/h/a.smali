.class public final synthetic Lch/zhaw/securitylab/DIBA/h/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/h/a;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/h/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/h/c;->f(Landroid/app/Activity;)V

    return-void
.end method
