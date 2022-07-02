.class public Lcom/android/systemui/dagger/DependencyProvider;
.super Ljava/lang/Object;
.source "DependencyProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 208
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->create(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method static provideThemeOverlayManager(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/om/OverlayManager;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/theme/ThemeOverlayApplier;
    .locals 7

    .line 231
    new-instance v6, Lcom/android/systemui/theme/ThemeOverlayApplier;

    sget v0, Lcom/android/systemui/R$string;->launcher_overlayable_package:I

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/android/systemui/R$string;->themepicker_overlayable_package:I

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/theme/ThemeOverlayApplier;-><init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/dump/DumpManager;)V

    return-object v6
.end method


# virtual methods
.method public provideAccessibilityFloatingMenuController(Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
    .locals 0

    .line 308
    new-instance p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object p0
.end method

.method public provideActivityManagerWrapper()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    .line 340
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideAlwaysOnDisplayPolicy(Landroid/content/Context;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0

    .line 387
    new-instance p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 164
    new-instance p0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0

    .line 324
    new-instance p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    return-object p0
.end method

.method public provideBixbyInteractor(Landroid/content/Context;)Lcom/android/systemui/BixbyInteractor;
    .locals 0

    .line 467
    new-instance p0, Lcom/android/systemui/BixbyInteractor;

    invoke-direct {p0, p1}, Lcom/android/systemui/BixbyInteractor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideCarrierInformationNetworkHelper(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
    .locals 0

    .line 443
    new-instance p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;-><init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V

    return-object p0
.end method

.method public provideConfigurationController(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 316
    new-instance p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 177
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    return-object p0
.end method

.method public provideDevicePolicyManagerWrapper()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;
    .locals 0

    .line 373
    invoke-static {}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideHandler()Landroid/os/Handler;
    .locals 0

    .line 170
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-object p0
.end method

.method public provideINotificationManager()Landroid/app/INotificationManager;
    .locals 0

    const-string p0, "notification"

    .line 184
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 183
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public provideKnoxStateMonitor(Landroid/content/Context;)Lcom/android/systemui/knox/KnoxStateMonitor;
    .locals 0

    .line 426
    new-instance p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    .line 198
    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public provideLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 380
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 215
    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object p0
.end method

.method public provideNavigationBarController(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/keyguard/ScreenLifecycle;)Lcom/android/systemui/navigationbar/NavigationBarController;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ")",
            "Lcom/android/systemui/navigationbar/NavigationBarController;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 269
    new-instance v31, Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 v0, v31

    invoke-direct/range {v0 .. v30}, Lcom/android/systemui/navigationbar/NavigationBarController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    return-object v31
.end method

.method public provideNotificationMessagingUtil(Landroid/content/Context;)Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 0

    .line 393
    new-instance p0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providePluginManager(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginManager;
    .locals 1

    .line 222
    new-instance p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    new-instance v0, Lcom/android/systemui/plugins/PluginInitializerImpl;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginInitializerImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-object p0
.end method

.method public provideReduceBrightColorsListener(Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Landroid/hardware/display/ColorDisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)Lcom/android/systemui/qs/ReduceBrightColorsController;
    .locals 0

    .line 333
    new-instance p0, Lcom/android/systemui/qs/ReduceBrightColorsController;

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/systemui/qs/ReduceBrightColorsController;-><init>(Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Landroid/hardware/display/ColorDisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-object p0
.end method

.method public provideSecStatusBarKnoxMediator(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;
    .locals 0

    .line 434
    new-instance p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V

    return-object p0
.end method

.method public provideSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public provideTaskStackChangeListeners()Lcom/android/systemui/shared/system/TaskStackChangeListeners;
    .locals 0

    .line 347
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p0

    return-object p0
.end method

.method public provideTimeTickHandler()Landroid/os/Handler;
    .locals 1

    .line 149
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "TimeTick"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public provideTwoPhoneModeController(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;"
        }
    .end annotation

    .line 455
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 456
    new-instance p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)V

    return-object p0

    .line 459
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerDummy;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerDummy;-><init>()V

    return-object p0
.end method

.method public providerLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    .line 191
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public providerNotificationPermissionController(Landroid/content/Context;)Lcom/android/systemui/qp/NotificationPermissionController;
    .locals 0

    .line 474
    new-instance p0, Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerQsResetSettingsManager(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/util/QsResetSettingsManager;
    .locals 0

    .line 494
    new-instance p0, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/QsResetSettingsManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object p0
.end method

.method public providerSubscreenQsPanelController(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenQsPanelController;
    .locals 0

    .line 481
    new-instance p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qp/SubscreenQsPanelController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)V

    return-object p0
.end method

.method public providerSubscreenSignalInfoController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
    .locals 0

    .line 487
    new-instance p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providesBroadcastDispatcher(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 7

    .line 363
    new-instance p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lcom/android/systemui/settings/UserTracker;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->initialize()V

    return-object p0
.end method

.method public providesChoreographer()Landroid/view/Choreographer;
    .locals 0

    .line 412
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method

.method public providesModeSwitchesController(Landroid/content/Context;)Lcom/android/systemui/accessibility/ModeSwitchesController;
    .locals 0

    .line 419
    new-instance p0, Lcom/android/systemui/accessibility/ModeSwitchesController;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/ModeSwitchesController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providesViewMediatorCallback(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    .line 399
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    return-object p0
.end method
