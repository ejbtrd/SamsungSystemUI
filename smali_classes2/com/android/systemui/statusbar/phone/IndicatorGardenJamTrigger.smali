.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;
.super Ljava/lang/Object;
.source "IndicatorGardenJamTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    .line 58
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->setUpFakeIcons()V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showFakeIcons()V

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showShowBatteryPercentSettingsValue(Z)V

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->makeNotifications()V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showNetworkSpeedText(Z)V

    return-void
.end method

.method private hideFakeIcons()V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "IndicatorGardenJamTrigger"

    const-string v1, "hideFakeIcons()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    if-nez v1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private makeNotifications()V
    .locals 9

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "IndicatorGardenJamTrigger"

    const-string/jumbo v2, "makeNotifications()"

    .line 119
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    .line 120
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 121
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    if-nez v5, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v7, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    .line 125
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 126
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 127
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    .line 128
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    .line 129
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/high16 v6, -0x10000

    .line 130
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 131
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-static {v6, v5, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 132
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x3

    .line 133
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 134
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private setUpFakeIcons()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "IndicatorGardenJamTrigger"

    const-string/jumbo v1, "setUpFakeIcons()"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040cf3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    const-string v4, "FakeCast"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040cff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    const-string v4, "FakeHotSpot"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040d21

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    const-string v4, "FakeZen"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040d1d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_tty_mode:I

    const-string v4, "FakeTTY"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040d1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    const-string v4, "FakeVolume"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040ceb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    const-string v4, "FakeAlarmClock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040d15

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_rotate_portrait:I

    const-string v4, "FakeRotate"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v2, 0x1040cfe

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_headset:I

    const-string v3, "FakeHeadset"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private showFakeIcons()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "IndicatorGardenJamTrigger"

    const-string/jumbo v1, "showFakeIcons()"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    if-nez v1, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private showNetworkSpeedText(Z)V
    .locals 1

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showNetworkSpeedText(show:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IndicatorGardenJamTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showShowBatteryPercentSettingsValue(Z)V
    .locals 1

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setShowBatteryPercentSettingsValue(show:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IndicatorGardenJamTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public makeSomeNoise()V
    .locals 2

    const-string v0, "IndicatorGardenJamTrigger"

    const-string v1, "((()))makeSomeNoise((()))"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showNetworkSpeedText(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->hideFakeIcons()V

    .line 161
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showShowBatteryPercentSettingsValue(Z)V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->makeNotifications()V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showFakeIcons()V

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showShowBatteryPercentSettingsValue(Z)V

    .line 165
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showNetworkSpeedText(Z)V

    return-void
.end method
