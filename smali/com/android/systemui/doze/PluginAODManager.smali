.class public Lcom/android/systemui/doze/PluginAODManager;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

.field private mAODMachine:Lcom/android/systemui/doze/AODMachine;

.field private mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field private mAODUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

.field private mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field private mClockTransitionStarted:Z

.field private mConnectionConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer;",
            ">;"
        }
    .end annotation
.end field

.field private mControlScreenOff:Z

.field private mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field private mCoverPluginContext:Landroid/content/Context;

.field private mCoverScreenManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field private mDozing:Z

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field private mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

.field private mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field private final mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

.field private mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mPluginAODStateProvider:Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;

.field private mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

.field private final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowAODNotifications:Z

.field private final mSmartAlerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mStartedByFolderClosed:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field private mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field private mSubUICallback:Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;

.field private mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field private mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field private mSubscreenSignalInfoController:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

.field private final mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private mWallpaperUtilsWrapper:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;

.field private mZigzagPosition:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$dGbQflhCg3h_wUWPB2yGAOO-BJA(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->lambda$sendIntent$0(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 114
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/PluginAODManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p17

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v2, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-direct {v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 126
    const-class v2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 136
    const-class v2, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v2}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    .line 146
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    .line 148
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    const/4 v2, 0x0

    .line 152
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    .line 156
    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    if-eqz v3, :cond_0

    .line 157
    const-class v3, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 161
    new-instance v3, Lcom/android/systemui/doze/PluginAODManager$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/doze/PluginAODManager$1;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 176
    new-instance v3, Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/doze/PluginAODManager$2;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 199
    new-instance v3, Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/doze/PluginAODManager$3;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    .line 275
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 276
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/PluginAODManager$4;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    .line 333
    const-class v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 334
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 335
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/PluginAODManager$5;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 351
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/PluginAODManager$6;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    .line 381
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/PluginAODManager$7;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;

    move-object v2, p1

    .line 463
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-object v2, p2

    .line 464
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-object v2, p3

    .line 465
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p4

    .line 466
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    move-object v3, p5

    .line 467
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v3, p6

    .line 468
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v3, p7

    .line 469
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object v3, p8

    .line 470
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v3, p9

    .line 471
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object v3, p10

    .line 472
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v3, p13

    .line 473
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;

    move-object/from16 v3, p14

    .line 474
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v3, p15

    .line 475
    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 476
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 478
    invoke-virtual {p4}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getFaceWidgetContainerWrapper()Lcom/android/systemui/facewidget/KeyguardStatusBase;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 481
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v2, :cond_3

    move-object/from16 v2, p11

    .line 482
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 483
    sget-boolean v2, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v2, :cond_3

    .line 484
    iget-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-nez v2, :cond_1

    .line 485
    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 488
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    if-nez v2, :cond_2

    .line 489
    const-class v2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 491
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    const/16 v3, 0x12d

    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 492
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getSubRoomNotificaiton()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v4

    .line 491
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    .line 493
    iget-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    const/16 v3, 0x12c

    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 494
    invoke-virtual {v4}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v4

    .line 493
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    .line 496
    iget-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getLockscreenNotiCallback()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 500
    :cond_3
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_4

    move-object/from16 v2, p12

    .line 501
    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    .line 505
    :cond_4
    invoke-static/range {p16 .. p16}, Lcom/android/systemui/keyguard/AODDumpLog;->setLogger(Lcom/android/systemui/log/SamsungServiceLogger;)V

    .line 508
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/doze/PluginAODManager$8;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Landroid/os/Handler;

    const-string v2, "PluginAODManager"

    .line 524
    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetNotificationController;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/PluginAODManager;Ljava/lang/String;Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->putNotiIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginCover;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenSignalInfoController:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenSignalInfoController:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/subscreen/SubScreenManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/clockpack/PluginClockPack;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/doze/PluginAODManager;)Ldagger/Lazy;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/pluginlock/PluginLockMediator;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/doze/PluginAODManager;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/PluginAODManager;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->clearNotiMapIfNeeded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/PluginAODManager;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method private addNotificationEntryListener()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    if-eqz v0, :cond_0

    return-void

    .line 709
    :cond_0
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$9;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 729
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method private clearNotiMapIfNeeded(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    const-string p1, "PluginAODManager"

    const-string v0, "clearNotiMapIfNeeded() clear"

    .line 1305
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->setNotiMap(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private isDesktopMode()Z
    .locals 2

    .line 1109
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1112
    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 819
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "smart_alert_title"

    const-string v1, ""

    .line 821
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic lambda$sendIntent$0(Landroid/content/Intent;)V
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 884
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->sendIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private logSmartAlert(Ljava/lang/String;)V
    .locals 4

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onUpdateSmartAlert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " showingKeys "

    .line 908
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/AODDumpLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private logVisibleNotification(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    .line 890
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVisibleNotifications] totalCount : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showingKeys "

    .line 893
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/AODDumpLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private onTransitionEnded()V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    if-nez v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransitionEnded mClockTransitionStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shouldControlScreenOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginAODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    if-eqz v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    const/4 v1, 0x0

    .line 1031
    iput-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    :cond_1
    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onAodTransitionEnd()V

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onAodTransitionEnd()V

    :cond_2
    return-void
.end method

.method private putNotiIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1161
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    .line 1162
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private registerUpdateMonitor()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    const-string p0, "PluginAODManager"

    const-string/jumbo v0, "registerUpdateMonitor"

    .line 530
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeUpdateMonitor()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const-string p0, "PluginAODManager"

    const-string/jumbo v0, "removeUpdateMonitor"

    .line 536
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSystemUIConfiguration(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public acceptConnectionConsumers()V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 671
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    const/4 v2, 0x0

    .line 672
    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public addConnectionConsumer(Ljava/util/function/Consumer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionConsumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 758
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "addNotification"

    .line 762
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 761
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 764
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    .line 765
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    .line 766
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_2

    .line 767
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 835
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    :cond_0
    return-void
.end method

.method public chargingAnimStarted(Z)V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 923
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onChargingAnimStarted(Z)V

    goto :goto_0

    .line 924
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    .line 925
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onChargingAnimStarted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableStatusBar(I)V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "statusbar"

    .line 1133
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "PluginAODManager"

    if-nez v0, :cond_1

    const-string p0, "disableStatusBar() : Could not get status bar manager"

    .line 1136
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableStatusBar() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    .line 964
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      Plugins"

    .line 965
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        mAODPlugin : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        mClockPackPlugin : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        mCoverPlugin : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "        mSubScreenPlugin : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableTouch(Z)V
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTouch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " FaceWidgetContainerWrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz p0, :cond_0

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->setTouchEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAODClockView(Z)Landroid/view/View;
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 983
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODClockContainer(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    return-object p0
.end method

.method public getZigzagPosition()Landroid/graphics/Point;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 950
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getZigzagPosition()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    .line 952
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public hideChargingInfoByFinger(J)V
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 1041
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    :cond_0
    return-void
.end method

.method public isStartedByFolderClosed()Z
    .locals 0

    .line 1293
    iget-boolean p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    return p0
.end method

.method public needControlScreenOff()Z
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1057
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    return v1

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isScreenOffMemoRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1066
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    if-eqz v0, :cond_3

    return v1

    .line 1069
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1072
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/doze/AODParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/AODParameters;->getDozeAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;

    if-eqz p0, :cond_5

    .line 1075
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;->getNeedScreenOff()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public needDozeAlwaysOn()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 956
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->needDozeAlwaysOn()Z

    move-result p0

    return p0

    .line 957
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    .line 958
    invoke-interface {p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->needDozeAlwaysOn()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAodTransitionEnd()V
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAodTransitionEnd mClockTransitionStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->SCRIM_AOD_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 1017
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onAodTransitionEnd() in folded state"

    .line 1018
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    :cond_2
    return-void
.end method

.method public onClockPageTransitionEnded()V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    .line 998
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->onClockPageTransitionEnded()V

    return-void
.end method

.method public onFaceWidgetPositionChanged()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PluginAODManager"

    const-string v1, "onFaceWidgetPositionChanged"

    .line 1005
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFaceWidgetPositionChanged()V

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 2

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFolderStateChanged isOpened : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    .line 1279
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_1

    .line 1280
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFolderStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v2

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 804
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "removeNotification"

    .line 805
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 804
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 809
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_2

    .line 810
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 811
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_3

    .line 812
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->removeNotification(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public requestDozeState(IZ)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 943
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->requestMODState(IZ)V

    goto :goto_0

    .line 944
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    .line 945
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->requestMODState(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAODMachine(Lcom/android/systemui/doze/AODMachine;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V
    .locals 2

    .line 551
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p2, :cond_3

    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 554
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 557
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 558
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDozeAmountChanged(FF)V

    .line 559
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    .line 560
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-eqz p2, :cond_1

    .line 561
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 562
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->addNotificationEntryListener()V

    .line 565
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    .line 567
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    if-nez p2, :cond_2

    .line 568
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    .line 570
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/doze/AODParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 576
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_4

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 579
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-eqz p1, :cond_4

    .line 580
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    :cond_4
    return-void
.end method

.method public setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p1, :cond_0

    .line 590
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    :cond_0
    return-void
.end method

.method public setClockTransitionStarted(Z)V
    .locals 0

    .line 1127
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    return-void
.end method

.method public setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V
    .locals 1

    .line 594
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    .line 595
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    .line 597
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 598
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 601
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-eqz p1, :cond_1

    .line 602
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {p1}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 603
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 605
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_5

    .line 607
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_3

    .line 608
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-nez p1, :cond_2

    .line 609
    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 611
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/cover/CoverScreenManager;

    const/16 p2, 0x12d

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getSubRoomNotificaiton()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/cover/CoverScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    .line 613
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getLockscreenNotiCallback()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 614
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->onDisplayReady()V

    .line 616
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    .line 617
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    .line 618
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozeAmountChanged(F)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 623
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_7

    .line 624
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-eqz p1, :cond_6

    .line 625
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 627
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    :cond_7
    return-void
.end method

.method public setIsDozing(ZZ)V
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 846
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 847
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    .line 848
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    .line 850
    :cond_1
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz p2, :cond_4

    .line 851
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p2, :cond_2

    .line 852
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    .line 854
    :cond_2
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p2, :cond_4

    .line 855
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p2

    if-nez p2, :cond_4

    .line 856
    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-eqz p2, :cond_4

    .line 857
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getLastSleepReason()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 858
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p2}, Lcom/android/systemui/subscreen/SubScreenManager;->prepareSubHomeActivity()V

    goto :goto_0

    .line 860
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p2}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    .line 866
    :cond_4
    :goto_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p2, :cond_6

    .line 867
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p2, :cond_5

    .line 868
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    .line 870
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 871
    iget-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-eqz p1, :cond_6

    .line 872
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()V

    :cond_6
    return-void
.end method

.method public setPluginAODStateProvider(Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;

    return-void
.end method

.method public setShowAODNotifications(Z)V
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    return-void
.end method

.method public setStartedByFolderClosed(Z)V
    .locals 2

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStartedByFolderClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    .line 1288
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public setSubScreenPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 1

    .line 631
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p2, :cond_2

    .line 637
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 638
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor()V

    .line 641
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 642
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    .line 643
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    .line 644
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozeAmountChanged(F)V

    .line 645
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 647
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_3

    .line 648
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    :cond_3
    return-void
.end method

.method public shouldShowAODNotifications()Z
    .locals 0

    .line 687
    iget-boolean p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    return p0
.end method

.method public showCoverToast(Landroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showCoverToast() notiKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v0, :cond_0

    .line 1048
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->showCoverToast(Landroid/app/PendingIntent;Z)V

    .line 1050
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p0, :cond_1

    .line 1051
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->requestOpenAppPopup(Landroid/app/PendingIntent;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateActiveNotifications(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 738
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 739
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "updateActiveNotifications"

    .line 744
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    .line 746
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    .line 748
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    goto :goto_1

    .line 749
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_4

    .line 750
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 746
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateAnimateScreenOff()V
    .locals 3

    .line 1083
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 1085
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAnimateScreenOff(Z)V

    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1092
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    if-eq v0, v1, :cond_2

    .line 1093
    iput-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAnimateScreenOff : controlScreenOff="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Alwayson="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 1096
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " keyguardShowing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1097
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " powerSaveActive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 1098
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPowerSaveActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needcontrolScreenOff="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " called="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 1100
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PluginAODManager"

    .line 1094
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAnimateScreenOff(Z)V

    :cond_3
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 775
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 777
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v2

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 780
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "updateNotification"

    .line 784
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 783
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 789
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    .line 790
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    .line 791
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_4

    .line 792
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateVisibleNotifications(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 697
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v0, :cond_1

    .line 699
    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz v0, :cond_2

    .line 701
    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    .line 703
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->logVisibleNotification(Ljava/util/List;I)V

    return-void
.end method
