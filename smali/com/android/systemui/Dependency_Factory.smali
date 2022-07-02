.class public final Lcom/android/systemui/Dependency_Factory;
.super Ljava/lang/Object;
.source "Dependency_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/Dependency;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOpsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistantFeedbackControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final mBixbyInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BixbyInteractor;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mBubblesManagerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCarrierInformationNetworkHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCastControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private final mClockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mClockPositionAlgorithmWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverHost;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverScreenManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverUtilWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/CoverUtilWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDarkIconDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDesktopManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceConfigProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mDockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mDragAndDropTriggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private final mDumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnhancedEstimatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpandableNotificationRowLongPressControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceWidgetControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetController;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureFlagsLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashlightControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGarbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighPriorityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation
.end field

.field private final mINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private final mIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicatorGardenPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicatorRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardEnvironmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardVisibilityMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnoxStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBluetoothManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooperSlowLogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagedProfileControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavBarModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavbarBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavbarButtonsControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavbarStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextAlarmControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationBackupRestoreManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/notification/NotificationBackupRestoreManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationColorPickerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/noticolorpicker/NotificationColorPicker;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationIconTransitionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationPermissionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/NotificationPermissionController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserInteractionCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mPeopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginFaceWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockStarManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQSBackupRestoreManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/QSBackupRestoreManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mQSClockBellTowerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private final mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/ReduceBrightColorsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetSettingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsResetSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationLockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSamsungGrayBarControlHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecurityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimpleStatusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlimIndicatorViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarKnoxMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarLocationPublisherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubScreenManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscreenNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscreenQsPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/SubscreenQsPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscreenSignalInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUIConditionListenerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUIImsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SystemUIImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUIIndexMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyListenerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTwoPhoneModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperEventNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mWarningsUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/ReduceBrightColorsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SystemUIImsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ShortcutManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/CoverUtilWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/SubscreenQsPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/QSBackupRestoreManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/notification/NotificationBackupRestoreManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BixbyInteractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/NotificationPermissionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/noticolorpicker/NotificationColorPicker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsResetSettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 731
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDumpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 732
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mActivityStarterProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 733
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 734
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAsyncSensorManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 735
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBluetoothControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 736
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLocationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 737
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mRotationLockControllerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 738
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNetworkControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 739
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mZenModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 740
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mHotspotControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 741
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCastControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 742
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFlashlightControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 743
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUserSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 744
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUserInfoControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 745
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 746
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 747
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBatteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 748
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNightDisplayListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 749
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 750
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mManagedProfileControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 751
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNextAlarmControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 752
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDataSaverControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 753
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 754
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 755
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 756
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAssistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 757
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSecurityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 758
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLeakDetectorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 759
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLeakReporterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 760
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mGarbageMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 761
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTunerServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 762
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 763
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 764
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDarkIconDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 765
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 766
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 767
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mScreenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 768
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 769
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 770
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mExtensionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 771
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 772
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLocalBluetoothManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 773
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mVolumeDialogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 774
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 775
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 776
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 777
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTunablePaddingServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 778
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 779
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUiOffloadThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 780
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mWarningsUIProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 781
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 782
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mIWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 783
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mOverviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p54

    .line 784
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNavBarModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p55

    .line 785
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p56

    .line 786
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 787
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mEnhancedEstimatesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 788
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mVibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p59

    .line 789
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p60

    .line 790
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDisplayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p61

    .line 791
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p62

    .line 792
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p63

    .line 793
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mShadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p64

    .line 794
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p65

    .line 795
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAppOpsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p66

    .line 796
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p67

    .line 797
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p68

    .line 798
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p69

    .line 799
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p70

    .line 800
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p71

    .line 801
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationGroupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p72

    .line 802
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p73

    .line 803
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p74

    .line 804
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p75

    .line 805
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p76

    .line 806
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyConstantsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p77

    .line 807
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p78

    .line 808
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p79

    .line 809
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p80

    .line 810
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationFilterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p81

    .line 811
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p82

    .line 812
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p83

    .line 813
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p84

    .line 814
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p85

    .line 815
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p86

    .line 816
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAutoHideControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p87

    .line 817
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p88

    .line 818
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPrivacyItemControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p89

    .line 819
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBgLooperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p90

    .line 820
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBgHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p91

    .line 821
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainLooperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p92

    .line 822
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p93

    .line 823
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p94

    .line 824
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLeakReportEmailProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p95

    .line 825
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p96

    .line 826
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p97

    .line 827
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mClockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p98

    .line 828
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mActivityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p99

    .line 829
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p100

    .line 830
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPackageManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p101

    .line 831
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p102

    .line 832
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p103

    .line 833
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mINotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p104

    .line 834
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p105

    .line 835
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAlarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p106

    .line 836
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardSecurityModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p107

    .line 837
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p108

    .line 838
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mWallpaperManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p109

    .line 839
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p110

    .line 840
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p111

    .line 841
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p112

    .line 842
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mRecordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p113

    .line 843
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mProtoTracerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p114

    .line 844
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p115

    .line 845
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDeviceConfigProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p116

    .line 846
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNavbarButtonsControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p117

    .line 847
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTelephonyListenerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p118

    .line 848
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p119

    .line 849
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p120

    .line 850
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p121

    .line 851
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p122

    .line 852
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFeatureFlagsLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p123

    .line 853
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p124

    .line 854
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarLocationPublisherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p125

    .line 855
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSettingsHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p126

    .line 856
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDisplayLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p127

    .line 857
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFaceWidgetControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p128

    .line 858
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p129

    .line 859
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mExternalClockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p130

    .line 860
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mClockPositionAlgorithmWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p131

    .line 861
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSubScreenManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p132

    .line 862
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCoverScreenManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p133

    .line 863
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCoverHostProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p134

    .line 864
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemUIImsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p135

    .line 865
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKnoxStateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p136

    .line 866
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCarrierInformationNetworkHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p137

    .line 867
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mIndicatorGardenPresenterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p138

    .line 868
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mIndicatorRuneWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p139

    .line 869
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mIndicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p140

    .line 870
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarKnoxMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p141

    .line 871
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSamsungGrayBarControlHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p142

    .line 872
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTwoPhoneModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p143

    .line 873
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDesktopManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p144

    .line 874
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSPluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p145

    .line 875
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSPluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p146

    .line 876
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPluginLockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p147

    .line 877
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPluginLockStarManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p148

    .line 878
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLooperSlowLogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p149

    .line 879
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardVisibilityMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p150

    .line 880
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFastUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p151

    .line 881
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mShortcutManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p152

    .line 882
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mWallpaperEventNotifierProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p153

    .line 883
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCoverUtilWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p154

    .line 884
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNavbarBgHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p155

    .line 885
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNavbarStoreProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p156

    .line 886
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mGlobalActionsComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p157

    .line 887
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSubscreenNotificationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p158

    .line 888
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSubscreenQsPanelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p159

    .line 889
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mQSClockBellTowerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p160

    .line 890
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mQSBackupRestoreManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p161

    .line 891
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationBackupRestoreManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p162

    .line 892
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBixbyInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p163

    .line 893
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemUIIndexMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p164

    .line 894
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationPermissionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p165

    .line 895
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemUIConditionListenerServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p166

    .line 896
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mHeadsUpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p167

    .line 897
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mHeadsUpControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p168

    .line 898
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mExpandableNotificationRowLongPressControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p169

    .line 899
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationColorPickerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p170

    .line 900
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSlimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p171

    .line 901
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationIconTransitionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p172

    .line 902
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p173

    .line 903
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mChannelEditorDialogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p174

    .line 904
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mHighPriorityProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p175

    .line 905
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAssistantFeedbackControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p176

    .line 906
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPeopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p177

    .line 907
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUserContextProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p178

    .line 908
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBubblesManagerOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p179

    .line 909
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLauncherAppsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p180

    .line 910
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mResetSettingsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p181

    .line 911
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDragAndDropTriggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p182

    .line 912
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSimpleStatusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p183

    .line 913
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSubscreenSignalInfoControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/Dependency_Factory;
    .locals 185
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/ReduceBrightColorsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SystemUIImsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DesktopManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ShortcutManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/CoverUtilWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/SubscreenQsPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/QSBackupRestoreManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/notification/NotificationBackupRestoreManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BixbyInteractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qp/NotificationPermissionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/noticolorpicker/NotificationColorPicker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsResetSettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;",
            ">;)",
            "Lcom/android/systemui/Dependency_Factory;"
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

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move-object/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move-object/from16 v57, p56

    move-object/from16 v58, p57

    move-object/from16 v59, p58

    move-object/from16 v60, p59

    move-object/from16 v61, p60

    move-object/from16 v62, p61

    move-object/from16 v63, p62

    move-object/from16 v64, p63

    move-object/from16 v65, p64

    move-object/from16 v66, p65

    move-object/from16 v67, p66

    move-object/from16 v68, p67

    move-object/from16 v69, p68

    move-object/from16 v70, p69

    move-object/from16 v71, p70

    move-object/from16 v72, p71

    move-object/from16 v73, p72

    move-object/from16 v74, p73

    move-object/from16 v75, p74

    move-object/from16 v76, p75

    move-object/from16 v77, p76

    move-object/from16 v78, p77

    move-object/from16 v79, p78

    move-object/from16 v80, p79

    move-object/from16 v81, p80

    move-object/from16 v82, p81

    move-object/from16 v83, p82

    move-object/from16 v84, p83

    move-object/from16 v85, p84

    move-object/from16 v86, p85

    move-object/from16 v87, p86

    move-object/from16 v88, p87

    move-object/from16 v89, p88

    move-object/from16 v90, p89

    move-object/from16 v91, p90

    move-object/from16 v92, p91

    move-object/from16 v93, p92

    move-object/from16 v94, p93

    move-object/from16 v95, p94

    move-object/from16 v96, p95

    move-object/from16 v97, p96

    move-object/from16 v98, p97

    move-object/from16 v99, p98

    move-object/from16 v100, p99

    move-object/from16 v101, p100

    move-object/from16 v102, p101

    move-object/from16 v103, p102

    move-object/from16 v104, p103

    move-object/from16 v105, p104

    move-object/from16 v106, p105

    move-object/from16 v107, p106

    move-object/from16 v108, p107

    move-object/from16 v109, p108

    move-object/from16 v110, p109

    move-object/from16 v111, p110

    move-object/from16 v112, p111

    move-object/from16 v113, p112

    move-object/from16 v114, p113

    move-object/from16 v115, p114

    move-object/from16 v116, p115

    move-object/from16 v117, p116

    move-object/from16 v118, p117

    move-object/from16 v119, p118

    move-object/from16 v120, p119

    move-object/from16 v121, p120

    move-object/from16 v122, p121

    move-object/from16 v123, p122

    move-object/from16 v124, p123

    move-object/from16 v125, p124

    move-object/from16 v126, p125

    move-object/from16 v127, p126

    move-object/from16 v128, p127

    move-object/from16 v129, p128

    move-object/from16 v130, p129

    move-object/from16 v131, p130

    move-object/from16 v132, p131

    move-object/from16 v133, p132

    move-object/from16 v134, p133

    move-object/from16 v135, p134

    move-object/from16 v136, p135

    move-object/from16 v137, p136

    move-object/from16 v138, p137

    move-object/from16 v139, p138

    move-object/from16 v140, p139

    move-object/from16 v141, p140

    move-object/from16 v142, p141

    move-object/from16 v143, p142

    move-object/from16 v144, p143

    move-object/from16 v145, p144

    move-object/from16 v146, p145

    move-object/from16 v147, p146

    move-object/from16 v148, p147

    move-object/from16 v149, p148

    move-object/from16 v150, p149

    move-object/from16 v151, p150

    move-object/from16 v152, p151

    move-object/from16 v153, p152

    move-object/from16 v154, p153

    move-object/from16 v155, p154

    move-object/from16 v156, p155

    move-object/from16 v157, p156

    move-object/from16 v158, p157

    move-object/from16 v159, p158

    move-object/from16 v160, p159

    move-object/from16 v161, p160

    move-object/from16 v162, p161

    move-object/from16 v163, p162

    move-object/from16 v164, p163

    move-object/from16 v165, p164

    move-object/from16 v166, p165

    move-object/from16 v167, p166

    move-object/from16 v168, p167

    move-object/from16 v169, p168

    move-object/from16 v170, p169

    move-object/from16 v171, p170

    move-object/from16 v172, p171

    move-object/from16 v173, p172

    move-object/from16 v174, p173

    move-object/from16 v175, p174

    move-object/from16 v176, p175

    move-object/from16 v177, p176

    move-object/from16 v178, p177

    move-object/from16 v179, p178

    move-object/from16 v180, p179

    move-object/from16 v181, p180

    move-object/from16 v182, p181

    move-object/from16 v183, p182

    .line 1281
    new-instance v184, Lcom/android/systemui/Dependency_Factory;

    move-object/from16 v0, v184

    invoke-direct/range {v0 .. v183}, Lcom/android/systemui/Dependency_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v184
