.class public Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.super Ljava/lang/Object;
.source "KeyguardViewMediatorHelper.java"


# static fields
.field protected static HIDE:I = 0x2

.field protected static KEYGUARD_DONE:I = 0x7

.field protected static KEYGUARD_DONE_DRAWING:I = 0x8

.field protected static RESET:I = 0x3

.field protected static SET_OCCLUDED:I = 0x9

.field protected static SHOW:I = 0x1

.field protected static START_KEYGUARD_EXIT_ANIM:I = 0xc


# instance fields
.field private USER_PRESENT_INTENT:Landroid/content/Intent;

.field private final mAODShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field private final mBiometricUnlockControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarLifeManager:Lcom/android/systemui/util/CarLifeManager;

.field private final mCarrierLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

.field private final mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private mDisableFlags:I

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mExtraUserPresentIntent:Landroid/content/Intent;

.field private final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field private mFirstKeyguardShown:Z

.field private final mFmmLock:Ljava/lang/Object;

.field private final mFoldStateExecutor:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderOpened:Ljava/lang/Boolean;

.field private mGoingAwayWithAnimation:Z

.field private mHandleMsgLogKey:I

.field private mHandler:Landroid/os/Handler;

.field private final mHelperCallbackLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitShowTime:J

.field private mIsAODShowStateCbRegistered:Z

.field private mKeyguardDoneOnFoldOpened:Z

.field private final mKeyguardViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mLastShowingTime:J

.field private mLastWakeReason:I

.field private final mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private mLockForViewMediator:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mLockStaySoundId:I

.field private final mLooperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field private mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

.field private final mNotificationShadeWindowControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPM:Landroid/os/PowerManager;

.field private final mPickupController:Lcom/android/systemui/sensor/PickupController;

.field private final mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mRefreshRateToken:Landroid/os/IBinder;

.field private final mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

.field private mScreenTuringOnTime:J

.field private mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSleepReason:I

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field private final mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field private final mToken:Landroid/os/IBinder;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserId:I

