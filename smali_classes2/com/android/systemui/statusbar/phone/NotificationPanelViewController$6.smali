.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/qs/logging/PanelLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/util/QsStatusEventLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callUserActivity()V
    .locals 0

    .line 1183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public showFacewidgetDashBoard()V
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->showFaceWidgetDashBoard()V

    return-void
.end method