.end method

.method public static newInstance()Lcom/android/systemui/Dependency;
    .locals 1

    .line 1285
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/Dependency;
    .locals 2

    .line 918
    invoke-static {}, Lcom/android/systemui/Dependency_Factory;->newInstance()Lcom/android/systemui/Dependency;

    move-result-object v0

    .line 919
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 920
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mActivityStarterProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 921
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBroadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 922
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAsyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 923
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBluetoothControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLocationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 925
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRotationLockControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 926
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNetworkControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 927
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mZenModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 928
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHotspotControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 929
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCastControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 930
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFlashlightControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 931
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUserSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 932
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUserInfoControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 933
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 934
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 935
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBatteryControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 936
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNightDisplayListenerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 937
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMReduceBrightColorsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 938
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mManagedProfileControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 939
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNextAlarmControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 940
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDataSaverControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 941
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 942
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 943
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 944
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAssistManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 945
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSecurityControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 946
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakDetectorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 947
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakReporterProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 948
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mGarbageMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 949
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTunerServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 950
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 951
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 952
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDarkIconDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 953
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 954
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarIconControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 955
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mScreenLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 956
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 957
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFragmentServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 958
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mExtensionControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 959
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginDependencyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 960
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLocalBluetoothManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 961
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mVolumeDialogControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 962
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 963
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 964
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSysuiColorExtractorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 965
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTunablePaddingServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 966
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 967
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUiOffloadThreadProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 968
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWarningsUIProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 969
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIWindowManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 971
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mOverviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 972
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavBarModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 973
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityButtonModeObserver(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 974
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityButtonListController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 975
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mEnhancedEstimatesProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 976
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mVibratorHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 977
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIStatusBarServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 978
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 979
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 980
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 981
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mShadeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 982
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 983
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAppOpsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 984
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavigationBarControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 985
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityFloatingMenuController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 986
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 987
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 988
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 989
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationGroupManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 990
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mVisualStabilityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 991
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationGutsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 992
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationMediaManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 993
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 994
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyConstantsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 995
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationListenerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 996
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 997
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 998
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationFilterProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 999
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1003
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAutoHideControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1005
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1006
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPrivacyItemControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPrivacyItemController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1009
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainLooperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1010
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTimeTickHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakReportEmailProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1013
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1014
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBackgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBackgroundExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1015
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mClockManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mActivityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1017
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1018
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPackageManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1019
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1020
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDockManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mINotificationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1023
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAlarmManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1024
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardSecurityModelProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDozeParametersProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWallpaperManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1027
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCommandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1028
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRecentsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1029
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRecordingControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1031
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mProtoTracerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMediaOutputDialogFactory(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1033
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDeviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceConfigProxy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavbarButtonsControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavbarButtonsControllerLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1035
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTelephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTelephonyListenerManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1036
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemStatusAnimationSchedulerLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1037
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPrivacyDotViewControllerLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1038
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEdgeBackGestureHandlerFactoryLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1039
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiEventLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1040
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFeatureFlagsLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFeatureFlagsLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1041
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMContentInsetsProviderLazy(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1042
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarLocationPublisherProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarLocationPublisher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSettingsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSettingsHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDisplayLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1045
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFaceWidgetControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFaceWidgetController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1046
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginFaceWidgetManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mExternalClockProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExternalClockProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1048
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mClockPositionAlgorithmWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockPositionAlgorithmWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1049
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSubScreenManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSubScreenManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCoverScreenManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCoverScreenManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1051
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCoverHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCoverHost(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemUIImsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemUIImsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKnoxStateMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKnoxStateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCarrierInformationNetworkHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCarrierInformationNetworkHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1055
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIndicatorGardenPresenterProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIndicatorGardenPresenter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1056
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIndicatorRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIndicatorRuneWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIndicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIndicatorGardenIconManagerFactory(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1058
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarKnoxMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarKnoxMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1059
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSamsungGrayBarControlHelperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSamsungGrayBarControlHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTwoPhoneModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTwoPhoneModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1061
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDesktopManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDesktopManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSPluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1063
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSPluginDependencyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1064
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginLockManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginLockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1065
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginLockStarManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginLockStarManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1066
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLooperSlowLogControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLooperSlowLogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1067
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardVisibilityMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardVisibilityMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1068
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFastUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFastUnlockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1069
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mShortcutManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShortcutManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWallpaperEventNotifierProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperEventNotifier(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1071
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCoverUtilWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCoverUtilWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavbarBgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavbarBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavbarStoreProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavbarStore(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1074
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mGlobalActionsComponentProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGlobalActionsComponent(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1075
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSubscreenNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSubscreenNotificationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1076
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSubscreenQsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSubscreenQsPanelController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1077
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mQSClockBellTowerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMQSClockBellTower(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1078
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mQSBackupRestoreManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMQSBackupRestoreManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1079
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationBackupRestoreManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBackupRestoreManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1080
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBixbyInteractorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBixbyInteractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1081
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemUIIndexMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemUIIndexMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationPermissionControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationPermissionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1083
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemUIConditionListenerServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemUIConditionListenerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1084
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHeadsUpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHeadsUpManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1085
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHeadsUpControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHeadsUpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1086
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mExpandableNotificationRowLongPressControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExpandableNotificationRowLongPressController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1087
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationColorPickerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationColorPicker(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1088
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSlimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSlimIndicatorViewMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1089
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationIconTransitionManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationIconTransitionManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOnUserInteractionCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mChannelEditorDialogControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1092
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHighPriorityProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHighPriorityProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1093
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAssistantFeedbackControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistantFeedbackController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1094
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPeopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPeopleSpaceWidgetManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1095
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUserContextProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserContextProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1096
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBubblesManagerOptionalProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubblesManagerOptional(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1097
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLauncherAppsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLauncherApps(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mResetSettingsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMResetSettingsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1099
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDragAndDropTriggerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDragAndDropTrigger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1100
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSimpleStatusBarIconControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSimpleStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1101
    iget-object p0, p0, Lcom/android/systemui/Dependency_Factory;->mSubscreenSignalInfoControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSubscreenSignalInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/Dependency_Factory;->get()Lcom/android/systemui/Dependency;

    move-result-object p0

    return-object p0
.end method
