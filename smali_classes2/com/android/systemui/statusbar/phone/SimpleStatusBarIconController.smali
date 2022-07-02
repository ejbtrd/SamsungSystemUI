.class public Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;,
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mSettingChangeListener:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;

.field mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field mSettingsValue:I

.field private mSimpleStatusBarMaxNotificationNum:I

.field private final mTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public static synthetic $r8$lambda$jpw90RjBhjYGi-xEcMgjB4HgKhs(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->lambda$new$0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SimpleStatusBarIconController"

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 184
    sget-object v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    .line 76
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 77
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->config_simple_status_bar_max_notification_num:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "simple_status_bar"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 81
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingChangeListener:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;

    return-object p0
.end method

.method private createTimeOrderKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
    .locals 6

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-wide v3, p1, Landroid/app/Notification;->when:J

    .line 181
    new-instance p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JLcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;)V

    return-object p1
.end method

.method private filterAndAddItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->isFiltered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLastNotificationIcons(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v2

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 138
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->createTimeOrderKey(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    .line 144
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->key:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    .line 145
    invoke-direct {p0, v3, v1, v0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->filterAndAddItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_2
    return-object v0
.end method

.method private isFiltered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 11

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    .line 186
    iget-wide p0, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applySimpleStatusBar(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 122
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->getLastNotificationIcons(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getMaxVisibleIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 2

    .line 97
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-ne p1, v0, :cond_0

    .line 99
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    return p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method public setIconContainer(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-void
.end method

.method public setSettingChangeListener(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingChangeListener:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$SettingChangeListener;

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const-string/jumbo p1, "simple_status_bar"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    return-void
.end method
