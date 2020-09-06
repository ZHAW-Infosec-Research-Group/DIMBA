.class public Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->d:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d002d

    const v2, 0x7f0a0122

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method


# virtual methods
.method public Z()Z
    .locals 28

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "Detected Rooted Device!"

    const-string v6, "DIBA"

    const/4 v7, 0x1

    if-ge v3, v1, :cond_1

    aget-object v8, v0, v3

    new-instance v9, Ljava/io/File;

    const-string v10, "su"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_2
    const/16 v0, 0x14

    const-string v8, "/system/app/Superuser.apk"

    const-string v9, "/system/xbin/daemonsu"

    const-string v10, "/system/etc/init.d/99SuperSUDaemon"

    const-string v11, "/system/bin/.ext/.su"

    const-string v12, "/system/etc/.has_su_daemon"

    const-string v13, "/system/etc/.installed_su_daemon"

    const-string v14, "/dev/com.koushikdutta.superuser.daemon/"

    const-string v15, "/system/app/Superuser/Superuser.apk"

    const-string v16, "/system/app/Superuser.apk"

    const-string v17, "/sbin/su"

    const-string v18, "/system/bin/su"

    const-string v19, "/system/xbin/su"

    const-string v20, "/data/local/xbin/su"

    const-string v21, "/data/local/bin/su"

    const-string v22, "/system/sd/xbin/su"

    const-string v23, "/system/bin/failsafe/su"

    const-string v24, "/data/local/su"

    const-string v25, "/su/bin/su"

    const-string v26, "re.robv.android.xposed.installer-1.apk"

    const-string v27, "/data/app/eu.chainfire.supersu-1/base.apk"

    filled-new-array/range {v8 .. v27}, [Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method

.method public buttonLanding(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "credentials_fragment"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/auth/ActivityAuthMain;

    goto :goto_1

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentSignIn"

    goto :goto_0

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityCredentials;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ch.zhaw.securitylab.DIBA.activity.unauth.FragmentLogin"

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_3
    const-class p1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityInfo;

    :goto_1
    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_2
    if-eqz v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00c6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->r()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object p1

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/DIBA;->q()V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    const-string v0, "rootDetPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "preferences.getBoolean(Extras.ROOT_DET_DISABLE, true)"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    const-string v1, "disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Z)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->Z()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->q()Landroidx/fragment/app/m;

    move-result-object v0

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;->w1(Z)Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;

    move-result-object p1

    const-string v1, "fragment_alert"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/c;->v1(Landroidx/fragment/app/m;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/c/h;->onResume()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/c/h;->B:Lch/zhaw/securitylab/DIBA/c/h;

    const-string v1, "rootDetPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "preferences.getBoolean(Extras.ROOT_DET_DISABLE, true)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    const-string v2, "disable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->C:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityLanding;->Z()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->q()Landroidx/fragment/app/m;

    move-result-object v1

    invoke-static {v0}, Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;->w1(Z)Lch/zhaw/securitylab/DIBA/activity/unauth/FragmentRootDetection;

    move-result-object v0

    const-string v2, "fragment_alert"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/c;->v1(Landroidx/fragment/app/m;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
