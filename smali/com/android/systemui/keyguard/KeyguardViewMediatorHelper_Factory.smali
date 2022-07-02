.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;
.super Ljava/lang/Object;
.source "KeyguardViewMediatorHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final binderCallMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final bootAnimationFinishedTriggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final carlifeManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarLifeManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final desktopManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fastUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardViewControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final knoxStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final looperLogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final pickupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/sensor/PickupController;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginAODManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final securityLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final subScreenManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sysDumpTriggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private final uiBgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorHelperCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarLifeManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/sensor/PickupController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 127
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 128
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 129
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 130
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 131
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->viewMediatorLazyProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 132
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 133
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 134
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->keyguardViewControllerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 135
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->viewMediatorHelperCallbackProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 136
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->fastUnlockControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 137
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 138
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 139
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->sysDumpTriggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 140
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 141
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->knoxStateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 142
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 143
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->carlifeManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 144
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pickupControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 145
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 146
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pmProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 147
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 148
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 149
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 150
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->looperLogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 151
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->keyguardLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 152
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->securityLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 153
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->bootAnimationFinishedTriggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 154
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 155
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CarLifeManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/sensor/PickupController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    .line 190
    new-instance v30, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;

    move-object/from16 v0, v30

    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v30
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/util/CarLifeManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;)Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;",
            ">;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/util/CarLifeManager;",
            "Lcom/android/systemui/sensor/PickupController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ")",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    .line 210
    new-instance v30, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-object/from16 v0, v30

    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/util/CarLifeManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;)V

    return-object v30
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
    .locals 31

    move-object/from16 v0, p0

    .line 160
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->viewMediatorLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->keyguardViewControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->viewMediatorHelperCallbackProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->fastUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->sysDumpTriggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/ActivityManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->knoxStateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->desktopManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->carlifeManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/util/CarLifeManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pickupControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/sensor/PickupController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->looperLogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->keyguardLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/log/SamsungServiceLogger;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->securityLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/systemui/log/SamsungServiceLogger;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->bootAnimationFinishedTriggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/systemui/BootAnimationFinishedTrigger;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static/range {v2 .. v30}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/util/CarLifeManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;)Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper_Factory;->get()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    return-object p0
.end method
