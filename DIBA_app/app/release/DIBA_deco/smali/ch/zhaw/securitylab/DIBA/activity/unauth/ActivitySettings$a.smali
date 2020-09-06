.class Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->a0(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;


# direct methods
.method constructor <init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->d:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;

    iput-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->b:Ljava/lang/String;

    iget-object p3, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->c:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;->d:Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lch/zhaw/securitylab/DIBA/ProviderSettings;->c:Landroid/net/Uri;

    const-string p4, "_id=1"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
