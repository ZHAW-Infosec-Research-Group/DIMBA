.class public Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/Spinner;

.field private E:Landroid/widget/EditText;

.field private F:Landroid/widget/CheckBox;

.field private G:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d002e

    const v2, 0x7f0a0124

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method private Z()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/unauth/g;

    invoke-direct {v1, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/g;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private i0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/b;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/b;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    return-object v0
.end method

.method private j0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/e;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/e;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    return-object v0
.end method

.method private k0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/d;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/d;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    return-object v0
.end method

.method private l0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/a;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    return-object v0
.end method

.method private m0()V
    .locals 6

    const-string v0, "SFr"

    const-string v1, "Eur"

    const-string v2, "$"

    const-string v3, "\u00a3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    aget-object v2, v0, v2

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const-string v5, "1.5"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v4, "0.9"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v0, v0, v4

    const-string v4, "1.75"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "already filled"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected Q()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic a0()V
    .locals 2

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->f()Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;->s()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lch/zhaw/securitylab/DIBA/activity/unauth/f;

    invoke-direct {v1, p0, v0}, Lch/zhaw/securitylab/DIBA/activity/unauth/f;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic b0()V
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->f()Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/MetasettingsDb;->s()Lch/zhaw/securitylab/DIBA/data/metasettings/d;

    move-result-object v0

    invoke-interface {v0}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->d()Lch/zhaw/securitylab/DIBA/data/metasettings/c;

    move-result-object v1

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->D:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->C:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->E:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->h(I)V

    invoke-interface {v0, v1}, Lch/zhaw/securitylab/DIBA/data/metasettings/d;->b(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->l()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic c0()V
    .locals 3

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->n()V

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->o()V

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->p()V

    invoke-virtual {v0}, Lch/zhaw/securitylab/DIBA/DIBA;->k()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->Z()V

    const-string v0, "loginPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/DIBA;->a()Lch/zhaw/securitylab/DIBA/DIBA;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->G:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->m0()V

    return-void
.end method

.method public synthetic d0(Lch/zhaw/securitylab/DIBA/data/metasettings/c;)V
    .locals 3

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0062

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lch/zhaw/securitylab/DIBA/data/metasettings/b;->values()[Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->D:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->D:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->a()Lch/zhaw/securitylab/DIBA/data/metasettings/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->E:Landroid/widget/EditText;

    invoke-virtual {p1}, Lch/zhaw/securitylab/DIBA/data/metasettings/c;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->F:Landroid/widget/CheckBox;

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->G:Landroid/content/SharedPreferences;

    const-string v1, "disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->G:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "disable"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public synthetic f0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/h;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/h;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "Successfully reset all resources in the app."

    invoke-static {p1}, Lch/zhaw/securitylab/DIBA/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic g0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/c;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/c;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic h0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping -c 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a00fc

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->C:Landroid/widget/EditText;

    const p1, 0x7f0a00fd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->D:Landroid/widget/Spinner;

    const p1, 0x7f0a00fe

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->E:Landroid/widget/EditText;

    const p1, 0x7f0a0191

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->F:Landroid/widget/CheckBox;

    const-string v0, "rootDetPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->G:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->k0()Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x7f0a00f9

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->j0()Landroid/view/View$OnClickListener;

    move-result-object v0

    new-array v3, v2, [I

    const v4, 0x7f0a00f8

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->l0()Landroid/view/View$OnClickListener;

    move-result-object v0

    new-array v3, v2, [I

    const v4, 0x7f0a00fa

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->i0()Landroid/view/View$OnClickListener;

    move-result-object v0

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lch/zhaw/securitylab/DIBA/c/h;->onResume()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivityMetasettings;->Z()V

    return-void
.end method
