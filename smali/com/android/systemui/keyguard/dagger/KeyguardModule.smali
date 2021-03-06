.class public Lcom/android/systemui/keyguard/dagger/KeyguardModule;
.super Ljava/lang/Object;
.source "KeyguardModule.java"


# direct methods
.method public static synthetic $r8$lambda$32XdJ-BW0yXaISMwv0yghYubKE8(Landroid/hardware/face/FaceSensorPropertiesInternal;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;->lambda$provideFaceAuthScreenBrightnessController$0(Landroid/hardware/face/FaceSensorPropertiesInternal;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$provideFaceAuthScreenBrightnessController$0(Landroid/hardware/face/FaceSensorPropertiesInternal;)Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsSelfIllumination:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static newKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/os/PowerManager;",
            "Landroid/app/trust/TrustManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p12

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    invoke-direct/range {v1 .. v23}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ldagger/Lazy;)V

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p12

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    invoke-direct/range {v1 .. v23}, Lcom/android/systemui/keyguard/KeyguardViewMediator;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ldagger/Lazy;)V

    return-object v0
.end method

.method static provideFaceAuthScreenBrightnessController(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/hardware/face/FaceManager;Landroid/content/pm/PackageManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/dump/DumpManager;)Ljava/util/Optional;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Landroid/content/res/Resources;",
            "Landroid/os/Handler;",
            "Landroid/hardware/face/FaceManager;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_2

    const-string v0, "android.hardware.biometrics.face"

    move-object v1, p5

    .line 265
    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p4}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;

    .line 272
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 278
    :cond_1
    new-instance v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, p3

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;-><init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SystemSettings;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;Z)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 266
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static provideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .locals 1

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)V

    return-object p0
.end method

.method static provideKeyguardUpdateMonitor(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 22
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

    .line 213
    new-instance v21, Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;-><init>(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Vibrator;)V

    return-object v21
.end method


# virtual methods
.method public providesViewMediatorCallback(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;
    .locals 0

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorHelperCallback()Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    move-result-object p0

    return-object p0
.end method
