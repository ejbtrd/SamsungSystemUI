.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field private mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field private mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field private mBottom:I

.field private mBouncer:Z

.field private final mColorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDismissCancelled:Z

.field private mDlsViewMode:I

.field private mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field final mEventHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsBlurredViewAdded:Z

.field private mIsKeyguardShowing:Z

.field private mIsLockscreenDisabled:Z

.field private mIsPendingTypeChange:Z

.field private mIsPluginLockReady:Z

.field mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field private mNaturalBarHeight:I

.field private mNoSensorConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

.field private mOccluded:Z

.field private mOldLockScreenWallpaperSettingsValue:I

.field private mOldLockScreenWallpaperSubSettingsValue:I

.field private mOldTransparentType:I

.field private mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mRootView:Landroid/view/ViewGroup;

.field private mRunnableCleanUp:Ljava/lang/Runnable;

.field private mRunnableSetBackground:Ljava/lang/Runnable;

.field private mRunnableUpdate:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mService:Landroid/app/IWallpaperManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVisibility:I

.field private mWakeupAndUnlocked:Z

.field private mWallpaperChanged:Z

.field private mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field private mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field private mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field private mWcgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-YSPhT_X5xE4aw4Tkgp-pyAVbtw(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$initBlurredView$16(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2s5s1wVayinKQNHYYHtb4e2rmKk(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$handleDlsViewModeDelayed$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$3xstm6x9nZwpeCzJhaTccg7xwVA(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$setRootView$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$6P1p1wYLAFgCUL-4jGMTTte7Gz4(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$setBackground$1(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CO2T_m_ipq9nbdTO3tbrrByP-no(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$setRootView$12(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$NgysXNrq7eKi775FcTl-2mUh5nQ(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$applyBlurInternal$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PznVajcfYB90v8IMFtCmkObRiKY(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$onResume$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$a6xC808pYBMWNJxJcjrN-UwQCVo(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$handleWallpaperResourceUpdated$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fLIbEdA1DGrqLgQz8nqhdGu9954(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$setRootView$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$haRV27KNxm0yIhstWXlYHF-h-sg(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$onResume$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQexrII83Ph3pqVbJk1hliiTp54(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$handleNotifyColorUpdates$9(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXEQyVlffe5Q0D-F2C_Xf3qMuR0(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$disableRotateIfNeeded$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$mynr3frAP0dVlAsFuRZGMVrbG2g(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeededOnUiThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$n9FADTGrUKNGHFF1zG0L3zEcvYQ(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$dispatchWallpaperTypeChanged$6(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nISKvDW10wzMLS7yb9VDHqmzwJQ(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$handleWallpaperTypeChanged$3(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqmPPm1up_l-tmyOnIjO0gEi-c8(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$cleanUpOnUiThread$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$qQUx9o-qKquap66tzf_SHUgLKWE(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$applyBlur$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sC-JNzTUnYy8tUMY8AdY7DhVrMM(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->lambda$updateVisibility$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vBluMWysQPNKa0T1vPPmJOqS9yM(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredViewOnUiThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-class v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 2

    .line 258
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const/4 p6, 0x0

    .line 117
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 118
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    const/4 p11, -0x1

    .line 123
    iput p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    const/4 v0, 0x4

    .line 124
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 125
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 128
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 130
    iput p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 134
    iput p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 135
    iput p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 152
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 153
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 154
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 162
    iput p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 178
    new-instance p11, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {p11, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Ljavax/inject/Provider;

    .line 185
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    .line 188
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWakeupAndUnlocked:Z

    const/4 p11, 0x2

    .line 200
    invoke-static {p11}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p11

    iput-object p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 202
    new-instance p11, Landroid/os/HandlerThread;

    const-string v0, "KeyguardWallpaperThread"

    invoke-direct {p11, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mThread:Landroid/os/HandlerThread;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 233
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 259
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "KeyguardWallpaperController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 263
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 265
    iput-object p7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 266
    iput-object p10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 267
    iput-object p12, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 268
    iput-object p13, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mEventHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 270
    invoke-virtual {p11}, Landroid/os/HandlerThread;->start()V

    const/16 p1, 0xa

    .line 271
    invoke-virtual {p11, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 272
    new-instance p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    invoke-virtual {p11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    .line 280
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 284
    iput-object p5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 285
    invoke-static {p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V

    .line 288
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(Landroid/content/Context;)V

    .line 289
    iput-object p8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 290
    iput-object p9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 291
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo p2, "wallpaper"

    .line 292
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 293
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string p3, "DisplaySolution"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 296
    invoke-virtual {p5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 298
    new-instance p2, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {p2}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 300
    invoke-virtual {p5, p6}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    const/16 p2, 0x10

    .line 301
    invoke-virtual {p5, p2}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 303
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-nez p2, :cond_0

    const-string p0, "WallpaperManagerService is not ready yet! Just return here!"

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo p2, "setLockWallpaperCallback()"

    .line 309
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda19;

    invoke-direct {p2, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda19;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p13, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->setEventReceiver(Ljava/util/function/Consumer;)V

    .line 311
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p1, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    .line 313
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {p1, p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 315
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "System dead?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p1, 0x25f

    .line 322
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    .line 325
    sput-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isFbeWallpaperInDisplay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperChangeObserver;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Message;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperMessage(Landroid/os/Message;)V

    return-void
.end method

.method private applyBlurFilter(I)V
    .locals 2

    .line 2190
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_2

    .line 2191
    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    int-to-float p1, p1

    .line 2193
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2196
    :cond_0
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v0, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 2197
    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    goto :goto_1

    .line 2194
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private cleanUp(Z)V
    .locals 2

    .line 2063
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 2064
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpOnUiThread()V

    goto :goto_0

    .line 2066
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp() is cancelled because view is already null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2070
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    :cond_1
    return-void
.end method

.method private cleanUpBlurredView()V
    .locals 2

    .line 2273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2274
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredViewOnUiThread()V

    goto :goto_0

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private cleanUpBlurredViewOnUiThread()V
    .locals 3

    .line 2281
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2283
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpBlurredView: mBlurredView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz v1, :cond_0

    .line 2285
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 2286
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2287
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    :cond_0
    const/4 v0, 0x0

    .line 2289
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    return-void
.end method

.method private cleanUpOnUiThread()V
    .locals 2

    .line 2075
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2076
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpOnUiThread, remove runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2079
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    .line 2090
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private colorUpdateForModeChange()V
    .locals 2

    .line 777
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "colorUpdateForModeChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates()V

    return-void
.end method

.method private createWallpaperView(IIZZ)Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;
    .locals 28

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v2, p4

    .line 1102
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz v3, :cond_0

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    const/4 v5, 0x4

    const-string v6, "System dead?"

    const/4 v7, 0x0

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2

    const-string v0, "handleWallpaperTypeChanged: default wallpaper or DLS is displayed."

    .line 1167
    invoke-direct {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v9, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v2, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    iget-object v11, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v12, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v13, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v14, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-object v15, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Ljavax/inject/Provider;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v9

    move/from16 v6, p1

    move v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    goto/16 :goto_8

    .line 1135
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v8}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1136
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v8}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1137
    :try_start_2
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1138
    :try_start_3
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v8}, Landroid/app/IWallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1141
    :try_start_4
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v10, ""

    if-eqz v0, :cond_3

    .line 1142
    :try_start_5
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v3

    .line 1143
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v7
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v10

    :cond_3
    move-object/from16 v27, v7

    move-object v7, v3

    move-object/from16 v3, v27

    .line 1147
    :try_start_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 1148
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getScreenId(I)I

    move-result v0

    .line 1149
    iget-object v8, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v8, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1150
    iget-object v8, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v8, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_4
    move-object v10, v4

    :goto_1
    move-object v14, v3

    move-object v15, v5

    move-object v12, v7

    move-object v13, v10

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v27, v7

    move-object v7, v3

    move-object/from16 v3, v27

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v7

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v5, v7

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v4, v7

    move-object v5, v4

    :goto_2
    move-object v9, v5

    :goto_3
    move-object v7, v3

    move-object v3, v9

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v3, v7

    move-object v4, v3

    move-object v5, v4

    move-object v9, v5

    .line 1156
    :goto_4
    sget-object v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v3

    move-object v13, v4

    move-object v15, v5

    move-object v12, v7

    .line 1158
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWallpaperTypeChanged: VIDEO wallpaper path = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkg = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", color = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , filename = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mVisibility = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isFolderStateChanged ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    move-object v10, v0

    iget-object v11, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    move-object/from16 v20, v2

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object/from16 v22, v2

    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    move/from16 v23, v2

    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    move/from16 v24, v2

    iget v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    move/from16 v25, v2

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    move/from16 v26, v1

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v26}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZ)V

    goto/16 :goto_8

    .line 1120
    :cond_5
    :try_start_7
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, v8}, Landroid/app/IWallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v3, v0

    goto :goto_6

    :catch_6
    move-exception v0

    .line 1122
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 1124
    :goto_6
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object v1, v0

    move/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    goto :goto_8

    .line 1114
    :cond_6
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    move-object v1, v0

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;I)V

    goto :goto_8

    .line 1109
    :cond_7
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v9, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v2, :cond_8

    move v10, v4

    goto :goto_7

    :cond_8
    move v10, v3

    :goto_7
    iget-object v11, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v12, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v13, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v14, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-object v15, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Ljavax/inject/Provider;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v9

    move/from16 v6, p1

    move v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    :goto_8
    return-object v0
.end method

.method private disableRotateIfNeeded()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dismissKeyguardWallpaper()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1090
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    return-void
.end method

.method private dispatchWallpaperTypeChanged(IZZ)V
    .locals 2

    .line 1094
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchWallpaperTypeChanged(IZZ)V

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private forceBroadcastWhiteKeyguardWallpaper(I)V
    .locals 3

    .line 1348
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceBroadcastWhiteKeyguardWallpaper: cur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->forceBroadcastWhiteKeyguardWallpaper()V

    .line 1353
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return-void
.end method

.method private getDetailSourceValue()Ljava/lang/String;
    .locals 5

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCustomPackApplied()Z

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isServiceWallpaperApplied()Z

    move-result v1

    .line 1043
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isMultiPackApplied()Z

    move-result p0

    .line 1044
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDetailTypeValue: isCustomMultiPack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isServiceWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isThemeMultiPack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-static {v0, v1, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getMultipackSourceToString(ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperSourceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDetailTypeValue()Ljava/lang/String;
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCustomPackApplied()Z

    move-result v0

    .line 1032
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isMultiPackApplied()Z

    move-result p0

    .line 1033
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getMultipackTypeToString(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1035
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDummyHintItem()Landroid/app/SemWallpaperColors$Item;
    .locals 3

    .line 1770
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "getDummyHintItem()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    new-instance p0, Landroid/app/SemWallpaperColors$Item;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1, v2}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object p0
.end method

.method private getFbeWallpaperType(IZ)I
    .locals 1

    .line 1053
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 1055
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getScreenId(I)I

    move-result p2

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperVideo(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    .line 329
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method private getLockWallpaperType(Z)I
    .locals 6

    .line 2101
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    .line 2102
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    .line 2104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n - isIncludePluginLock: "

    .line 2105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n - mService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2107
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_4

    const-string v5, "\n - type[from WMS]: "

    if-eqz p1, :cond_3

    .line 2110
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    const-string v2, "\n - isDlsWallpaperEnabled: "

    .line 2111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2112
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2113
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperType()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "\n - type[DLS]: "

    .line 2114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2116
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2117
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2119
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getFbeWallpaperType(IZ)I

    move-result p1

    const-string v0, "\n - type[from FBE]: "

    .line 2120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2122
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 2126
    :cond_3
    :try_start_4
    invoke-interface {v2, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2127
    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_0
    move v4, p1

    goto :goto_2

    :catch_1
    move-exception v0

    move v4, p1

    .line 2130
    :goto_1
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System dead?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const-string p1, "\n - WallpaperUtils.getCurrentWhich(): "

    .line 2133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2134
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockWallpaperType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne v4, v0, :cond_5

    .line 2136
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-nez p0, :cond_5

    const-string p0, "getLockWallpaperType: return default type"

    .line 2138
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    return v3
.end method

.method private getWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    .line 2241
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method private getWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 2

    .line 2223
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    .line 2230
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x12

    .line 2237
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method private handleAdaptiveColorModeChanged()V
    .locals 4

    .line 1837
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAdaptiveColorMode()Z

    move-result v0

    .line 1838
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    .line 1845
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(J)V

    .line 1848
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Z)V

    return-void
.end method

.method private handleColorThemeStateChanged()V
    .locals 3

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    .line 1821
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getAdaptiveColorMode()I

    move-result v1

    if-eqz v0, :cond_0

    and-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(I)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColorMode(I)V

    .line 1833
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const-wide/16 v1, 0x400

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(JLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private handleDisplayChanged(IZ)V
    .locals 9

    .line 810
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 811
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    .line 812
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 813
    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 815
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-nez v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 819
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDisplayChanged: open = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , secure = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , can skip bouncer = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , dismissCancelled = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , type = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , showing = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , occuded = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mIsPendingTypeChange = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    if-eqz p2, :cond_7

    .line 831
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 832
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    goto :goto_3

    .line 835
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez p2, :cond_5

    .line 836
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    if-eqz p2, :cond_4

    const-string p2, "handleDisplayChanged, remove cleanup runnable"

    .line 837
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 840
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    goto :goto_2

    .line 842
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUp(Z)V

    .line 845
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    if-eqz p1, :cond_6

    .line 846
    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    .line 848
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p1

    .line 849
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->forceBroadcastWhiteKeyguardWallpaper(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private handleDlsViewModeDelayed(I)V
    .locals 3

    .line 1070
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWallpaperTypeChanged mDlsViewMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleDlsWallpaperChanged()V
    .locals 4

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    .line 935
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDlsWallpaperChanged: wallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    goto :goto_0

    :cond_0
    const-string v1, "handleDlsWallpaperChanged: Type mismatching. Creating new wallpaper view."

    .line 940
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    :goto_0
    return-void
.end method

.method private handleNotifyColorUpdates()V
    .locals 2

    .line 1852
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method private handleNotifyColorUpdates(Landroid/app/SemWallpaperColors;I)V
    .locals 2

    .line 1856
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/app/SemWallpaperColors;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleTransparentChanged(Z)V
    .locals 3

    const-string v0, "WS0004"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 789
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperSourceToString(I)Ljava/lang/String;

    move-result-object p1

    .line 790
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v2}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(Z)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperSourceToString(I)Ljava/lang/String;

    move-result-object p1

    .line 793
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p1

    .line 796
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->forceBroadcastWhiteKeyguardWallpaper(I)V

    .line 806
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->initFlags()V

    return-void
.end method

.method private handleWallpaperChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 904
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "handleWallpaperChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "include_dls"

    .line 908
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 910
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result p1

    const/4 v0, 0x6

    .line 912
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 913
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    .line 914
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 917
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 918
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->clear()V

    const/4 v0, 0x0

    .line 920
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    goto :goto_0

    :cond_3
    const-string v0, "handleWallpaperChanged: Type mismatching. Creating new wallpaper view."

    .line 927
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    :goto_0
    return-void
.end method

.method private handleWallpaperColorChanged(Landroid/os/Bundle;)V
    .locals 6

    .line 1784
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    if-eqz p1, :cond_3

    const-string/jumbo v0, "wallpaper_colors"

    .line 1788
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    const/4 v1, 0x2

    const-string/jumbo v2, "which"

    .line 1789
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1790
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const-string/jumbo v3, "userid"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1792
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_1

    .line 1793
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p1

    and-int/lit8 v2, p1, 0x10

    const-string v3, ". Return."

    const-string v4, ", which = "

    const-string v5, "handleWallpaperColorChanged: currentWhich = "

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_1

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1801
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 1809
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates(Landroid/app/SemWallpaperColors;I)V

    goto :goto_0

    :cond_2
    const-string p1, "handleWallpaperColorChanged: Error - colors is null!"

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "handleWallpaperColorChanged: Error - extra is null!"

    .line 1814
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleWallpaperMessage(Landroid/os/Message;)V
    .locals 3

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 530
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unsupported command ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleTransparentChanged(Z)V

    goto/16 :goto_0

    .line 339
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleAdaptiveColorModeChanged()V

    goto/16 :goto_0

    .line 372
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onLiveWallpaperChanged(Z)V

    goto/16 :goto_0

    .line 527
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    goto/16 :goto_0

    .line 523
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    goto/16 :goto_0

    .line 499
    :pswitch_5
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    .line 500
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDrawState(Z)V

    .line 505
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_1

    .line 506
    invoke-interface {p1, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    .line 513
    :cond_2
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp() mWallpaperView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsKeyguardShowing:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    .line 517
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-nez p1, :cond_b

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    goto/16 :goto_0

    .line 493
    :pswitch_6
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDrawState(Z)V

    .line 494
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_b

    .line 495
    invoke-interface {p0, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    goto/16 :goto_0

    .line 336
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleColorThemeStateChanged()V

    goto/16 :goto_0

    .line 490
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    goto/16 :goto_0

    .line 486
    :pswitch_9
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates()V

    goto/16 :goto_0

    .line 482
    :pswitch_a
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates()V

    goto/16 :goto_0

    .line 479
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    goto/16 :goto_0

    .line 474
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_b

    .line 475
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onFaceAuthError()V

    goto/16 :goto_0

    .line 465
    :pswitch_d
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-nez p1, :cond_4

    .line 466
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBiometricAuthenticated(): wakeup and unlocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_b

    .line 470
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onFingerprintAuthSuccess()V

    goto/16 :goto_0

    .line 453
    :pswitch_e
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_5

    .line 454
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDrawState(Z)V

    .line 455
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p1, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onUnlock()V

    .line 459
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_b

    .line 460
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOldWallpaperView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    goto/16 :goto_0

    .line 429
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 430
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_6

    .line 431
    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onOccluded(Z)V

    .line 434
    :cond_6
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 435
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    instance-of p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 436
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz p1, :cond_7

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    .line 441
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_8

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onOccluded(Z)V

    .line 446
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    if-eq p1, v1, :cond_9

    .line 447
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    .line 450
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateVisibility()V

    goto/16 :goto_0

    .line 417
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 418
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-nez p1, :cond_a

    .line 419
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_a

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 424
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_b

    .line 425
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardBouncerChanged(Z)V

    goto/16 :goto_0

    .line 414
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    goto/16 :goto_0

    .line 411
    :pswitch_12
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onBootCompleted()V

    goto/16 :goto_0

    .line 408
    :pswitch_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 404
    :pswitch_14
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUserSwitching(I)V

    goto/16 :goto_0

    .line 358
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 359
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    const-string/jumbo v1, "which"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V

    goto :goto_0

    .line 398
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p1

    .line 399
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 400
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDisplayChanged(IZ)V

    goto :goto_0

    .line 391
    :pswitch_17
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->resetDlsColors()V

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack()V

    goto :goto_0

    .line 385
    :pswitch_18
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isStartMultipackCondition()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack()V

    goto :goto_0

    .line 381
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->notifyBackupStateChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 346
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperColorChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 342
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleNotifyColorUpdates()V

    goto :goto_0

    .line 369
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    goto :goto_0

    .line 363
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsWallpaperChanged()V

    goto :goto_0

    .line 376
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->colorUpdateForModeChange()V

    .line 377
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    goto :goto_0

    .line 354
    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperChanged(Landroid/os/Bundle;)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x341
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x385
        :pswitch_1c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWallpaperResourceUpdated()V
    .locals 5

    .line 854
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "handleWallpaperResourceUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez v1, :cond_0

    goto :goto_1

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->dismissKeyguardWallpaper()V

    goto :goto_0

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    const-string v1, "handleWallpaperResourceUpdated, remove update runnable"

    .line 877
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    :cond_2
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Ljava/lang/Runnable;

    .line 887
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 893
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDetailTypeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WS0003"

    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDetailSourceValue()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WS0004"

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 859
    :cond_4
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWallpaperResourceUpdated: mIsLockscreenDisabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", isLiveWallpaperEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mRootView == null ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mWallpaperView == null ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 867
    :catch_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "handleWallpaperResourceUpdated: Exception while printing log."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    return-void
.end method

.method private handleWallpaperTypeChanged(I)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p1, "handleWallpaperTypeChanged: mRootView is null."

    .line 947
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 951
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    return-void
.end method

.method private handleWallpaperTypeChanged(IZ)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 955
    iget-boolean v1, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-eqz v1, :cond_0

    const-string v0, "handleWallpaperTypeChanged: mIsLockscreenDisabled"

    .line 956
    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 957
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    return-void

    .line 961
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v2

    .line 963
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v3

    .line 964
    iget-object v4, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v5, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v4

    .line 965
    iget-object v5, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    move-result v5

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v7

    move/from16 v8, p1

    .line 967
    invoke-direct {v6, v8, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getFbeWallpaperType(IZ)I

    move-result v8

    .line 968
    invoke-static {v8}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setWallpaperType(I)V

    .line 970
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v9

    .line 971
    sget-boolean v10, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v10, :cond_1

    const/4 v9, 0x6

    :cond_1
    move v15, v9

    const-string v9, "handleWallpaperTypeChanged: type = "

    .line 973
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", which = "

    .line 974
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", userId = "

    .line 975
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", upsm = "

    .line 976
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", em = "

    .line 977
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isLiveWallpaperSettingEnabled = "

    .line 978
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 980
    iget-object v9, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda18;

    invoke-direct {v10, v6, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZZ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v2, :cond_8

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 990
    :cond_2
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    const-string v2, ", MDM mode"

    .line 991
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 993
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v11, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v12, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v14, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-nez v0, :cond_3

    move/from16 v16, v3

    goto :goto_0

    :cond_3
    move/from16 v16, v9

    :goto_0
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v2, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v4, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    iget-object v5, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mColorProvider:Ljavax/inject/Provider;

    move-object v10, v1

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 996
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    return-void

    :cond_4
    const/16 v10, 0x96

    const-string v11, "WS0004"

    const-string v12, "WS0003"

    if-eqz v5, :cond_6

    .line 999
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->dismissKeyguardWallpaper()V

    const-string v0, ", Live wallpaper"

    .line 1000
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1003
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1004
    invoke-direct {v6, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewModeDelayed(I)V

    .line 1006
    :cond_5
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string v1, "3rd party Live"

    invoke-static {v0, v7, v12, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string v1, "Custom"

    invoke-static {v0, v7, v11, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-direct {v6, v8, v3, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->dispatchWallpaperTypeChanged(IZZ)V

    return-void

    .line 1013
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    .line 1015
    invoke-direct {v6, v15, v8, v4, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->createWallpaperView(IIZZ)Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    move-result-object v5

    .line 1016
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1017
    instance-of v4, v5, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    .line 1018
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    .line 1019
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->dispatchWallpaperTypeChanged(IZZ)V

    .line 1021
    iput-boolean v9, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 1023
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v10, 0x64

    :goto_1
    invoke-direct {v6, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewModeDelayed(I)V

    .line 1025
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDetailTypeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v12, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v0, v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDetailSourceValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v11, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 987
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 988
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    return-void
.end method

.method private initBlurredView(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 2

    .line 2295
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initBlurredViewOnUiThread(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 11

    .line 2299
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez v0, :cond_0

    .line 2302
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/samsung/android/graphics/SemGfxImageFilter;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 2304
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBlurredView: mBlurredView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 2306
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperChanged:Z

    .line 2307
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    :cond_0
    return-void
.end method

.method private isDefaultOperatorWallpaper()Z
    .locals 1

    .line 1229
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    .line 1230
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 1237
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private isFbeWallpaperInDisplay()Z
    .locals 3

    .line 2204
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2205
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getScreenId(I)I

    move-result v0

    .line 2206
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2207
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperVideo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2208
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubUser()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 2211
    :cond_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "isFbeWallpaperInDisplay: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 2183
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMatching: Invalid type. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2177
    :cond_1
    instance-of p1, p2, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    if-eqz p1, :cond_6

    return v1

    .line 2171
    :cond_2
    instance-of p1, p2, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    if-eqz p1, :cond_6

    return v1

    .line 2165
    :cond_3
    instance-of p1, p2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    if-eqz p1, :cond_6

    return v1

    .line 2154
    :cond_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_5

    return p0

    .line 2158
    :cond_5
    instance-of p1, p2, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    if-eqz p1, :cond_6

    return v1

    :cond_6
    :goto_0
    return p0
.end method

.method private isOwner()Z
    .locals 0

    .line 1639
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStartMultipackCondition()Z
    .locals 6

    .line 1180
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 1188
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isWallpaperUpdateFromDls()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1189
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "isStartMultipackCondition: PluginLock manages lockscreen wallpaper."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v1, -0x1

    .line 1195
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1197
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1200
    :goto_1
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStartMultipackCondition: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v4, :cond_3

    return v5

    :cond_3
    if-ne v0, v1, :cond_6

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "isStartMultipackCondition: Live wallpaper is enabled."

    .line 1209
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1213
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isDefaultOperatorWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "isStartMultipackCondition: Operator wallpaper."

    .line 1214
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1218
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDefaultMultipack(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v5

    :cond_6
    return v2
.end method

.method private isSubDisplay()Z
    .locals 0

    .line 1270
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSubUser()Z
    .locals 0

    .line 1635
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWallpaperUpdateFromDls()Z
    .locals 3

    .line 1619
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1623
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const-string v2, "WPaperChangedByDls"

    if-eqz v0, :cond_2

    .line 1624
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string v0, "WPaperChangedByDlsSub"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 1627
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 1630
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$applyBlur$7(I)V
    .locals 1

    .line 1312
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeeded()V

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternal(I)V

    return-void
.end method

.method private synthetic lambda$applyBlurInternal$8(I)V
    .locals 0

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternalOnUiThread(I)V

    return-void
.end method

.method private synthetic lambda$cleanUpOnUiThread$15()V
    .locals 4

    const/4 v0, 0x0

    .line 2080
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    .line 2081
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpOnUiThread(), view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;)V

    .line 2085
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v1, :cond_1

    .line 2086
    invoke-interface {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 2087
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    :cond_1
    return-void
.end method

.method private synthetic lambda$disableRotateIfNeeded$5()V
    .locals 3

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableRotateIfNeeded video= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , rotate support= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sub= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1082
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1083
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_WALLPAPER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 1084
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$dispatchWallpaperTypeChanged$6(IZZ)V
    .locals 0

    .line 1097
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchWallpaperTypeChanged(IZZ)V

    return-void
.end method

.method private synthetic lambda$handleDlsViewModeDelayed$4()V
    .locals 2

    .line 1072
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    return-void
.end method

.method private synthetic lambda$handleNotifyColorUpdates$9(Landroid/app/SemWallpaperColors;I)V
    .locals 2

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J

    move-result-wide v0

    .line 1858
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCoverScreen(I)Z

    move-result p2

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private synthetic lambda$handleWallpaperResourceUpdated$2()V
    .locals 1

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableUpdate:Ljava/lang/Runnable;

    .line 883
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 884
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->update()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleWallpaperTypeChanged$3(ZZ)V
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, -0x1000000

    .line 982
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initBlurredView$16(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 0

    .line 2295
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->initBlurredViewOnUiThread(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    return-void
.end method

.method private synthetic lambda$onResume$13()V
    .locals 2

    .line 2006
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 2007
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mSemDisplaySolutionManager is called : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$14()V
    .locals 0

    .line 2019
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 2020
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setBackground$1(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    .line 654
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 655
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBackground [old] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , [new] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 657
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;)V

    if-eqz p1, :cond_1

    .line 659
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    .line 660
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateKeyguardState(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 663
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 669
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 670
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_3

    .line 671
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 674
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 675
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz p1, :cond_4

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    goto :goto_1

    .line 678
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-nez p1, :cond_5

    .line 679
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->initBlurredView(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 681
    invoke-direct {p0, p3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->initBlurredView(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    .line 685
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p4, p5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBackDropViewShowing(ZZ)V

    return-void
.end method

.method private synthetic lambda$setRootView$10()V
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1932
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRootView$11()V
    .locals 0

    .line 1949
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 1950
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onBackDropLayoutChange()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setRootView$12(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1942
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    if-eq p2, p5, :cond_0

    .line 1943
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onLayoutChange() v: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bottom : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldBottom : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    .line 1945
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateVisibility()V

    .line 1946
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeeded()V

    .line 1948
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateVisibility$0()V
    .locals 8

    .line 581
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 583
    :goto_0
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v6, v7, :cond_1

    move v1, v5

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "mIsKeyguardShowing=%s, mOccluded=%s, match_parent=%s"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 589
    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v1, :cond_3

    .line 590
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :cond_3
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    if-eq v1, v0, :cond_5

    if-nez v0, :cond_4

    .line 594
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    .line 600
    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    return-void
.end method

.method private notifyBackupStateChanged(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p1, "notifyBackupStateChanged: bundle is null."

    .line 762
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string/jumbo v1, "which"

    .line 766
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    .line 767
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "key"

    .line 768
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 769
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->onSemBackupStatusChanged(III)V

    return-void
.end method

.method private onBootCompleted()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(Landroid/content/Context;)V

    .line 561
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    .line 566
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootCompleted: wallpaeprType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isMatching(ILcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    goto :goto_0

    .line 571
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    :goto_0
    const/16 v0, 0x25f

    .line 574
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void
.end method

.method private onLiveWallpaperChanged(Z)V
    .locals 6

    .line 1873
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLiveWallpaperChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v1

    .line 1877
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1878
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1880
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V

    :cond_0
    const/16 v2, 0x385

    const-string v3, " , old = "

    const-string/jumbo v4, "new = "

    if-eqz p1, :cond_1

    .line 1885
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v5, 0x10

    invoke-virtual {p1, v5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    .line 1886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    if-eq v0, p1, :cond_2

    .line 1889
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    if-eqz v1, :cond_2

    .line 1891
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    goto :goto_0

    .line 1895
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    .line 1896
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    if-eq v0, p1, :cond_2

    .line 1899
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    if-nez v1, :cond_2

    .line 1902
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onUserSwitchComplete(I)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(Landroid/content/Context;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    .line 545
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", wallpaper type = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSettingsValue:I

    .line 549
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenWallpaperSubSettingsValue:I

    .line 551
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->initFlags()V

    .line 553
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    const/16 p1, 0x25f

    .line 555
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void
.end method

.method private onUserSwitching(I)V
    .locals 3

    .line 535
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitching: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 538
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    return-void
.end method

.method private printLognAddHistory(Ljava/lang/String;)V
    .locals 1

    .line 2246
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeAllChildViews(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 706
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 708
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 716
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetDlsColors()V
    .locals 3

    .line 2344
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 2345
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 2346
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/16 v0, 0x12

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    :cond_0
    return-void
.end method

.method private sendUpdateWallpaperMessage(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 724
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 733
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x264

    if-eq p1, v1, :cond_0

    const/16 v1, 0x265

    if-eq p1, v1, :cond_0

    const/16 v1, 0x261

    if-eq p1, v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUpdateWallpaperMessage: remove message what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p2, :cond_2

    .line 745
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string p1, "delay"

    const-wide/16 v1, 0x0

    .line 746
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    .line 748
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 750
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 753
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 755
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private sendUpdateWallpaperMessage(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 728
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private setBackground(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 9

    .line 648
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 649
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBackground, remove runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda17;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    .line 687
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setWallpaperUpdateFromDls(ZI)V
    .locals 4

    .line 1583
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setWallpaperUpdateFromDls: User ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") changed wallpaper. Don\'t update WPAPER_CHANGED_BY_DLS."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "WPaperChangedByDlsSub"

    const/4 v2, 0x0

    const-string v3, "WPaperChangedByDls"

    if-ne p2, v0, :cond_2

    .line 1589
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_1

    .line 1590
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eq p2, p1, :cond_1

    .line 1591
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1595
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eq p2, p1, :cond_5

    .line 1596
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1599
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 1601
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eq p2, p1, :cond_5

    .line 1602
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1605
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eq p2, p1, :cond_5

    .line 1606
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1610
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eq p2, p1, :cond_5

    .line 1611
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private showBlurredViewIfNeeded()V
    .locals 2

    .line 2312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2313
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->showBlurredViewIfNeededOnUiThread()V

    goto :goto_0

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private showBlurredViewIfNeededOnUiThread()V
    .locals 2

    .line 2320
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2322
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2323
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2324
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 2326
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2328
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-nez v0, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->initBlurredView(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    :cond_1
    return-void
.end method

.method private startMultipack()V
    .locals 1

    .line 1241
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->startMultipack(I)V

    return-void
.end method

.method private startMultipack(I)V
    .locals 3

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMultipack: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1247
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-nez v0, :cond_0

    .line 1248
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startMultipack: mIsPluginLockReady is false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-nez v0, :cond_1

    .line 1253
    new-instance v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 1254
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->setOnApplyMultipackListener(Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;)V

    .line 1264
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz p0, :cond_2

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    :cond_2
    return-void
.end method

.method private updateKeyguardState(Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 692
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->isKeyguardShowing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 693
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKeyguardState, showing state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardShowing(Z)V

    .line 697
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->isOccluded()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 698
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKeyguardState, occluded state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onOccluded(Z)V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public applyBlur(I)V
    .locals 2

    .line 1306
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1307
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "applyBlur: ignored by DLS"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public applyBlurInternal(I)V
    .locals 2

    .line 1318
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternalOnUiThread(I)V

    goto :goto_0

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public applyBlurInternalOnUiThread(I)V
    .locals 3

    .line 1326
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1328
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyBlurInternal: amount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1330
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 1333
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurredView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    if-eqz v1, :cond_2

    int-to-float p0, p1

    .line 1335
    invoke-interface {v0, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->applyBlur(F)V

    goto :goto_1

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_4

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    goto :goto_1

    .line 1339
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_BLUR:Z

    if-eqz v0, :cond_4

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_4

    instance-of v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    if-nez v0, :cond_4

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurFilter(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x1

    .line 2059
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUp(Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "KeyguardWallpaperController: "

    .line 2250
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz v0, :cond_1

    .line 2257
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2260
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 0

    .line 2265
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 2266
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHint(J)Landroid/app/SemWallpaperColors$Item;
    .locals 1

    const/4 v0, 0x0

    .line 1718
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(ZJ)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    return-object p0
.end method

.method public getHint(ZJ)Landroid/app/SemWallpaperColors$Item;
    .locals 2

    .line 1683
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 1684
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_1

    .line 1689
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 1695
    invoke-virtual {v0, p2, p3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 1701
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1703
    invoke-virtual {p1, p2, p3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 1709
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDummyHintItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    return-object p0
.end method

.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    .line 1674
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getHints(Z)Landroid/app/SemWallpaperColors;
    .locals 2

    .line 1650
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 1651
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1660
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 1665
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "getHints: getBlankWallpaperColors!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    .line 1654
    :cond_3
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getLockWallpaperType()I
    .locals 1

    const/4 v0, 0x1

    .line 2096
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result p0

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1775
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 1776
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleDlsViewMode(IZ)V
    .locals 3

    .line 1281
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDlsViewMode: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 1282
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    if-eq p2, p1, :cond_3

    .line 1283
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p2, :cond_1

    .line 1284
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onDlsViewModeChanged(IZ)V

    .line 1287
    :cond_1
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1288
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x64

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1289
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlurInternal(I)V

    :cond_3
    return-void
.end method

.method public onAodTransitionEnd()V
    .locals 0

    .line 2040
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 2041
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onDataCleared()V
    .locals 2

    const-string/jumbo v0, "onDataCleared()"

    .line 1562
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1564
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperUpdateFromDls(ZI)V

    const/16 v0, 0x262

    .line 1566
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFolderStateChanged: isOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 609
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 617
    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 618
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFolderStateChanged: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previous which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCurrentWhich(I)V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 626
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    const-string/jumbo p1, "onFolderStateChanged, remove clean-up runnable"

    .line 627
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "onFolderStateChanged, remove set background runnable"

    .line 632
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x264

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "onFolderStateChanged, remove MSG_WALLPAPER_DISPLAY_CHANGED"

    .line 637
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const/4 p1, 0x1

    .line 640
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(IZ)V

    :cond_5
    return-void
.end method

.method public onPanelExpanded(Z)V
    .locals 0

    .line 2338
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 2339
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 2028
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    .line 2030
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWallpaperView.onPause() visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shouldControlScreenOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2031
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDrawState(Z)V

    .line 2032
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {v2, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    if-nez v0, :cond_0

    .line 2034
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 1

    const-string/jumbo v0, "onReady()"

    .line 1572
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1573
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1576
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    const/16 v0, 0x263

    .line 1578
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2002
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 2003
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2012
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDrawState(Z)V

    .line 2013
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {v1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateDrawState(Z)V

    .line 2015
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2016
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    goto :goto_0

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSemBackupStatusChanged(III)V
    .locals 2

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSemBackupStatusChanged: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1504
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "which"

    .line 1505
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "status"

    .line 1506
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key"

    .line 1507
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x261

    const/4 p2, 0x0

    .line 1508
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onSemBackupStatusChanged: mPluginLockManager is null."

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSemMultipackApplied(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSemMultipackApplied: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "which"

    .line 1408
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x265

    const/4 v1, 0x0

    .line 1410
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public onSemWallpaperChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "include_dls"

    const/4 v2, 0x0

    .line 1366
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSemWallpaperChanged: type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", which = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_4

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    goto :goto_1

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 1378
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p2}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 1381
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V

    :cond_2
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const-wide/16 p1, 0x1f4

    const-string v1, "delay"

    .line 1388
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    const/16 p1, 0x259

    .line 1397
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(ILandroid/os/Bundle;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo p1, "onSemWallpaperColorsChanged: SemWallpaperColors == null"

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    const-string/jumbo p1, "onSemWallpaperColorsChanged: DEX."

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "onSemWallpaperColorsChanged: DEX mode is enabled. Ignore event."

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    .line 1438
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    invoke-virtual {v1, p2, p1}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->setColor(ILandroid/app/SemWallpaperColors;)V

    .line 1441
    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const-string/jumbo v2, "onSemWallpaperColorsChanged: Not avaiable on this model. which = "

    const-string/jumbo v3, "onSemWallpaperColorsChanged: Not for lockscreen. which = "

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_4

    .line 1444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v0, :cond_8

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_8

    .line 1450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1453
    :cond_5
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_6

    .line 1456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 1462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez v0, :cond_8

    .line 1467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1472
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getIsThemeApplying()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo p1, "onSemWallpaperColorsChanged: Theme is currently applying. Send message later."

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1477
    :cond_9
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 1478
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_0

    .line 1485
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSemWallpaperColorsChanged: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x260

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wallpaper_colors"

    .line 1490
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "which"

    .line 1491
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userid"

    .line 1492
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1493
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1494
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_b
    :goto_0
    const-string/jumbo p1, "onSemWallpaperColorsChanged: We are in UPSM or EM. We don\'t need this event for now."

    .line 1481
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void
.end method

.method public onWallpaperChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1551
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWallpaperHintUpdate: invalid which. which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1556
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public onWallpaperUpdate(Z)V
    .locals 2

    const-string/jumbo p1, "onWallpaperUpdate"

    .line 1519
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    .line 1521
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    .line 1523
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "onWallpaperUpdate: Error. onWallpaperUpdate SHOULD NOT be called on multi-user."

    .line 1524
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void

    .line 1528
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result p1

    .line 1529
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez p1, :cond_3

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1535
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isWallpaperUpdateFromDls()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1536
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperUpdateFromDls(ZI)V

    :cond_2
    const/16 p1, 0x25c

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendUpdateWallpaperMessage(I)V

    return-void

    :cond_3
    :goto_0
    const-string/jumbo p1, "onWallpaperUpdate: We are handling wallpaper update by settings changed event for UPSM or EM."

    .line 1531
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->printLognAddHistory(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 2052
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 2053
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->reset()V

    :cond_0
    return-void
.end method

.method public setKeyguardDismissCancelled()V
    .locals 4

    .line 1985
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyguardDismissCancelled() showing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , pending type changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setKeyguardDismissCancelled, remove clean-up runnable"

    .line 1989
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1992
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    const/4 v0, 0x0

    .line 1994
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    goto :goto_0

    .line 1996
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDismissCancelled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3

    .line 1963
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardShowing() showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPendingTypeChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOccluded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_0

    .line 1966
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-eqz p1, :cond_0

    .line 1967
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(IZ)V

    .line 1970
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p1, :cond_1

    .line 1971
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardShowing(Z)V

    .line 1974
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateVisibility()V

    .line 1976
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1977
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1978
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1979
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Landroid/os/Handler;

    const/16 p1, 0x259

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public setNoSensorConsumer(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1909
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoSensorConsumer() consumer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNoSensorConsumer:Ljava/util/function/Consumer;

    .line 1912
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1927
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRootView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 1929
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1936
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1937
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10504bf

    .line 1938
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    .line 1940
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1941
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "setRootView: mRootView is null!"

    .line 1956
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(I)V

    return-void
.end method

.method public setWideColorGamutConsumer(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1917
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWideColorGamutConsumer() consumer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 1920
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 1921
    instance-of p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
