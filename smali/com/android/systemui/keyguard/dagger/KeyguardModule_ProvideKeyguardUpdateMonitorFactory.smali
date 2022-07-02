.class public final Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;
.super Ljava/lang/Object;
.source "KeyguardModule_ProvideKeyguardUpdateMonitorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardUpdateMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fastBioUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final iBatteryStatsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
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

.field private final looperSlowLogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
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

.field private final ringerModeTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
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

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyListenerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 100
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->iBatteryStatsProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 101
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 102
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->fastBioUnlockControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 103
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 104
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 105
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 106
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 107
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 108
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 109
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 110
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->ringerModeTrackerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 111
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 112
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 113
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 114
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 115
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 116
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 117
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 118
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 119
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->vibratorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;)",
            "Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;"
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

    .line 147
    new-instance v21, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v21
.end method

.method public static provideKeyguardUpdateMonitor(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IBatteryStats;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/util/RingerModeTracker;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Landroid/os/Vibrator;",
            ")",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;"
        }
    .end annotation

    .line 160
    invoke-static/range {p0 .. p19}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;->provideKeyguardUpdateMonitor(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 22

    move-object/from16 v0, p0

    .line 124
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->iBatteryStatsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/IBatteryStats;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->fastBioUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/Looper;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->ringerModeTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/util/RingerModeTracker;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v20

    iget-object v0, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->vibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Vibrator;

    invoke-static/range {v2 .. v21}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->provideKeyguardUpdateMonitor(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_ProvideKeyguardUpdateMonitorFactory;->get()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    return-object p0
.end method
