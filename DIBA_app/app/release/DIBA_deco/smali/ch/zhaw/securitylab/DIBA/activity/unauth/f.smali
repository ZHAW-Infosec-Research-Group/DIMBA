.class public final synthetic Lch/zhaw/securitylab/DIBA/activity/unauth/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

.field public final synthetic c:Lch/zhaw/securitylab/DIBA/data/metasettings/c;


# direct methods
.method public synthetic constructor <init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/f;->b:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/f;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/f;->b:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/f;->c:Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    invoke-virtual {v0, v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->d0(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V

    return-void
.end method
