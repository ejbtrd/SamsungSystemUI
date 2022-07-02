.class public Lcom/android/systemui/statusbar/policy/QSDate;
.super Landroid/widget/TextView;
.source "QSDate.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# instance fields
.field protected mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getTicket()Ljava/lang/String;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDateText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDateText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDateText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 38
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method
