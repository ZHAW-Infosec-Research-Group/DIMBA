.class final Le/c/b/w/k/m$s;
.super Le/c/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/w/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/t<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Le/c/b/y/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Le/c/b/w/k/m$s;->d(Le/c/b/y/a;Ljava/util/Calendar;)V

    return-void
.end method

.method public d(Le/c/b/y/a;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le/c/b/y/a;->I()Le/c/b/y/a;

    return-void

    :cond_0
    invoke-virtual {p1}, Le/c/b/y/a;->r()Le/c/b/y/a;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Le/c/b/y/a;->G(Ljava/lang/String;)Le/c/b/y/a;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Le/c/b/y/a;->S(J)Le/c/b/y/a;

    invoke-virtual {p1}, Le/c/b/y/a;->C()Le/c/b/y/a;

    return-void
.end method
