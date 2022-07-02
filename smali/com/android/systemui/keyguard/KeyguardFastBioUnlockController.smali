.class public Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.super Ljava/lang/Object;
.source "KeyguardFastBioUnlockController.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;,
        Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field protected static final MODE_CLEAR:I = 0x0

.field protected static final MODE_FLAG_CHANGE_HEIGHT:I = 0x40

.field protected static final MODE_FLAG_CHANGE_VISIBILITY:I = 0x20

.field protected static final MODE_FLAG_ENABLED:I = 0x10

.field protected static final MODE_FLAG_FRAME_COMMIT:I = 0x1

.field protected static final MODE_FLAG_FRAME_REQUEST:I = 0x2

.field protected static final MODE_FLAG_STARTED_SCREEN_OFF:I = 0x8

.field protected static final MODE_FLAG_STARTED_SCREEN_ON:I = 0x4

.field private static final sFlags:[I

.field private static final sFlagsStr:[Ljava/lang/String;


# instance fields
.field private final mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field private mBioUnlockBoosterEnabled:Z

.field private mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final mBiometricUnlockControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mFrameCommitRunnable:Ljava/lang/Runnable;

.field private mGoingAwayTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHeightChangedListener:Ljava/util/function/IntConsumer;

.field private final mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field private mMode:I

.field private final mNotificationShadeWindowControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetRunnable:Ljava/lang/Runnable;

.field private mScrimUpdater:Ljava/lang/Runnable;

.field private mScrimVisibility:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mStartKeyguardExitAnimationTime:J

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mSubWallpaperType:I

.field private final mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewMediatorHelperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityChangedListener:Ljava/util/function/IntConsumer;

.field private final mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field private mWaitStartTime:J

.field private mWallpaperType:I


# direct methods
.method public static synthetic $r8$lambda$1uetmZh50ApMtWT71dVT_tH77to(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->lambda$onFrameRequest$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJ6YU6Ihmh34ITYFcl-I1y8S2hE(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->onReset()V

    return-void
.end method

.method public static synthetic $r8$lambda$EjBF4yoxr-nUSx4OR7YVd0BiU7M(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->lambda$reset$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sl5IGzzKf2QBN9mTsnprSoABQTY(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->lambda$onFrameCommit$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLP8yzzvKRwEgCxLUT3F3S3kcgw(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$w-JIJVhVv9hp7dZ0JOENsJ7hK5s(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->lambda$onFrameCommit$4(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 60
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 89
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    const-string v1, "E"

    const-string v2, "OFF"

    const-string v3, "ON"

    const-string v4, "VIS"

    const-string v5, "HEIGHT"

    const-string v6, "F_REQ"

    const-string v7, "F_COMMIT"

    .line 94
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x8
        0x4
        0x20
        0x40
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Landroid/view/Choreographer;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Landroid/view/Choreographer;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER:Z

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBioUnlockBoosterEnabled:Z

    const/4 v1, 0x0

    .line 107
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x0

    .line 110
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    const/4 v2, -0x1

    .line 111
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimVisibility:I

    .line 112
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mWallpaperType:I

    .line 113
    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSubWallpaperType:I

    .line 117
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 118
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    .line 119
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimUpdater:Ljava/lang/Runnable;

    .line 120
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    .line 121
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 122
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mFrameCommitRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    .line 125
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    .line 132
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v1, p1

    .line 159
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    move-object v1, p2

    .line 160
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mContext:Landroid/content/Context;

    move-object/from16 v1, p14

    .line 161
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mViewMediatorHelperLazy:Ldagger/Lazy;

    move-object v1, p11

    .line 162
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mViewControllerLazy:Ldagger/Lazy;

    move-object v1, p4

    .line 163
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mChoreographer:Landroid/view/Choreographer;

    move-object v1, p5

    .line 164
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v1, p6

    .line 165
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object v1, p7

    .line 166
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, p8

    .line 167
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p9

    .line 168
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object v1, p10

    .line 169
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mStatusBarLazy:Ldagger/Lazy;

    move-object v1, p12

    .line 170
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p15

    .line 171
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    move-object v1, p3

    .line 172
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSubWallpaperType:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mWallpaperType:I

    return p1
.end method

.method private static getModeString(I)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, "CLEAR"

    return-object p0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget v5, v1, v3

    and-int v6, v5, p0

    if-ne v6, v5, :cond_2

    if-eqz v4, :cond_1

    const/16 v5, 0x7c

    .line 192
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTraceString(I)Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BioUnlock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getModeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWallpaperType()I
    .locals 1

    .line 464
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSubWallpaperType:I

    return p0

    .line 467
    :cond_0
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mWallpaperType:I

    return p0
.end method

.method private isMode(I)Z
    .locals 0

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isChangeHeight()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->onFrameCommit(Z)V

    return-void
.end method

.method private synthetic lambda$onFrameCommit$4(J)V
    .locals 11

    .line 342
    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mStartKeyguardExitAnimationTime:J

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mGoingAwayTime:J

    sub-long/2addr v0, v2

    .line 343
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mWaitStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result p0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz p0, :cond_0

    const-wide/16 v9, 0x0

    cmp-long p0, v0, v9

    if-lez p0, :cond_0

    .line 346
    div-long/2addr v0, v4

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    .line 348
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p0, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p0, v8

    const/4 v2, 0x3

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "foreground is shown / interval: %dms / goingAway: %dms / end time: %dms / keyguard duration: %dms"

    .line 347
    invoke-static {p1, p0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v8, [Ljava/lang/Object;

    .line 353
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v6

    const-string p1, "foreground is shown / interval: %dms / end time: %dms"

    invoke-static {p1, p0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "BioUnlock"

    .line 356
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFrameCommit$5(Z)V
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateScrim()V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->cancel()V

    .line 367
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFrameRequest$3(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 277
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "BioUnlock"

    const-string/jumbo p1, "waiting for frame drawn / lap time: %dms"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$reset$2(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 245
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "BioUnlock"

    const-string/jumbo p1, "reset / elapsed time: %dms"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onFrameCommit(Z)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->removeHeightChangedListener(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->removeVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    const/16 v0, 0x2710

    .line 340
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mViewMediatorHelperLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->onForegroundShown()V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onFrameRequest(Z)V
    .locals 8

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mWaitStartTime:J

    if-nez p1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mFrameCommitRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    :cond_0
    const/16 v0, 0x2710

    .line 276
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda6;

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "BioUnlock"

    const-string v3, "onFrameRequest displayState=%d"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 291
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->getNotificationShadeView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onReset()V
    .locals 4

    .line 403
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    const-string v1, "BioUnlock"

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "onReset 0x%x"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    return-void
.end method

.method private runPendingRunnable()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 390
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 396
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runPendingRunnable executed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BioUnlock"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setMode(I)V
    .locals 8

    .line 562
    monitor-enter p0

    .line 563
    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    if-ne v0, p1, :cond_0

    .line 564
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    .line 568
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v1, "BioUnlock"

    const-string/jumbo v5, "setMode 0x%x(%s) -> 0x%x(%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getModeString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 571
    invoke-static {v1, v5, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "BioUnlock"

    const-string/jumbo v5, "setMode 0x%x -> 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v5, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isTraceEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 581
    :cond_2
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    if-eqz p1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    .line 589
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getTraceString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    .line 590
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getTraceString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    goto :goto_1

    .line 583
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getTraceString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    goto :goto_1

    .line 586
    :cond_4
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getTraceString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 568
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setWakeAndUnlock(ZZ)V
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 537
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 547
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result p2

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    or-int/2addr p1, p2

    or-int/lit8 p1, p1, 0x20

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    return-void
.end method

.method private startBioUnlockBooster()V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mContext:Landroid/content/Context;

    const-string v1, "KEYGUARD_UNLOCK"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc1d

    .line 660
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 662
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

    .line 667
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    return-void
.end method

.method private stopBioUnlockBooster()V
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    return-void
.end method

.method private updateScrim()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimUpdater:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimVisibility:I

    if-eqz p0, :cond_0

    .line 378
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPendingRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public calculateMode(I)V
    .locals 10

    .line 471
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isOccluded()Z

    move-result v1

    .line 473
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v2

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getWallpaperType()I

    move-result v3

    .line 477
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "BioUnlock"

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    const-string v4, "leaveOpenOnKeyguardHide true"

    .line 478
    invoke-static {v7, v4}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "canPanelBeCollapsed false"

    .line 480
    invoke-static {v7, v4}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eq p1, v8, :cond_3

    if-eq p1, v5, :cond_3

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const/4 v4, 0x6

    if-eq p1, v4, :cond_3

    const/4 v4, 0x7

    if-eq p1, v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    .line 496
    invoke-direct {p0, v6, v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(ZZ)V

    goto :goto_0

    .line 503
    :cond_3
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 504
    :cond_4
    invoke-direct {p0, v8, v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(ZZ)V

    .line 513
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v4

    const/4 v9, 0x3

    if-nez v4, :cond_6

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v9

    const-string p1, "not supported mode=%d, animation=%b, showing=%b, occluded=%b"

    .line 515
    invoke-static {v7, p1, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    goto :goto_1

    :cond_6
    new-array p0, v9, [Ljava/lang/Object;

    .line 520
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, v6

    .line 521
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "preventSsd=%b, forceVisChange=%b wType=%d"

    .line 519
    invoke-static {v7, p1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected getMode()I
    .locals 1

    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mMode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 599
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAODScrimState()Z
    .locals 3

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 429
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_3

    :cond_2
    move v1, v0

    .line 434
    :cond_3
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAODScrimState "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BioUnlock"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public isChangeHeight()Z
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 1

    const/16 v0, 0x10

    .line 553
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    return p0
.end method

.method public isEnabledBioUnlockBooster()Z
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBioUnlockBoosterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceUnlocked()Z
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFastUnlockMode()Z
    .locals 1

    const/16 v0, 0x14

    .line 456
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    return p0
.end method

.method public isFastWakeAndUnlockMode()Z
    .locals 1

    const/16 v0, 0x18

    .line 449
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    return p0
.end method

.method public isFingerprintUnlocked()Z
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrameCommitted()Z
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNextFrameRequested()Z
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    .line 604
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    and-int/lit8 p0, v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x2

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotReady()Z
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x2710

    const-string v0, "BioUnlock"

    .line 206
    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onHeightChanged(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BioUnlock"

    const-string v2, "onHeightChanged h=%d"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mFrameCommitRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public queueIdle()Z
    .locals 1

    const-string p0, "BioUnlock"

    const-string v0, "idle state"

    .line 692
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public requestChangeVisibility()V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->onFrameRequest(Z)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    .line 244
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->resetForceInvisible(Z)V

    const/16 v2, 0x2710

    .line 245
    sget-object v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$$ExternalSyntheticLambda7;

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    .line 246
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->disable(I)Z

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->removeVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->removeHeightChangedListener(Ljava/util/function/IntConsumer;)V

    .line 253
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)V

    if-eqz v0, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateScrim()V

    .line 260
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBioUnlockBoosterEnabled:Z

    if-eqz v0, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->stopBioUnlockBooster()V

    :cond_4
    const-wide/16 v0, 0x0

    .line 264
    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mGoingAwayTime:J

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mStartKeyguardExitAnimationTime:J

    return-void
.end method

.method public setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public setDelayedActionUntilNextFrame(Ljava/lang/Runnable;J)V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->discard()V

    .line 682
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mDelayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    const/4 p0, 0x1

    .line 683
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    return-void
.end method

.method public setEnabled()V
    .locals 7

    .line 210
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mPendingRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x10

    .line 216
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    const/16 v0, 0x2710

    .line 217
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    const-string v0, "BioUnlock"

    const-string/jumbo v1, "setEnabled"

    .line 218
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x14

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->enable(IJJ)Z

    .line 222
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(IJJ)Z

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 229
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBioUnlockBoosterEnabled:Z

    if-eqz v0, :cond_3

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startBioUnlockBooster()V

    :cond_3
    return-void
.end method

.method setEnabledBioUnlockBooster(Z)V
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mBioUnlockBoosterEnabled:Z

    return-void
.end method

.method public setKeyguardGoingAwayTime()V
    .locals 2

    .line 697
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mGoingAwayTime:J

    return-void
.end method

.method public setScrimUpdater(Ljava/lang/Runnable;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public setScrimVisibility(I)V
    .locals 4

    .line 413
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mScrimVisibility:I

    .line 415
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "BioUnlock"

    const-string/jumbo v3, "setScrimVisibility scrimVisibility=%d"

    invoke-static {v2, v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 420
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mNotificationShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceInvisible(Z)V

    :cond_2
    return-void
.end method

.method public setStartKeyguardExitAnimationTime()V
    .locals 2

    .line 701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mStartKeyguardExitAnimationTime:J

    return-void
.end method

.method setWakeAndUnlock(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(ZZ)V

    return-void
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 636
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
