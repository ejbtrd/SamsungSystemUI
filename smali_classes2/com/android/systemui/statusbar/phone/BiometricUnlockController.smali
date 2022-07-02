.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;,
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;,
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;
    }
.end annotation


# static fields
.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

.field private mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field private mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mBouncer:Z

.field private mChargingType:I

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDynamicLockMode:I

.field private mFadedAwayAfterWakeAndUnlock:Z

.field private final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field private final mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMode:I

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field private mPendingShowBouncer:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeUpDelay:I

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$LudrU0cYdL9JsIBYqHVmp7EAXII(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onBiometricAuthenticated$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$U0cSJfx5iZKbk3kcdY8in6nb4W0(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onFinishedGoingToSleep$4(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btnq1c_gN6Vx5IdibTfwwH0h91E(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$startWakeAndUnlock$2(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcP4Fj89wKwtFvctr9xLyt3cJcM(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$startWakeAndUnlock$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$z1NNY0KrKiICK2TsvIqNJWPf9_Y(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$startWakeAndUnlock$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 6

    move-object v0, p0

    move-object v1, p9

    move-object/from16 v2, p11

    .line 310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v3, 0x0

    .line 187
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 195
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 353
    new-instance v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    .line 900
    new-instance v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 911
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    move-object v5, p1

    .line 311
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    move-object/from16 v5, p15

    .line 312
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    move-object v5, p5

    .line 313
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 314
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p12

    .line 315
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 316
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 318
    invoke-interface {p9, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    move-object/from16 v1, p16

    .line 323
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v1, p17

    .line 324
    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v1, p18

    .line 325
    invoke-virtual {v1, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object v1, p6

    .line 327
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v1, p2

    .line 328
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object v1, p3

    .line 329
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v1, p4

    .line 330
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v1, p7

    .line 331
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p8

    .line 332
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    const v1, 0x10e011f

    move-object/from16 v3, p10

    .line 333
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    .line 334
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 335
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    move-object/from16 v1, p13

    .line 336
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p19

    .line 337
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 338
    const-class v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v1, p20

    .line 339
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v1, p21

    .line 340
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 1

    .line 728
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForFingerprint(Z)I

    move-result p0

    return p0

    .line 730
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForPassiveAuth(Z)I

    move-result p0

    return p0
.end method

.method private calculateModeForFingerprint(Z)I
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 738
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_3

    .line 746
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    if-eqz p1, :cond_7

    const/4 p0, 0x5

    return p0

    .line 760
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private calculateModeForPassiveAuth(Z)I
    .locals 7

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 769
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isNeedsDeviceDreaming()Z

    move-result v0

    .line 771
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 772
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 775
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez v3, :cond_7

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4

    .line 780
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    move v6, p1

    :cond_4
    return v6

    :cond_5
    if-eqz v1, :cond_6

    return p1

    :cond_6
    return v6

    :cond_7
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    const/4 v6, 0x6

    :cond_8
    return v6

    :cond_9
    const/4 v0, 0x5

    if-eqz p1, :cond_a

    .line 797
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v2

    if-eqz v2, :cond_a

    return v0

    .line 800
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 801
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v2

    const/4 v3, 0x7

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 802
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getAltBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    if-eqz p1, :cond_d

    if-eqz v1, :cond_c

    .line 803
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canPlaySubtleWindowAnimations()Z

    move-result p0

    if-eqz p0, :cond_c

    return v3

    :cond_c
    const/16 p0, 0x8

    return p0

    :cond_d
    if-eqz p1, :cond_10

    if-nez v1, :cond_e

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsFingerDown()Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    move v0, v3

    :cond_f
    return v0

    :cond_10
    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    move v4, v5

    :goto_2
    return v4

    :cond_12
    return v5
.end method

.method private cleanup()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method private isUpdatePossible(Z)Z
    .locals 2

    .line 1158
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 1159
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1160
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 1161
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isOccluded()Z

    move-result p1

    if-nez p1, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$onBiometricAuthenticated$0()V
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$4(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 2

    .line 702
    iget v0, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private synthetic lambda$startWakeAndUnlock$1()V
    .locals 4

    .line 557
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "android.policy:BIOMETRIC"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startWakeAndUnlock$2(ZZ)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BiometricUnlockCtrl"

    const-string v0, "bio wakelock: Authenticated, waking up..."

    .line 552
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-string v1, "PowerManager#wakeUp"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->submit(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 565
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    :cond_1
    const-string/jumbo p1, "release wake-and-unlock"

    .line 567
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 569
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$startWakeAndUnlock$3()V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    if-eqz p0, :cond_0

    .line 654
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;->notifyBiometricAuthModeChanged()V

    :cond_0
    return-void
.end method

.method private onModeChanged(I)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    if-eqz p0, :cond_0

    .line 672
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;->onModeChanged(I)V

    :cond_0
    return-void
.end method

.method private prepareViewAttribution()V
    .locals 7

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x8b4

    const v5, 0x1000118

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    .line 1148
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1149
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    :cond_1
    return-void
.end method

.method private pulsingOrAod()Z
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    .line 417
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private releaseBiometricWakeLock()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "BiometricUnlockCtrl"

    const-string/jumbo v1, "releasing biometric wakelock"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resetMode()V
    .locals 2

    const/4 v0, 0x0

    .line 891
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    .line 892
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceDozeBrightness(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    if-eqz v0, :cond_0

    .line 895
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;->onResetMode()V

    .line 896
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;->notifyBiometricAuthModeChanged()V

    :cond_0
    return-void
.end method

.method private sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1166
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-eqz p0, :cond_0

    const-string p0, "102"

    goto :goto_0

    :cond_0
    const-string p0, "101"

    .line 1167
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showBouncer()V
    .locals 4

    .line 677
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    .line 682
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return-void
.end method

.method private toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    .line 971
    sget-object p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private updateBackgroundAuthToast(ZZ)V
    .locals 2

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update biometric toast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->prepareViewAttribution()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Already unlocked by biometric"

    .line 1111
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1114
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz p1, :cond_2

    .line 1115
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Biometric toast already showing"

    .line 1116
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1119
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1120
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 1122
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$layout;->keyguard_biometric_toast_view:I

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    .line 1124
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1126
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 1131
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1132
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    :cond_5
    :goto_0
    return-void
.end method

.method private updateBackgroundAuthToastForFinger()V
    .locals 3

    .line 1089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZ)V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 1092
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v0, :cond_1

    .line 1095
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZ)V

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 1097
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1099
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1100
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private vibrate(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1025
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    goto :goto_1

    .line 1027
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 1028
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p1}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x72

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 1027
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, " BiometricUnlockController:"

    .line 930
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   mMode="

    .line 931
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "   mWakeLock="

    .line 932
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 2

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    :cond_0
    const-string v0, "BiometricUnlockCtrl"

    const-string v1, "finishKeyguardFadingAway"

    .line 881
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 887
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public getBiometricType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 723
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    return p0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 713
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 714
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPendingAuthentication(Landroid/hardware/biometrics/BiometricSourceType;)Z
    .locals 1

    .line 719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBiometricDismiss()Z
    .locals 5

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    return v4

    .line 1045
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_5

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    return v3
.end method

.method public isBiometricUnlock()Z
    .locals 1

    .line 957
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLockStayEnabled()Z
    .locals 0

    .line 1054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/util/DesktopManager;

    .line 1055
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWakeAndUnlock()Z
    .locals 2

    .line 939
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    const-string v0, "BiometricUnlockController#onBiometricAcquired"

    .line 376
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 377
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x1

    const-string v2, "BiometricUnlockCtrl"

    if-ne p1, v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "onBiometricAcquired - show bouncer!! )"

    .line 379
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->dismiss()V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "onBiometricAcquired( fp wakelock: show bouncer and waking up... ) "

    .line 384
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x4

    const-string v2, "android.policy:BIOMETRIC"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 388
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 396
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v3, :cond_3

    const/4 v0, 0x7

    .line 399
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 401
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "wake-and-unlock:wakelock"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    .line 403
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 405
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "biometric acquired, grabbing biometric wakelock"

    .line 407
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 821
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_0

    .line 823
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 833
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xb

    .line 834
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 833
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 835
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 836
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    const-string v0, "BiometricUnlockController#onBiometricAuthenticated"

    .line 424
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    const-string v1, "BiometricUnlockCtrl"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onBiometricAuthenticated is pending"

    .line 427
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->onPendingBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 436
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 439
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 440
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xa

    .line 441
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 440
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 442
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 443
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 446
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 448
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLockStayEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "onBiometricAuthenticated : Lock stay is enabled."

    .line 449
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->playLockStaySound()V

    .line 452
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 459
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 460
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_a

    const-string/jumbo p1, "onBiometricAuthenticated"

    .line 464
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 468
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 471
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 473
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const-string v2, "1032"

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string p1, "3"

    .line 504
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_4

    .line 475
    :cond_5
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 476
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "the fingerprint is authenticated."

    .line 477
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 479
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 480
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->resetBouncer()V

    goto :goto_2

    .line 482
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->dismiss()V

    .line 485
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "fp wakelock: Authenticated, waking up..."

    .line 487
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 p3, 0x4

    const-string v0, "android.policy:BIOMETRIC"

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_7
    return-void

    .line 495
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible(Z)Z

    move-result p1

    const-string v1, "2"

    if-eqz p1, :cond_9

    .line 496
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    const-string p1, "1033"

    .line 497
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 499
    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_3
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    .line 510
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-string v1, "PowerManager#userActivity"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->submit(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_5

    .line 518
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    const-string/jumbo p0, "onBiometricAuthenticated aborted by bypass controller"

    .line 520
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 844
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x0

    .line 845
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    .line 848
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    .line 852
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xf

    .line 853
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x6cd

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 852
    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 855
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 856
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 996
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p3, v0}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 999
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1002
    :cond_1
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1003
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    .line 1005
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1006
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFailedBiometricUnlockAttempts(I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1007
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 1008
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mChargingType:I

    const/16 p2, 0xc

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-ne p1, p2, :cond_5

    .line 1011
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->kg_fingerprint_wireless_charger_warning:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    return-void
.end method

.method public onDlsViewModeChanged(I)V
    .locals 0

    .line 1083
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForFinger()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    const-string p1, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 698
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz p1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 705
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 707
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 1076
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForFinger()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1061
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    if-nez p1, :cond_0

    return-void

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForFinger()V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 1018
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->getChargingType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mChargingType:I

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    const/4 p1, 0x0

    .line 688
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 691
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 692
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZ)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 1070
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForFinger()V

    return-void
.end method

.method public setBiometricModeListener(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    return-void
.end method

.method public setKeyguardViewController(Lcom/android/keyguard/KeyguardViewController;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BiometricUnlockCtrl"

    const-string/jumbo v4, "startWakeAndUnlock(%d)"

    invoke-static {v2, v4, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 536
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 537
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->pulsingOrAod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceDozeBrightness(Z)V

    .line 547
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v4

    if-ne p1, v0, :cond_1

    if-eqz v4, :cond_1

    .line 548
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v3

    .line 549
    :goto_0
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V

    .line 572
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->calculateMode(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 576
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v5, :cond_3

    .line 577
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 579
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    const-string p1, "MODE_DISMISS_BOUNCER or MODE_UNLOCK_FADING"

    .line 582
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 585
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_5

    :pswitch_2
    const-string p1, "MODE_UNLOCK_COLLAPSING"

    .line 588
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v1, :cond_4

    .line 590
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    goto :goto_1

    .line 592
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    .line 595
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 596
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLockStayEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    .line 597
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 606
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :pswitch_3
    const-string p1, "MODE_SHOW_BOUNCER"

    .line 609
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v1, :cond_7

    .line 611
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    goto :goto_2

    .line 613
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    .line 615
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :pswitch_4
    if-ne v5, v2, :cond_8

    const-string v1, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 621
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_3

    :cond_8
    if-ne v5, v0, :cond_9

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    .line 625
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 627
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 631
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 633
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceInvisible(Z)V

    .line 638
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    if-eqz p1, :cond_b

    .line 640
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 642
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 644
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 650
    :goto_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onModeChanged(I)V

    .line 651
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 652
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->addPendingRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 658
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricModeListener:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;

    if-eqz p1, :cond_d

    .line 659
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricModeListener;->notifyBiometricAuthModeChanged()V

    .line 664
    :cond_d
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "startWakeAndUnlock end"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public unlockedByWakeAndUnlock()Z
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
