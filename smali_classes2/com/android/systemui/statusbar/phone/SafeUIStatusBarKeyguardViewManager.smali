.class public Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.source "SafeUIStatusBarKeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;
    }
.end annotation


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field private final mFaceAuthScreenBrightnessController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstUpdate:Z

.field private mGesturalNav:Z

.field private mGlobalActionsVisible:Z

.field private mIsDocked:Z

.field private mIsPortraitMode:Z

.field private final mKeyguardBouncerFactory:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;

.field private mKeyguardGoneCancelAction:Ljava/lang/Runnable;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastBiometricMode:I

.field private mLastBouncerDismissible:Z

.field private mLastBouncerIsOrWillBeShowing:Z

.field private mLastBouncerShowing:Z

.field private mLastDozing:Z

.field private mLastGesturalNav:Z

.field private mLastGlobalActionsVisible:Z

.field private mLastIsDocked:Z

.field protected mLastOccluded:Z

.field private mLastPulsing:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field protected mOccluded:Z

.field private mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

.field private mPulsing:Z

.field protected mRemoteInputActive:Z

.field private mScreenWidthDp:I

.field protected mShowing:Z

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p13

    .line 220
    invoke-direct/range {p0 .. p17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 96
    new-instance v4, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    .line 123
    new-instance v5, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    const/4 v5, 0x0

    .line 150
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 151
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    const/4 v5, 0x1

    .line 159
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 176
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    .line 187
    new-instance v5, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 871
    new-instance v5, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 226
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    move-object v5, p2

    .line 227
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object v5, p3

    .line 228
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v5, p5

    .line 229
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v5, p7

    .line 230
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 231
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v5, p10

    .line 232
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v5, p12

    .line 233
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v5, p6

    .line 234
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v5, p4

    .line 235
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v5, p8

    .line 236
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v5, p11

    .line 237
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    .line 238
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardBouncerFactory:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;

    .line 240
    new-instance v5, Lcom/android/keyguard/KeyguardBouncerContainer;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6, v6}, Lcom/android/keyguard/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 241
    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->addBouncer(Landroid/widget/FrameLayout;)V

    .line 242
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;->create(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    .line 793
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 795
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 796
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private isWakeAndUnlocking()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private needsBypassFading()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private registerListeners()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsPortraitMode:Z

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenWidthDp:I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 265
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 264
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsDocked:Z

    :cond_1
    return-void
.end method

.method private setDozing(Z)V
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eq v0, p1, :cond_2

    .line 543
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    if-nez p1, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    :cond_2
    return-void
.end method

.method private updateLockIcon()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bouncerIsOrWillBeShowing()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inTransit()Z

    move-result p0

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

.method public bouncerNeedsScrimming()Z
    .locals 1

    .line 1087
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->willDismissWithAction()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 1089
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 1090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public cancelPendingWakeupAction()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 1080
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_0

    .line 1081
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 1082
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public dismissAndCollapse()V
    .locals 0

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 471
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 473
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 474
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 475
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 478
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public dispatchBackKeyEventPreIme()Z
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchBackKeyEventPreIme()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "StatusBarKeyguardViewManager:"

    .line 1094
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRemoteInputActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneRunnables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingWakeupAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz p0, :cond_0

    .line 1104
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method protected getLastNavBarVisible()Z
    .locals 6

    .line 978
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 979
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBiometricMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    .line 980
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPulsing:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastIsDocked:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGesturalNav:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz v4, :cond_7

    .line 982
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hide(JJ)V
    .locals 6

    const/4 p3, 0x0

    .line 641
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    .line 642
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 643
    invoke-interface {p4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    .line 642
    invoke-interface {p4, p3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    .line 646
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x30

    add-long/2addr p1, v4

    sub-long/2addr p1, v0

    .line 650
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result p1

    const/4 p1, 0x1

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 731
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    .line 733
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p2, p3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardShowing(Z)V

    .line 734
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    const/16 p0, 0x3e

    .line 736
    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method

.method hideBouncer(Z)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 432
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 433
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 992
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isBouncerShowing()Z
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isGoingToNotificationShade()Z
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p0

    return p0
.end method

.method protected isNavBarVisible()Z
    .locals 5

    .line 965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 966
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    .line 967
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsDocked:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz v4, :cond_7

    .line 969
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1
.end method

.method public isOccluded()Z
    .locals 0

    .line 620
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    return p0
.end method

.method public isSecure()Z
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 818
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    return p0
.end method

.method public isUnlockWithWallpaper()Z
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->isShowingWallpaper()Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 0

    return-void
.end method

.method public launchPendingWakeupAction()V
    .locals 4

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    .line 1067
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_1

    .line 1069
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz p0, :cond_1

    .line 1073
    invoke-interface {p0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    .line 839
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 279
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsPortraitMode:Z

    .line 280
    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenWidthDp:I

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->setDozing(Z)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    return-void
.end method

.method public onKeyguardFadedAway()V
    .locals 0

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 752
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 753
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eq p1, v0, :cond_0

    .line 754
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    .line 755
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 0

    return-void
.end method

.method public onQsExpansionChanged(F)V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 761
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->registerListeners()V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    .line 509
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_3
    return-void
.end method

.method public setGlobalActionsVisible(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public setKeyguardGoingAwayState(Z)V
    .locals 0

    .line 1037
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardNeedsInput(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 4

    const/16 v0, 0x3e

    if-eqz p1, :cond_0

    .line 580
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 581
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 595
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 596
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 599
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 600
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    .line 601
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 604
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardOccluded(Z)V

    .line 607
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_5

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    :cond_5
    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method protected shouldDestroyViewOnReset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result p0

    return p0
.end method

.method public shouldSubtleWindowAnimationsForUnlock()Z
    .locals 0

    .line 1016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result p0

    return p0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardShowing(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    .line 389
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v2

    .line 388
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    const/16 p0, 0x3e

    const/4 p1, 0x2

    .line 391
    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method

.method public showBouncer(Z)V
    .locals 2

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->shouldDestroyViewOnReset()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 412
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    .line 415
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 631
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 636
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    return-void
.end method

.method protected updateNavigationBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method protected updateStates()V
    .locals 11

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    .line 883
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShowing:Z

    .line 884
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOccluded:Z

    .line 885
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v3

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v4

    .line 887
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 888
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const/4 v8, 0x0

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v6

    .line 890
    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v6

    :goto_3
    if-ne v9, v10, :cond_4

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_7

    :cond_4
    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    if-eqz v7, :cond_5

    goto :goto_4

    .line 896
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v10, 0x400000

    or-int/2addr v0, v10

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_5

    .line 894
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v10, -0x400001

    and-int/2addr v0, v10

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 900
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v0

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v9

    if-ne v0, v9, :cond_8

    .line 902
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_9

    .line 903
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    .line 906
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_b

    .line 907
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBouncerShowing(Z)V

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateLockIcon()V

    :cond_b
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    move v0, v6

    goto :goto_6

    :cond_c
    move v0, v8

    .line 914
    :goto_6
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_d

    move v9, v6

    goto :goto_7

    :cond_d
    move v9, v8

    :goto_7
    if-ne v0, v9, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_10

    .line 915
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_f

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    move v6, v8

    :goto_8
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(Z)V

    .line 917
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerIsOrWillBeShowing:Z

    if-ne v4, v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_12

    .line 918
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 921
    :cond_12
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 922
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    .line 924
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 925
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 926
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerIsOrWillBeShowing:Z

    .line 927
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 928
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    .line 929
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastDozing:Z

    .line 930
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPulsing:Z

    .line 931
    iput v8, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBiometricMode:I

    .line 932
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGesturalNav:Z

    .line 933
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsDocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastIsDocked:Z

    return-void
.end method
