.class public Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.super Ljava/lang/Object;
.source "LockscreenNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;,
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;,
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCurrentNotificationType:I

.field private mCurrentOrientation:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field protected mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCovered:Z

.field private mIsDetail:Z

.field private mIsFolded:Z

.field private mIsFolderStateOpen:Z

.field private final mIsKeyguardSupportLandscapePhone:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

.field private final mNotificationSettingUri:Landroid/net/Uri;

.field private mSemDisplayDeviceType:I

.field private mSettingNotificationType:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V
    .locals 4

    .line 126
    const-class p7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 69
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 70
    new-instance p8, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;)V

    iput-object p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/4 p8, 0x0

    .line 73
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    const-string v0, "lockscreen_minimizing_notification"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    .line 94
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    .line 95
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 104
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 223
    new-instance v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 130
    iput-object p4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 131
    iput-object p6, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    .line 133
    iput-object p9, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    .line 136
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_0

    .line 138
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p4

    if-nez p4, :cond_0

    move p4, p6

    goto :goto_0

    :cond_0
    move p4, p8

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    .line 140
    sget-boolean p4, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p4, :cond_1

    .line 141
    invoke-static {p7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    new-instance p9, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;

    invoke-direct {p9, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    invoke-virtual {p4, p9}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 150
    invoke-static {p7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p4}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    .line 154
    :cond_1
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 157
    const-class p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    new-array p1, p6, [Landroid/net/Uri;

    aput-object v0, p1, p8

    .line 161
    invoke-virtual {p3, v2, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 162
    invoke-interface {v2, v0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 167
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 169
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 175
    invoke-virtual {p2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 177
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    if-eqz p1, :cond_3

    .line 178
    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/net/Uri;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/LockscreenNotificationManager;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->resetLockscreenNotificationType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    return p1
.end method

.method private createLockscreenNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/LockscreenNotificationInfo;
    .locals 0

    .line 314
    new-instance p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;-><init>()V

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->setInfoData(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-object p0
.end method

.method private resetLockscreenNotificationType()V
    .locals 0

    return-void
.end method

.method private updateNotificationType()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 326
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    if-ne v0, v2, :cond_2

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 337
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_3

    if-ne v4, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 340
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->notifyTypeChanged()V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string/jumbo v1, "updateNotificationType"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex()V

    .line 345
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestEverythingWithoutAnim()V

    :cond_4
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLockscreenNotificationInfoToArray(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ")V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->createLockscreenNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    move-result-object p0

    .line 310
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createLockscreenNotificationInfoArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isCovered()Z
    .locals 0

    .line 239
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    return p0
.end method

.method public isDetailCardFromIcon()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    return p0
.end method

.method public isDetailNotiShowingWhenNIO()Z
    .locals 2

    .line 357
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFolded()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    return p0
.end method

.method public isNotificationIconsOnlyShowing()Z
    .locals 2

    .line 352
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public notifyLockscreenNotificationInfoArrayUpdated(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyTypeChanged()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "LockscreenNotificationManager"

    if-eq v0, v1, :cond_0

    .line 196
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation updated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 201
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, p1, :cond_2

    .line 202
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fold state updated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_2
    return-void
.end method

.method public onFoldStateChanged(Z)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FOLD STATE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "FOLD "

    goto :goto_0

    :cond_0
    const-string v1, "UNFOLD "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockscreenNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 216
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BarState updated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockscreenNotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShowDetail(Z)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    if-eq v0, p1, :cond_0

    .line 244
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method
