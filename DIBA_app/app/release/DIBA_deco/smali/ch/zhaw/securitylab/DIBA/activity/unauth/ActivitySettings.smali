.class public Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;
.super Lch/zhaw/securitylab/DIBA/c/h;
.source ""


# instance fields
.field private C:Landroid/widget/CheckBox;

.field private D:Landroid/widget/CheckBox;

.field private E:Landroid/widget/EditText;

.field private F:Landroid/widget/EditText;

.field private G:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lch/zhaw/securitylab/DIBA/c/j;->e:Lch/zhaw/securitylab/DIBA/c/j;

    const v1, 0x7f0d002f

    const v2, 0x7f0a0126

    invoke-direct {p0, v1, v0, v2}, Lch/zhaw/securitylab/DIBA/c/h;-><init>(ILch/zhaw/securitylab/DIBA/c/j;I)V

    return-void
.end method

.method private Z(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->a0(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a0(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;

    invoke-direct {v0, p0, p1, p2}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings$a;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;Ljava/lang/String;Landroid/widget/EditText;)V

    return-object v0
.end method

.method private b0()V
    .locals 5

    invoke-static {}, Lch/zhaw/securitylab/DIBA/ProviderSettings;->a()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v4, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->E:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->F:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->C:Landroid/widget/CheckBox;

    iget-object v3, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->G:Landroid/content/SharedPreferences;

    const-string v4, "login_remember"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->D:Landroid/widget/CheckBox;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private c0()V
    .locals 2

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->E:Landroid/widget/EditText;

    const-string v1, "package"

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->Z(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->F:Landroid/widget/EditText;

    const-string v1, "class"

    invoke-direct {p0, v0, v1}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->Z(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method private g0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/k;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/k;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;)V

    return-object v0
.end method

.method private h0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/j;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/j;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;)V

    return-object v0
.end method

.method private i0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lch/zhaw/securitylab/DIBA/activity/unauth/i;

    invoke-direct {v0, p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/i;-><init>(Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;)V

    return-object v0
.end method


# virtual methods
.method public synthetic d0(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "autoupdate"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lch/zhaw/securitylab/DIBA/ProviderSettings;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=1"

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->G:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "login_remember"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public synthetic f0(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->E:Landroid/widget/EditText;

    const-string v0, "ch.zhaw.securitylab.DIBA"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->F:Landroid/widget/EditText;

    const-string v1, "ch.zhaw.securitylab.DIBA.activity.pay.ActivityAuthPayAccept"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "package"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "class"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "autoupdate"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lch/zhaw/securitylab/DIBA/ProviderSettings;->c:Landroid/net/Uri;

    const-string v2, "_id=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->G:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "login_remember"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lch/zhaw/securitylab/DIBA/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a018e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->C:Landroid/widget/CheckBox;

    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->D:Landroid/widget/CheckBox;

    const v1, 0x7f0a018c

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->E:Landroid/widget/EditText;

    const v1, 0x7f0a018b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->F:Landroid/widget/EditText;

    const-string v1, "loginPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->G:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->h0()Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput p1, v4, v2

    invoke-virtual {p0, v1, v4}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->g0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v1, v3, [I

    aput v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->i0()Landroid/view/View$OnClickListener;

    move-result-object p1

    new-array v0, v3, [I

    const v1, 0x7f0a018f

    aput v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lch/zhaw/securitylab/DIBA/c/h;->L(Landroid/view/View$OnClickListener;[I)V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->b0()V

    invoke-direct {p0}, Lch/zhaw/securitylab/DIBA/activity/unauth/ActivitySettings;->c0()V

    return-void
.end method
