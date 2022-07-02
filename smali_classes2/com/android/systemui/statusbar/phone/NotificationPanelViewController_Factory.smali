.class public final Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;
.super Ljava/lang/Object;
.source "NotificationPanelViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final ambientStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            ">;"
        }
    .end annotation
.end field

.field private final authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field private final biometricUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final blurredCaptureStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final bypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final clockPositionAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final coordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final coverScreenManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final displayIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private final emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final expandQSAtOnceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetTouchAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
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

.field private final flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardTouchAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final latencyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final lockIconViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/SecLockIconViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final mascotViewContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final nioComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationIconAreaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeDepthControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShelfManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            ">;"
        }
    .end annotation
.end field

.field private final panelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyDotViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final qsDetailDisplayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;"
        }
    .end annotation
.end field

.field private final qsStatusEventLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            ">;"
        }
    .end annotation
.end field

.field private final quickAccessWalletControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallet/controller/QuickAccessWalletController;",
            ">;"
        }
    .end annotation
.end field

.field private final recordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private final secureSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
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

.field private final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
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

.field private final statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
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

.field private final tapAgainViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/SecLockIconViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallet/controller/QuickAccessWalletController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 314
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 315
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->resourcesProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 316
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->handlerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 317
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 318
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 319
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 320
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 321
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 322
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 323
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 324
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 325
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 326
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 327
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 328
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 329
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 330
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 331
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 332
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 333
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 334
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 335
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->displayIdProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 336
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 337
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 338
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 339
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 340
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 341
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 342
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 343
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 344
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 345
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 346
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 347
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 348
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 349
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 350
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 351
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 352
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->qsDetailDisplayerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 353
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 354
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 355
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 356
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 357
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 358
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 359
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 360
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 361
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 362
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 363
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 364
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->privacyDotViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 365
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 366
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p54

    .line 367
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p55

    .line 368
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p56

    .line 369
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->quickAccessWalletControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 370
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 371
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p59

    .line 372
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p60

    .line 373
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p61

    .line 374
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p62

    .line 375
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->controlsComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p63

    .line 376
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p64

    .line 377
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p65

    .line 378
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p66

    .line 379
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p67

    .line 380
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p68

    .line 381
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p69

    .line 382
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p70

    .line 383
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->nioComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p71

    .line 384
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationShelfManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p72

    .line 385
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->clockPositionAlgorithmProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p73

    .line 386
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mascotViewContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p74

    .line 387
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->faceWidgetTouchAnimatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p75

    .line 388
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->expandQSAtOnceControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p76

    .line 389
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->blurredCaptureStorageProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p77

    .line 390
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p78

    .line 391
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->coverScreenManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p79

    .line 392
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p80

    .line 393
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->qsStatusEventLogProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;
    .locals 82
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/SecLockIconViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallet/controller/QuickAccessWalletController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;"
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

    .line 474
    new-instance v81, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;

    move-object/from16 v0, v81

    invoke-direct/range {v0 .. v80}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v81
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/qs/logging/PanelLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/util/QsStatusEventLog;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 82
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            "Landroid/content/res/Resources;",
            "Landroid/os/Handler;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/keyguard/SecLockIconViewController;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/systemui/wallet/controller/QuickAccessWalletController;",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            "Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;",
            "Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            ")",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;"
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

    move/from16 v22, p21

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

    .line 529
    new-instance v81, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-object/from16 v0, v81

    invoke-direct/range {v0 .. v80}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/qs/logging/PanelLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/util/QsStatusEventLog;)V

    return-object v81
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 82

    move-object/from16 v0, p0

    .line 398
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/LayoutInflater;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/doze/DozeLog;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->displayIdProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/app/ActivityManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->flingAnimationUtilsBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->qsDetailDisplayerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v41, v1

    check-cast v41, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v44, v1

    check-cast v44, Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v45, v1

    check-cast v45, Landroid/os/UserManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v46, v1

    check-cast v46, Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->ambientStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/android/keyguard/SecLockIconViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->privacyDotViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->fragmentServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Landroid/content/ContentResolver;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->quickAccessWalletControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v57, v1

    check-cast v57, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->recordingControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v59, v1

    check-cast v59, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v60, v1

    check-cast v60, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v61, v1

    check-cast v61, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v62, v1

    check-cast v62, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->controlsComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v63, v1

    check-cast v63, Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v64, v1

    check-cast v64, Lcom/android/systemui/qs/logging/PanelLogger;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v65, v1

    check-cast v65, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v66, v1

    check-cast v66, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v67, v1

    check-cast v67, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v68, v1

    check-cast v68, Lcom/android/systemui/pluginlock/PluginLockData;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v69, v1

    check-cast v69, Lcom/android/keyguard/EmergencyButtonController$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v70, v1

    check-cast v70, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->nioComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v71, v1

    check-cast v71, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->notificationShelfManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v72, v1

    check-cast v72, Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->clockPositionAlgorithmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v73, v1

    check-cast v73, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->mascotViewContainerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v74, v1

    check-cast v74, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->faceWidgetTouchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v75, v1

    check-cast v75, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->expandQSAtOnceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v76, v1

    check-cast v76, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->blurredCaptureStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v1

    check-cast v77, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v78, v1

    check-cast v78, Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->coverScreenManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v79, v1

    check-cast v79, Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v80, v1

    check-cast v80, Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->qsStatusEventLogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v81, v0

    check-cast v81, Lcom/android/systemui/util/QsStatusEventLog;

    invoke-static/range {v2 .. v81}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/qs/logging/PanelLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/util/QsStatusEventLog;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->get()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    return-object p0
.end method