.field private final mViewMediatorLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public static synthetic $r8$lambda$4kk220ZcXBn6-7Ig6aShafjC0Sw(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->notifyDrawn()V

    return-void
.end method

.method public static synthetic $r8$lambda$54sN0MUia3rjZObajFfUMorU6s4(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$onSecurityPropertyUpdated$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$KauDa_1RaH38CIwA7nwbfrnqQzA(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$sendBroadcastDataUsageReminder$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NZmQIaRc2YNSKOKLzlmXqktaxB4(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$handleSetPendingIntentAfterUnlock$5(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Nk6qPA35vQ-3vYU08G0It0mvCKo(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->updateLockscreenShowState()V

    return-void
.end method

.method public static synthetic $r8$lambda$ORlk7yIOm29MEG4Q5-welY_OEQQ(IJ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$endHandleMsg$8(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qr0wBcVtNvCwpDo2ASnSvPaBbTs(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$startSetPendingIntent$6(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$RL4i0izQ9dsXVBfTwYJJMKa_0H4(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$onSdpUnlocked$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuQt6D1juCss-Fep_0Vp-NQpgqg(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$handleSecMessage$0(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZGGhKScH9guniYChJbU6MpIy8M(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$registerSysDumpHeap$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_oOIdz_wAOCnxhV91CKJYwYrUis(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$startSetPendingIntent$7(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibmbJkzqqZ2G5s_Dm4fbCrqZShQ(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->lambda$handleNotifyStartedWakingUpPost$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$lr3OO-KpP3_Ta71dEjAACv-jWNs(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->onAODShowStateChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/util/CarLifeManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 6
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
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 139
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisableFlags:I

    .line 142
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUserId:I

    .line 146
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mToken:Landroid/os/IBinder;

    .line 155
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mRefreshRateToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    .line 166
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandleMsgLogKey:I

    const/4 v1, 0x0

    .line 169
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    const-wide/16 v3, 0x0

    .line 180
    iput-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastShowingTime:J

    .line 182
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    .line 189
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    .line 191
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    .line 193
    iput-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    .line 198
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

    .line 213
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mAODShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 215
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mIsAODShowStateCbRegistered:Z

    .line 218
    iput-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 231
    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFirstKeyguardShown:Z

    .line 257
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFmmLock:Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mCarrierLock:Ljava/lang/Object;

    .line 263
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 280
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 411
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    move-object v1, p1

    .line 525
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 526
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v1, p4

    .line 527
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mStatusBarLazy:Ldagger/Lazy;

    move-object v1, p5

    .line 528
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    move-object v1, p3

    .line 529
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p7

    .line 530
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v1, p8

    .line 531
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    move-object v1, p9

    .line 532
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    move-object/from16 v1, p10

    .line 533
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v1, p12

    .line 534
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p13

    .line 535
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    move-object/from16 v1, p11

    .line 536
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p14

    .line 537
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v1, p15

    .line 538
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object/from16 v1, p16

    .line 539
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    move-object/from16 v1, p17

    .line 540
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mCarLifeManager:Lcom/android/systemui/util/CarLifeManager;

    move-object/from16 v1, p18

    .line 541
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPickupController:Lcom/android/systemui/sensor/PickupController;

    move-object/from16 v1, p19

    .line 542
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v1, p20

    .line 543
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPM:Landroid/os/PowerManager;

    move-object v1, p6

    .line 544
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p21

    .line 545
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p22

    .line 546
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    move-object/from16 v1, p23

    .line 547
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v1, p24

    .line 548
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLooperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 550
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFoldStateExecutor:Ljava/util/Optional;

    goto :goto_1

    .line 551
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFoldStateExecutor:Ljava/util/Optional;

    .line 557
    :goto_1
    invoke-static/range {p25 .. p25}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->setLogger(Lcom/android/systemui/log/SamsungServiceLogger;)V

    .line 561
    invoke-static/range {p26 .. p26}, Lcom/android/systemui/keyguard/SecurityDumpLog;->setLogger(Lcom/android/systemui/log/SamsungServiceLogger;)V

    move-object/from16 v1, p27

    .line 565
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    move-object/from16 v1, p28

    .line 570
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object/from16 v1, p29

    .line 571
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Ljava/lang/Object;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->notifyRemoteLockRequested(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/PowerManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPM:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mCarrierLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;I)Z
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/knox/KnoxStateMonitor;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFmmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private adjustStatusBarLocked()V
    .locals 0

    .line 2392
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->adjustStatusBarLocked()V

    return-void
.end method

.method private disableAODShowState()V
    .locals 2

    .line 1071
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mIsAODShowStateCbRegistered:Z

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mAODShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mIsAODShowStateCbRegistered:Z

    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 0

    .line 2388
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method private final getLock()Ljava/lang/Object;
    .locals 0

    .line 2368
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockForViewMediator:Ljava/lang/Object;

    return-object p0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    .line 2185
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2184
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1080
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "swipe"

    :goto_0
    return-object p0

    .line 1083
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "0x%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "password"

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "pin"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "pattern"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1107
    fill-array-data v2, :array_0

    const-string v4, "fingerprints"

    const-string v5, "face"

    .line 1109
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_2
    if-ge v3, v1, :cond_6

    .line 1112
    aget v6, v2, v3

    .line 1113
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ", "

    .line 1114
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1119
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x100
    .end array-data
.end method

.method private handleBootCompleted()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleBootCompleted"

    .line 2301
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_0

    .line 2304
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->onBootCompleted()V

    :cond_0
    return-void
.end method

.method private handleFolderStateChanged(ZJ)V
    .locals 8

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1749
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1752
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isShowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const-string v3, "KeyguardViewMediator"

    const-string v6, "handleFolderStateChanged: isOpened=%b, interactive=%b, showing=%b, time=%d"

    .line 1751
    invoke-static {v3, v6, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    cmp-long p2, p2, v6

    if-gtz p2, :cond_0

    return-void

    .line 1758
    :cond_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 1760
    sget-object p2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1761
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->hasShowMsg()Z

    move-result p2

    const/4 p3, 0x0

    const-string v2, "@bouncer.no_animation"

    if-eqz p2, :cond_1

    .line 1762
    invoke-virtual {v0, p3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1764
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1765
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "dismiss failed. Permanent state."

    .line 1766
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1769
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget p3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->RESET:I

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1770
    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->resetPendingReset()V

    .line 1771
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_3

    .line 1773
    sget-object p3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1776
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1777
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1779
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSkipBouncer()V

    :cond_4
    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_0

    .line 1787
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->setCustomMessage(Ljava/lang/String;)V

    .line 1788
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardViewController;->folderOpenAndDismiss()V

    goto :goto_1

    .line 1783
    :cond_6
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    .line 1784
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    .line 1785
    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->tryKeyguardDone()V

    goto :goto_1

    .line 1791
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    .line 1792
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->hasShowMsg()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1793
    invoke-virtual {v0, p3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1798
    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1799
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    goto :goto_1

    .line 1802
    :cond_9
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p2, :cond_a

    .line 1803
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->adjustStatusBarLocked()V

    .line 1806
    :cond_a
    :goto_1
    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz p2, :cond_c

    .line 1807
    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz p2, :cond_b

    .line 1808
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p2}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 1810
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->onFolderStateChanged(Z)V

    :cond_c
    return-void
.end method

.method private handleLaunchPersoLock()V
    .locals 4

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleLaunchPersoLock"

    .line 2226
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    .line 2230
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2231
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v2, "doKeyguardLocked"

    .line 2232
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE_DRAWING:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2234
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2237
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2238
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2240
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->HIDE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2241
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->HIDE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2244
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 2245
    invoke-interface {v0, v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->setHiding(Z)V

    .line 2248
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetStateLocked()V

    .line 2250
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_2

    .line 1508
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1509
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isNextFrameRequested()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFrameCommitted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1510
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "KeyguardViewMediator"

    const-string v2, "handleNotifyScreenTurningOn"

    .line 1511
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->notifyDrawn()V

    return-void

    .line 1516
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    .line 1517
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1518
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->hasShowMsg()Z

    move-result v4

    .line 1519
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1520
    :goto_0
    iget-wide v8, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastShowingTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastShowingTime:J

    sub-long v10, v8, v10

    .line 1521
    :cond_4
    invoke-interface {v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isWakeAndUnlocking()Z

    move-result v8

    .line 1522
    invoke-interface {v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->hasPendingLock()Z

    move-result v9

    const-string v12, "KeyguardViewMediator"

    const-string v13, "handleNotifyScreenTurningOn wakeAndUnlock=%b, bioUnlock=%b hasShow=%b, pendingLock=%b, hasCb=%b, interval=%d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    .line 1525
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v15, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v14, v15

    const/4 v6, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1524
    invoke-static {v12, v13, v14}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardViewController;->onScreenTurningOn()V

    if-eqz v1, :cond_9

    if-nez v8, :cond_8

    if-nez v5, :cond_6

    if-nez v4, :cond_8

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0xc8

    cmp-long v4, v10, v6

    if-gez v4, :cond_7

    if-nez v5, :cond_7

    .line 1533
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1534
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "KeyguardViewMediator"

    const-string v1, "delayed notifyDawn"

    .line 1535
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    monitor-exit v3

    return-void

    .line 1539
    :cond_7
    invoke-interface {v2, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto :goto_3

    .line 1530
    :cond_8
    :goto_2
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1542
    :cond_9
    :goto_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRemoteLockRequested(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleRemoteLockRequested"

    .line 2203
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    instance-of v0, p1, Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v0, :cond_1

    .line 2206
    check-cast p1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 2207
    iget-boolean v0, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-nez v0, :cond_1

    .line 2208
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockType()I

    move-result v0

    iget p1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    .line 2209
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2210
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetStateLocked()V

    :cond_0
    return-void

    .line 2216
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2217
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2219
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetStateLocked()V

    .line 2221
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    return-void
.end method

.method private handleSetPendingIntentAfterUnlock(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "PI"

    .line 1342
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "FI"

    .line 1343
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    const/4 v2, 0x0

    .line 1344
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "ignoreUnlock"

    .line 1345
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "showCoverToast"

    .line 1346
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "notificationKey"

    .line 1347
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1349
    sget-boolean v6, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    .line 1350
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v0, v3, v5}, Lcom/android/systemui/doze/PluginAODManager;->showCoverToast(Landroid/app/PendingIntent;ZLjava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "KeyguardViewMediator"

    if-eqz v3, :cond_2

    const-string v1, "handleSetPendingIntentAfterUnlock() ignoreUnlock"

    .line 1355
    invoke-static {v4, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto/16 :goto_7

    .line 1357
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1359
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    const-string v3, "afterKeyguardGone"

    .line 1360
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1361
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    .line 1362
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v7, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v6

    :goto_1
    const-string v9, "dismissType"

    .line 1365
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    const/4 v10, -0x1

    .line 1367
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v11, "fingerprinterror"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v11, "shutdown"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_2
    const-string v11, "emergencymode"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v10, v6

    goto :goto_2

    :sswitch_3
    const-string/jumbo v11, "reboot"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    move v10, v2

    :goto_2
    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 1389
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3

    .line 1369
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    :goto_3
    move v7, v6

    goto :goto_4

    .line 1379
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1380
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_OFF:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3

    .line 1383
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_EMERGENCY_MODE_ON:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3

    .line 1374
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v9, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3

    .line 1398
    :cond_a
    :goto_4
    sget-object v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const-string v9, "dismissIfInsecure"

    .line 1403
    invoke-virtual {p1, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v1, :cond_b

    if-eqz v3, :cond_d

    :cond_b
    if-eqz v5, :cond_c

    .line 1410
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, v6}, Lcom/android/keyguard/KeyguardViewController;->setShowSwipeBouncer(Z)V

    goto :goto_5

    :cond_c
    move v10, v2

    goto :goto_6

    :cond_d
    :goto_5
    move v10, v6

    :goto_6
    const-string/jumbo v1, "withAnimation"

    .line 1415
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    const-string/jumbo v1, "wakeAndUnlock"

    .line 1416
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetPendingIntentAfterUnlock() : afterKeyguardGone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isInstantDismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " withAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wakeAndUnlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardViewController;

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/android/keyguard/KeyguardViewController;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;ZZ)V

    goto :goto_7

    :cond_e
    if-eqz v1, :cond_f

    .line 1428
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_7

    .line 1429
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isExternallyEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v5, :cond_10

    .line 1431
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    :cond_10
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37ba085b -> :sswitch_3
        -0xaa3314c -> :sswitch_2
        -0xa17f9aa -> :sswitch_1
        0x1ea9d7a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasShowMsg()Z
    .locals 1

    .line 2384
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->SHOW:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .locals 0

    .line 2372
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p0

    return p0
.end method

.method private isSecure(I)Z
    .locals 0

    .line 2376
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method private isShowing()Z
    .locals 0

    .line 2380
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isShowing()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$endHandleMsg$8(IJ)V
    .locals 2

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1880
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "KeyguardViewMediator"

    const-string p1, "handleMessage %d / elapsed time: %dms"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleNotifyStartedWakingUpPost$4()V
    .locals 1

    .line 1258
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->sendSALog(I)V

    return-void
.end method

.method private synthetic lambda$handleSecMessage$0(Landroid/os/Message;)V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private synthetic lambda$handleSetPendingIntentAfterUnlock$5(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 0

    .line 1423
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onSdpUnlocked$2(Z)V
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->unlockSdp(Z)V

    return-void
.end method

.method private synthetic lambda$onSecurityPropertyUpdated$9()V
    .locals 1

    .line 2333
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string/jumbo v0, "sys.locksecured"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$registerSysDumpHeap$1()V
    .locals 1

    .line 1125
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->registerHeapDump(I)V

    return-void
.end method

.method private synthetic lambda$sendBroadcastDataUsageReminder$3(Z)V
    .locals 3

    .line 1170
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.Keyguard.LOCK_NOTIFY"

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.Keyguard.UNLOCK_NOTIFY"

    :goto_0
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 1171
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.samsung.android.sm_cn"

    .line 1172
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "timeinfo"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/os/UserHandle;

    .line 1174
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1170
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$startSetPendingIntent$6(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1478
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "KeyguardViewMediator"

    const-string/jumbo p1, "startSetPendingIntent runnable %dms"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startSetPendingIntent$7(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12

    const/4 v0, -0x1

    .line 1444
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    const-string v1, "KeyguardViewMediator"

    if-eqz p1, :cond_2

    .line 1447
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 1451
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1452
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    if-nez p2, :cond_1

    .line 1454
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    move-object v4, p1

    move-object v7, p3

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1456
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Cannot send pending intent due to : "

    .line 1460
    invoke-static {v1, p1, p0}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 1464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notificationKey="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-class p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 1466
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1469
    :try_start_1
    const-class p3, Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/statusbar/IStatusBarService;

    .line 1471
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result p1

    .line 1472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    const/4 v1, 0x1

    .line 1470
    invoke-static {p2, p1, p0, v1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    .line 1469
    invoke-interface {p3, p2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1478
    :catch_1
    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda13;

    invoke-static {v0, p0}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    return-void
.end method

.method private needsLockImmediatelyByFolder(I)Z
    .locals 1

    .line 794
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 795
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isSecure(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyDrawn()V
    .locals 3

    .line 1571
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1572
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-nez v1, :cond_0

    .line 1573
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyDrawn called"

    .line 1575
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v1, 0x0

    .line 1577
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyFolderStateChanged(ZJ)V
    .locals 5

    .line 1720
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-wide/16 v1, 0xbb8

    .line 1721
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startMonitoring(IJ)V

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string v2, "notifyFolderStateChanged remove previous msg"

    .line 1725
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1729
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_3

    if-eqz p1, :cond_3

    .line 1730
    iget-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    cmp-long p2, p2, v0

    if-lez p2, :cond_3

    .line 1731
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1732
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->resetPendingLock()V

    .line 1733
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->removeShowMsg()V

    .line 1737
    :cond_3
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_4

    .line 1738
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p3, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->onFolderStateChanged(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 1742
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onFolderStateChanged(Z)V

    :cond_5
    return-void
.end method

.method private notifyRemoteLockRequested(Ljava/lang/Object;)V
    .locals 3

    .line 2192
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2193
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2194
    instance-of p1, p1, Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz p1, :cond_0

    .line 2195
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private onAODShowStateChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1048
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAODShowStateChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardViewMediator"

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerSysDumpHeap()V
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetStateLocked()V
    .locals 0

    .line 2396
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->resetStateLocked()V

    return-void
.end method

.method private sendSALog(I)V
    .locals 1

    .line 1263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSALogging "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardViewMediator"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_2

    const/16 p0, 0x70

    if-eq p1, p0, :cond_1

    const/16 p0, 0x71

    if-eq p1, p0, :cond_0

    const-string p0, "5"

    goto :goto_0

    :cond_0
    const-string p0, "7"

    goto :goto_0

    :cond_1
    const-string p0, "2"

    goto :goto_0

    :cond_2
    const-string p0, "6"

    goto :goto_0

    :cond_3
    const-string p0, "3"

    goto :goto_0

    :cond_4
    const-string p0, "1"

    .line 1289
    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz p1, :cond_5

    .line 1290
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "500"

    const-string v0, "5001"

    goto :goto_1

    :cond_5
    const-string p1, "101"

    const-string v0, "1062"

    .line 1295
    :goto_1
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setCustomMessage(Ljava/lang/String;)V
    .locals 0

    .line 2409
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->setCustomMessage(Ljava/lang/String;)V

    return-void
.end method

.method private showForegroundImmediatelyIfNeeded()Z
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 839
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFrameCommitted()Z

    move-result p0

    xor-int/2addr v1, p0

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 841
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFaceUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 842
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFingerprintUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 844
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFingerprintUnlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 849
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceInvisible(Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const-string p0, "KeyguardViewMediator"

    const-string/jumbo v0, "showForegroundImmediatelyIfNeeded returns true"

    .line 855
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method private updateLockscreenShowState()V
    .locals 2

    .line 2119
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isAodShowing()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->updateActivityLockScreenState(ZZ)V

    return-void
.end method


# virtual methods
.method adjustStatusBarLocked(IZZZZ)V
    .locals 6

    .line 960
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v0

    if-nez p3, :cond_2

    .line 963
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    const/high16 v1, 0x1000000

    or-int/2addr p1, v1

    const/high16 v1, 0x200000

    if-nez p2, :cond_1

    :goto_0
    goto :goto_2

    .line 969
    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v2, :cond_3

    .line 970
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 v1, 0x1200000

    :goto_2
    or-int/2addr p1, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 977
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isRemoteLockMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x50000

    or-int/2addr p1, v1

    .line 983
    :cond_4
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisableFlags:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "KeyguardViewMediator"

    if-ne v1, p1, :cond_5

    new-array p0, v2, [Ljava/lang/Object;

    .line 985
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "adjustStatusBarLocked: no need to update flags=0x%x / showHomeOverLock=%s"

    .line 984
    invoke-static {v5, p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 989
    :cond_5
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisableFlags:I

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 994
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isSecure()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "adjustStatusBarLocked: mShowing=%s mOccluded=%s isSecure=%s force=%s showHomeOverLock=%s gestureNaviMode=%s --> flags=0x%x"

    .line 993
    invoke-static {v5, p2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p2, :cond_6

    const-string/jumbo p2, "statusbar"

    .line 1000
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1003
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p2, :cond_7

    .line 1004
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p3, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "adjustStatusBarLocked - disable failed"

    .line 1007
    invoke-static {v5, p1, p0}, Lcom/android/systemui/keyguard/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method boostUnlock()V
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabledBioUnlockBooster()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2147
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

    .line 2148
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    return-void
.end method

.method public cancelLockWhenCoverIsOpened()V
    .locals 2

    .line 2046
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2047
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->cancelLockWhenCoverIsOpened(Z)V

    .line 2048
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method cancelLockWhenCoverIsOpened(Z)V
    .locals 2

    .line 2063
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelLockWhenCoverIsOpened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 2066
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 2068
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->increaseDelayedShowingSeq()V

    :cond_0
    return-void
.end method

.method cancelSysDumpTrigger()V
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancel()V

    return-void
.end method

.method protected changeFolderState(Z)V
    .locals 5

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 1704
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1705
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1707
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFolderState: isOpened="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", changed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardViewMediator"

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1710
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    const/4 p1, 0x2

    const-wide/16 v3, 0xbb8

    .line 1712
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->enableLooperLogController(IJ)V

    .line 1714
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->notifyFolderStateChanged(ZJ)V

    :cond_3
    return-void
.end method

.method cleanUp()V
    .locals 0

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUp()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 2339
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->dump(Ljava/io/PrintWriter;)V

    .line 2342
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "First shown: "

    .line 2343
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2351
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2352
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-ne v0, v2, :cond_3

    const/16 v4, 0x2a

    goto :goto_2

    :cond_3
    const/16 v4, 0x20

    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "User %d%c"

    invoke-static {v4, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lockTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v4, v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->getLockTimeout(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lockInstantlyWithPowerKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2356
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v6

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2355
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    .line 2357
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "  lockTypeSummary=%s"

    invoke-static {v4, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2358
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / canSkipBouncer=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2362
    :cond_6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method enableAODShowState()V
    .locals 6

    .line 1039
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mIsAODShowStateCbRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mAODShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v3, v1, [Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "aod_show_state"

    .line 1041
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1040
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 1043
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mIsAODShowStateCbRegistered:Z

    return-void
.end method

.method enableLooperLogController(IJ)V
    .locals 9

    .line 2154
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLooperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x14

    move v2, p1

    move-wide v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->enable(IJJJ)Z

    :cond_0
    return-void
.end method

.method endHandleMsg(I)V
    .locals 2

    .line 1878
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandleMsgLogKey:I

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    const/4 p1, -0x1

    .line 1883
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandleMsgLogKey:I

    return-void
.end method

.method getDrawnCallbackIfNeeded(Z)Lcom/android/internal/policy/IKeyguardDrawnCallback;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 864
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz p1, :cond_0

    .line 866
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method getLockAfterTimeoutForKnox(J)J
    .locals 4

    .line 1142
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockDelay()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "KeyguardViewMediator"

    const-string v2, "mdmDelay=%d, lockAfterTimeout=%d"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1145
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method getLockSoundVolume(Landroid/media/AudioManager;II)F
    .locals 0

    if-ne p2, p3, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    const/4 p2, 0x0

    .line 2023
    invoke-virtual {p1, p0, p2}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result p0

    return p0
.end method

.method getProfileLockTimeout(I)J
    .locals 8

    .line 2255
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_screen_off_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    .line 2259
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 2260
    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    cmp-long v7, v0, v4

    if-lez v7, :cond_1

    .line 2264
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    move-wide v0, v2

    goto :goto_1

    :cond_2
    cmp-long v2, v0, v4

    if-gtz v2, :cond_3

    return-wide v0

    :cond_3
    :goto_1
    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x1388

    .line 2274
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2277
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2278
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->getLastUserActivityTime(I)J

    move-result-wide p0

    sub-long/2addr v2, p0

    .line 2279
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 2281
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method getUserId()I
    .locals 0

    .line 1034
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUserId:I

    return p0
.end method

.method handleKeyguardDone()I
    .locals 2

    .line 1637
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(I)Z

    :cond_0
    const/4 v0, 0x0

    .line 1641
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->getLastInfoAndReset(Z)I

    move-result v0

    const/4 v1, 0x3

    .line 1643
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->t(II)V

    .line 1647
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->boostUnlock()V

    return v0
.end method

.method handleKeyguardDonePendingTimeout(ZZZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1845
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "KeyguardViewMediator"

    const-string p3, "handleKeyguardDonePendingTimeout donePending=%s hideAniRun=%s hideAniRunning=%s"

    .line 1844
    invoke-static {p2, p3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1848
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    :cond_0
    return-void
.end method

.method handleNotifyScreenTurnedOffPost()V
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1584
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    :cond_0
    return-void
.end method

.method handleNotifyStartedGoingToSleepPost()V
    .locals 3

    .line 1993
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1994
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "change mHiding = false"

    .line 1995
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->setHiding(Z)V

    .line 1998
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetFastBioUnlockMode()V

    .line 2004
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    .line 2005
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetKeyguardDoneOnFoldOpened()V

    .line 2009
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->enableAODShowState()V

    return-void

    :catchall_0
    move-exception p0

    .line 1998
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method handleNotifyStartedWakingUpPost()V
    .locals 7

    .line 1230
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    .line 1231
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startMonitoring(IJ)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    .line 1235
    invoke-interface {v0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isShowing()Z

    move-result v0

    .line 1236
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v1

    .line 1237
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    .line 1239
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v3, :cond_3

    .line 1240
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getUserId()I

    move-result v4

    .line 1242
    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    const/16 v6, 0x67

    if-ne v5, v6, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v1, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_3

    .line 1243
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isAutomaticUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1245
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1246
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->handleHide()V

    :cond_3
    if-nez v0, :cond_4

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->hasShowMsg()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestSessionClose()V

    goto :goto_1

    .line 1254
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestBiometricsAuth(I)V

    .line 1258
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method handleOnWakeAndUnlocking()Z
    .locals 1

    const-string v0, "onWakeAndUnlocking"

    .line 1590
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->logLapTime(Ljava/lang/String;)V

    .line 1594
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1597
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeMaskViewForOpticalFpSensor()V

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->removeShowMsg()V

    .line 1603
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onWakeAndUnlock()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method handleSecMessage(Landroid/os/Message;)V
    .locals 3

    .line 591
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4b1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->START_KEYGUARD_EXIT_ANIM:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->showForegroundImmediatelyIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Message;)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setDelayedActionUntilNextFrame(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 608
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleFolderStateChanged(ZJ)V

    .line 609
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->setFolderState(Z)V

    goto :goto_0

    .line 625
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto :goto_0

    .line 600
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleSetPendingIntentAfterUnlock(Landroid/os/Bundle;)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleBootCompleted()V

    goto :goto_0

    .line 620
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleLaunchPersoLock()V

    goto :goto_0

    .line 615
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->handleRemoteLockRequested(Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handleShowPost(ZI)V
    .locals 1

    .line 1666
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DATA_USAGE_REMINDER:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->sendBroadcastDataUsageReminder(Z)V

    .line 1671
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1672
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1674
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1675
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_3

    .line 1676
    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSleepReason:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 1678
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1682
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedDrawnCbRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1679
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 p2, 0x0

    .line 1680
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1685
    :cond_4
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1688
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastShowingTime:J

    .line 1692
    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 1693
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    .line 1696
    :cond_6
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_ADJUST_REFRESH_RATE:Z

    if-eqz p1, :cond_7

    .line 1697
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->updateRefreshRate()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    .line 1685
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method handleShowPre()V
    .locals 4

    .line 1654
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_1

    .line 1655
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mInitShowTime:J

    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetFastBioUnlockMode()V

    return-void
.end method

.method handleStartKeyguardExitAnimationPost(Z)V
    .locals 5

    .line 1967
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1972
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestSessionClose()V

    .line 1979
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1983
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DATA_USAGE_REMINDER:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1984
    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->sendBroadcastDataUsageReminder(Z)V

    .line 1987
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    .line 1988
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetKeyguardDoneOnFoldOpened()V

    :cond_1
    return-void
.end method

.method handleSystemReadyPost()V
    .locals 6

    const-string v0, "KeyguardViewMediator"

    .line 640
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 642
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFoldStateExecutor:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFoldStateExecutor:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    invoke-direct {v3, v4, v5}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 653
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "RemoteLockMonitorCallback regi Failed!"

    .line 655
    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startPickUpController()V

    .line 663
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v1, :cond_2

    const-string v1, "handleSystemReady(). check FBE"

    .line 664
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateUserUnlockNotification(I)V

    :cond_2
    return-void
.end method

.method handleTryKeyguardDone(Z)Z
    .locals 2

    .line 1611
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(I)Z

    :cond_0
    if-nez p1, :cond_2

    .line 1615
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 1617
    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 1618
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 1620
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->boostUnlock()V

    const/4 p0, 0x1

    .line 1624
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->getLastInfoAndReset(Z)I

    move-result p1

    const v0, 0x11170

    .line 1625
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v0, 0x3

    .line 1628
    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/Log;->t(II)V

    return p0
.end method

.method init(Ljava/lang/Object;Landroid/os/Handler;Landroid/app/AlarmManager;Landroid/content/Intent;IIIIIII)V
    .locals 0

    .line 577
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    .line 578
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 579
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockForViewMediator:Ljava/lang/Object;

    .line 580
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 581
    sput p5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->SHOW:I

    .line 582
    sput p6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->HIDE:I

    .line 583
    sput p7, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->RESET:I

    .line 584
    sput p8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE:I

    .line 585
    sput p9, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE_DRAWING:I

    .line 586
    sput p10, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->SET_OCCLUDED:I

    .line 587
    sput p11, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->START_KEYGUARD_EXIT_ANIM:I

    return-void
.end method

.method isAutomaticUnlockEnabled()Z
    .locals 0

    .line 2173
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method isCancelDismiss()Z
    .locals 1

    .line 2084
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DISABLE_DEX_KEYGUARD_SERVICE:Z

    if-nez v0, :cond_0

    .line 2085
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "KeyguardViewMediator"

    const-string v0, "Cannot perform dismiss on dex"

    .line 2086
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isCancelDoKeyguardLaterLocked()Z
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    const-string v1, "KeyguardViewMediator"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p0, "doKeyguardLaterLocked is cancelled on dex"

    .line 1180
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1189
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    const-string p0, "doKeyguardLaterLocked is already in process"

    .line 1190
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1194
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isLockscreenDisabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method isCancelOnReceiver()Z
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "mDelayedLockBroadcastReceiver is cancelled on dex"

    .line 1203
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1205
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetDoKeyguardPendingIntent()V

    .line 1206
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isDesktopMode()Z
    .locals 0

    .line 2075
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0

    return p0
.end method

.method isDreamKeyguardDisabled()Z
    .locals 1

    .line 783
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DISABLE_LOCK_FOR_AR:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vr"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vr/GearVrManager;

    if-eqz p0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->isConnect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isFastWakeAndUnlockMode()Z
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p0

    return p0
.end method

.method isInLockTaskMode()Z
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isKeyguardDisabled(Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 708
    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockScreenDisabledbyKNOXForBoot()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "KeyguardViewMediator"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 713
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DISABLE_LOCK_POLICY:Z

    if-eqz v1, :cond_2

    const-string p0, "keyguardDisabled: floating feature"

    .line 714
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 718
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "keyguardDisabled: factory binary"

    .line 719
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 723
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/os/FactoryTest;->checkAutomationTestOption(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "keyguardDisabled: automation test"

    .line 724
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 735
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAccessControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "keyguardDisabled: access control is enabled"

    .line 736
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    if-eqz p1, :cond_6

    return v2

    .line 745
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 746
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 748
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to stop app pinning"

    .line 750
    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 755
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "keyguardDisabled: pending fingerprint auth"

    .line 756
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 760
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 761
    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "keyguardDisabled: it is disabled by Knox"

    .line 762
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 766
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_a

    .line 767
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 768
    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 769
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    .line 770
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p1

    if-nez p1, :cond_a

    .line 771
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "doKeyguard: not showing because cover is showing"

    .line 772
    invoke-static {v3, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    return v2
.end method

.method public isKeyguardDoneOnFoldOpened()Z
    .locals 0

    .line 1816
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    return p0
.end method

.method isLockSoundEnabled()Z
    .locals 0

    .line 2178
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLockSoundEnabled()Z

    move-result p0

    return p0
.end method

.method log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "KeyguardViewMediator"

    .line 2400
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method logLapTime(Ljava/lang/String;)V
    .locals 1

    .line 886
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public needsCollapsePanelWithNoAnimation()Z
    .locals 1

    .line 2014
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->SET_OCCLUDED:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

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

.method needsWakeUpInDreamState()Z
    .locals 2

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 1831
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1835
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method notifyDismissKeyguardOnDex()V
    .locals 0

    .line 2100
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyDismissKeyguard()V

    return-void
.end method

.method notifyDrawnPre()V
    .locals 5

    .line 2404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mScreenTuringOnTime:J

    sub-long/2addr v0, v2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 2405
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyDrawn %dms"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyExitKeyguardAnimationIfNeeded()V
    .locals 1

    .line 2105
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 2107
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2109
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->cancelLockWhenCoverIsOpened()V

    .line 2113
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startKeyguardExitAnimationIfNeededOnDex()V

    :cond_2
    return-void
.end method

.method notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3

    const/4 v0, 0x3

    const-wide/16 v1, 0xbb8

    .line 1548
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->enableLooperLogController(IJ)V

    .line 1551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mScreenTuringOnTime:J

    .line 1553
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1555
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 1556
    monitor-exit v0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1560
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1561
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    .line 1562
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFolderOpened:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    .line 1565
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2310
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-nez v0, :cond_0

    .line 2311
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onForegroundShown()V
    .locals 3

    const-string v0, "BioUnlock"

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundShown hasDrawnCb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2164
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_1

    .line 2165
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v1, 0x0

    .line 2166
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2168
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onHandleKeyguardDone()V
    .locals 1

    .line 1061
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->setKeyguardDismissCancelled()V

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->resetFastBioUnlockMode()V

    return-void
.end method

.method onKeyguardGone()V
    .locals 0

    .line 1053
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->disableAODShowState()V

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->registerSysDumpHeap()V

    return-void
.end method

.method public onNotifyDismissKeyguard()Z
    .locals 3

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->setHiding(Z)V

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2128
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1, v0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->startKeyguardExitAnimation(JJ)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public onPendingBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1300
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 1301
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->removeShowMsg()V

    .line 1303
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyDismissKeyguard()V

    :cond_0
    return-void
.end method

.method onSdpLocked()V
    .locals 2

    .line 1130
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->checkSdpCondition(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardViewMediator"

    const-string v0, "onSdpLocked return by check condition"

    .line 1133
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1136
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->lockSdp()V

    :cond_1
    return-void
.end method

.method onSdpUnlocked()V
    .locals 3

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->checkSdpCondition(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardViewMediator"

    const-string v0, "onSdpUnlocked return by check condition"

    .line 1154
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 1158
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1159
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onSecurityPropertyUpdated()V
    .locals 2

    .line 2330
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onStartedWakingUp(I)V
    .locals 3

    const/4 v0, 0x4

    const-wide/16 v1, 0xbb8

    .line 1215
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->enableLooperLogController(IJ)V

    .line 1217
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    const/4 p0, 0x3

    const/4 v0, 0x1

    .line 1220
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/Log;->t(III)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 2322
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 2323
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public playLockStaySound()V
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockStaySoundId:I

    invoke-interface {v0, p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->playSound(I)V

    return-void
.end method

.method prepareHandleMsg(I)V
    .locals 2

    .line 1869
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandleMsgLogKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1870
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->endHandleMsg(I)V

    .line 1872
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandleMsgLogKey:I

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1873
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "handleMessage %d"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method removeMessage(I)V
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method removeShowMsgOnCoverOpened()V
    .locals 5

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 2034
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    .line 2035
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->getUserId()I

    move-result v2

    .line 2036
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLastWakeReason:I

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->isAutomaticUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2039
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->removeShowMsg()V

    :cond_2
    return-void
.end method

.method resetDoKeyguardPendingIntent()V
    .locals 1

    const/4 v0, 0x0

    .line 2053
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method resetFastBioUnlockMode()V
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    return-void
.end method

.method resetFastBioUnlockModeIfNotReady()V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_0
    return-void
.end method

.method resetGoingAwayWithAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1337
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    return-void
.end method

.method resetKeyguardDoneOnFoldOpened()V
    .locals 1

    const/4 v0, 0x0

    .line 1821
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    return-void
.end method

.method sendBroadcastDataUsageReminder(Z)V
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDataUsageReminderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendExtraUserPresent(I)V
    .locals 2

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mExtraUserPresentIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "com.verizon.mips.services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mExtraUserPresentIntent:Landroid/content/Intent;

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mExtraUserPresentIntent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method setBootAnimationFinished()V
    .locals 2

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFirstKeyguardShown:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "BootAnimationFinished"

    .line 2288
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    invoke-interface {v0}, Lcom/android/systemui/BootAnimationFinishedTrigger;->setBootAnimationFinished()V

    const/4 v0, 0x0

    .line 2290
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFirstKeyguardShown:Z

    :cond_0
    return-void
.end method

.method setDoKeyguardPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 2058
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDoKeyguardPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method setKeyguardDismissCancelled()V
    .locals 0

    .line 1024
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardDismissCancelled()V

    return-void
.end method

.method setKeyguardGoingAway(I)V
    .locals 5

    const-string v0, "KeyguardViewMediator"

    .line 911
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mGoingAwayWithAnimation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 913
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 914
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    or-int/lit8 p1, p1, 0x2

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isWakeAndUnlocking()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 p1, p1, 0x10

    .line 922
    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_4

    .line 923
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit16 p1, p1, 0x200

    .line 926
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    if-eqz v1, :cond_4

    or-int/lit8 p1, p1, 0x20

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 935
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setTrigger()V

    .line 938
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V

    const-string v3, "keyguardGoingAway flags=0x%x"

    new-array v4, v1, [Ljava/lang/Object;

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Error while calling WindowManager"

    .line 942
    invoke-static {v0, v3, p1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p1, v2

    .line 945
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setKeyguardGoingAwayTime()V

    .line 949
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardDoneOnFoldOpened:Z

    if-eqz v0, :cond_6

    .line 950
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->resetForceInvisible(Z)V

    .line 954
    :cond_6
    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->t(IZ)V

    return-void
.end method

.method setLastSleepReason(I)V
    .locals 0

    .line 1826
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSleepReason:I

    return-void
.end method

.method setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    .line 1318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PI"

    .line 1319
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "FI"

    .line 1320
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "ignoreKeyguardState"

    const/4 v1, 0x0

    .line 1322
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1324
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    .line 1325
    invoke-interface {p2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isShowing()Z

    move-result v1

    .line 1326
    invoke-interface {p2}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->isExternallyEnabled()Z

    move-result p2

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 1329
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1330
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1331
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method setUserId(I)V
    .locals 0

    .line 1029
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUserId:I

    return-void
.end method

.method setupLocked()V
    .locals 5

    .line 1887
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isSupportPenDetachmentOption(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1892
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    .line 1893
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    .line 1894
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1895
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "android.permission.SEND_SMS"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1897
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.FindingLostPhonePlus.CANCEL"

    .line 1898
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 1899
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 1905
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.keyguard.CLEAR_LOCK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1906
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1910
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setupLocked()V

    .line 1915
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    const-string v1, "KEYGUARD_UNLOCK"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc1c

    .line 1916
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1917
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 1918
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1923
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;-><init>()V

    .line 1924
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/BackupRestoreReceiver;->registerBackupRestoreReceiver(Landroid/content/Context;)V

    return-void
.end method

.method setupSound(Landroid/media/SoundPool;III)V
    .locals 3

    const-string v0, "/system/media/audio/ui/Unlock_VA_Mode.ogg"

    const/4 v1, 0x1

    .line 1931
    invoke-virtual {p1, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockStaySoundId:I

    if-nez v1, :cond_0

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load lock stay sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_LOCK_SITUATION_VOLUME:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "stv_lock_screen"

    .line 1938
    invoke-virtual {p1, p2, v0}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    const-string/jumbo p2, "stv_unlock_screen"

    .line 1939
    invoke-virtual {p1, p3, p2}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 1940
    invoke-virtual {p1, p4, p2}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 1942
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockStaySoundId:I

    invoke-virtual {p1, p0, p2}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method startDelayedShowingStateRunnable()V
    .locals 3

    .line 2137
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDelayedLockscreenShowStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method startFingerprintAuthentication()V
    .locals 0

    .line 2317
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchForceStartFingerprint()V

    return-void
.end method

.method startKeyguardExitAnimation(JJLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1949
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "KeyguardViewMediator"

    const-string/jumbo p2, "startKeyguardExitAnimation startTime=%d, duration=%d"

    invoke-static {p1, p2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1953
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->cancelSysDumpTrigger()V

    .line 1956
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ec

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1957
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1958
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setStartKeyguardExitAnimationTime()V

    .line 1959
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1961
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method startKeyguardExitAnimationIfNeededOnDex()V
    .locals 0

    .line 2095
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->startExitKeyguardAnimationIfNeeded()V

    return-void
.end method

.method startMonitoring(IJ)V
    .locals 0

    .line 2296
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(IJ)Z

    return-void
.end method

.method startPickUpController()V
    .locals 0

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mPickupController:Lcom/android/systemui/sensor/PickupController;

    invoke-virtual {p0}, Lcom/android/systemui/sensor/PickupController;->start()V

    return-void
.end method

.method startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "notificationKey"

    .line 1442
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1481
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isPanelFullyCollapsed()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1482
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    :cond_0
    return p2
.end method

.method startedEarlyWakingUp(I)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "startedEarlyWakingUp"

    .line 1861
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator#startedEarlyWakingUp"

    .line 1862
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1863
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchStartedEarlyWakingUp(I)V

    .line 1864
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method updateActivityLockScreenState(ZZ)V
    .locals 5

    const-string p0, "KeyguardViewMediator"

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "updateActivityLockScreenState %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1493
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1495
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    const-string/jumbo v2, "setLockScreenShown is failed"

    .line 1498
    invoke-static {p0, v2}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :goto_0
    invoke-static {v1, v0, p1, p2}, Lcom/android/systemui/keyguard/Log;->t(IZZZ)V

    return-void
.end method

.method updatePendingLock(IJZILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    .line 802
    sget-boolean p7, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    if-ne p1, v0, :cond_0

    const-string p7, "net.mirrorlink.on"

    const-string v2, ""

    .line 804
    invoke-static {p7, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    const-string v2, "1"

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 p7, 0x3

    const-wide/16 v2, 0x0

    if-ne p1, p7, :cond_1

    cmp-long p7, p2, v2

    if-gtz p7, :cond_3

    .line 806
    :cond_1
    sget-boolean p7, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz p7, :cond_2

    if-ne p1, v0, :cond_2

    .line 810
    invoke-direct {p0, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->needsLockImmediatelyByFolder(I)Z

    move-result p7

    if-nez p7, :cond_2

    cmp-long p7, p2, v2

    if-gtz p7, :cond_3

    :cond_2
    const/4 p7, 0x2

    if-ne p1, p7, :cond_5

    if-nez p4, :cond_5

    .line 813
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mHelperCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->updatePhoneState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 814
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    cmp-long p0, p2, v2

    if-gtz p0, :cond_4

    goto :goto_0

    :cond_4
    move-object p6, p8

    goto :goto_0

    .line 821
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move-object p6, v1

    :goto_0
    if-eqz p6, :cond_7

    .line 830
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method updateRefreshRate()V
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode()I

    move-result v0

    const-string v1, "KeyguardViewMediator"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mViewMediatorLazy:Ldagger/Lazy;

    .line 673
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-nez v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_1

    const-string v0, "display"

    .line 676
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v0, :cond_2

    .line 681
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mRefreshRateToken:Landroid/os/IBinder;

    const/16 v3, 0x60

    invoke-interface {v0, v2, v3, v1}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    const-string/jumbo v0, "updateRefreshRate enabled"

    .line 683
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 685
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 689
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-nez p0, :cond_4

    const-string/jumbo p0, "updateRefreshRate failed"

    .line 690
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-eqz v0, :cond_4

    .line 695
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;->release()V

    const-string/jumbo v0, "updateRefreshRate disabled"

    .line 696
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 698
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    :cond_4
    :goto_2
    return-void
.end method
