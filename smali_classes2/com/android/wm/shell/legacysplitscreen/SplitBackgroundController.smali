.class Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;
.super Ljava/lang/Object;
.source "SplitBackgroundController.java"

# interfaces
.implements Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;


# instance fields
.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:[F

.field private mBackgroundColorLayer:Landroid/view/SurfaceControl;

.field private final mContext:Landroid/content/Context;

.field private mIsShellRootAdded:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMovedToHome:Z

.field private mMwBackgroundVisible:Z

.field private final mNaturalSwitchingListener:Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

.field private mNightMode:Z

.field private final mRemoteAppTransitionListener:Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

.field private final mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

.field private mWallpaperVisible:Z


# direct methods
.method public static synthetic $r8$lambda$8Fext2dFR4nhiO2tgOXKfaF-VHY(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fwi6JK_NVR_41CaFBHYiWMzknZM(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$updateBackgroundVisibility$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$LsnkjsBYNvzz_9VSTEIyDpx08gs(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$onDisplayConfigurationChanged$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$OaFFSetYQgdQy8_YqsZp109Z4Ys(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$updateBackgroundVisibility$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bdfX4DxgAozeQT3eo9jwrHCusvM(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$updateBackgroundLayerWithAlphaAnimation$4(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDMekaamJE03M-GaZAGofxZg5E0(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->lambda$updateBackgroundVisibility$3()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 4

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mNightMode:Z

    .line 89
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    .line 111
    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    iput-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mRemoteAppTransitionListener:Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 176
    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    iput-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mNaturalSwitchingListener:Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    .line 206
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 208
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 209
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 210
    iput-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 211
    iput-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 212
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 215
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    .line 220
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V

    .line 224
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz p1, :cond_0

    .line 227
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to registerWallpaperVisibilityListener."

    invoke-static {p2, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {p5, v0, p0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->registerListener(ILcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)[F
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColor:[F

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->isSplitActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;FZ)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->adjustBackgroundLayerAlphaAmount(FZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMovedToHome:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMovedToHome:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mIsShellRootAdded:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->addShellRoot()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private addShellRoot()V
    .locals 4

    .line 275
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mIsShellRootAdded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/SystemWindows;->addRoot(II)Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    .line 280
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/SystemWindows;->getRootSurface(II)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 284
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, -0x1

    .line 285
    invoke-virtual {v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 287
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 288
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mIsShellRootAdded:Z

    return-void
.end method

.method private adjustBackgroundLayerAlphaAmount(FZ)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 382
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColor:[F

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 383
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 385
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 390
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 391
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private getAnimDuration(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0xc8

    return p0

    :cond_0
    const/16 p0, 0x190

    return p0
.end method

.method private isSplitActive()Z
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    return-void
.end method

.method private synthetic lambda$onDisplayConfigurationChanged$5()V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    return-void
.end method

.method private synthetic lambda$updateBackgroundLayerWithAlphaAnimation$4(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 337
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 338
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$updateBackgroundVisibility$1()V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->addShellRoot()V

    return-void
.end method

.method private synthetic lambda$updateBackgroundVisibility$2(I)V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayerWithAlphaAnimation(ZI)V

    return-void
.end method

.method private synthetic lambda$updateBackgroundVisibility$3()V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayer(Z)V

    return-void
.end method

.method private runOnMainHandler(Ljava/lang/Runnable;)V
    .locals 2

    .line 430
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 431
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 433
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateBackgroundColor()V
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColorForMultiWindow(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 425
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 426
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v2, 0x2

    aput v0, v1, v2

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColor:[F

    return-void
.end method

.method private updateBackgroundLayer(Z)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 302
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 303
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-eqz v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 302
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 305
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColor:[F

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 306
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 308
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 310
    :goto_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 311
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private updateBackgroundLayerWithAlphaAnimation(ZI)V
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayer(Z)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 334
    :goto_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    .line 335
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 336
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->getAnimDuration(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method isWallpaperVisible()Z
    .locals 0

    .line 453
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    return p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;)V
    .locals 1

    .line 240
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v0, "Split Background Layer"

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SplitBackgroundController.onDisplayAreaAppeared"

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method onDisplayConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 449
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPrimaryTaskInfoChanged()V
    .locals 0

    return-void
.end method

.method onStartEnterSplit()V
    .locals 1

    .line 457
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMovedToHome:Z

    :cond_0
    return-void
.end method

.method updateBackgroundLayerColor(Z)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    .line 396
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mNightMode:Z

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_2

    .line 397
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mNightMode:Z

    .line 399
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez p1, :cond_1

    return-void

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 404
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 405
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mBackgroundColor:[F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 406
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    return-void
.end method

.method updateBackgroundVisibility(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZI)V

    return-void
.end method

.method updateBackgroundVisibility(ZZI)V
    .locals 2

    .line 255
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    if-eq v0, p1, :cond_3

    .line 256
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBackgroundVisibility: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mVisibleBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 259
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitBackgroundController"

    .line 257
    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mMwBackgroundVisible:Z

    .line 262
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->mIsShellRootAdded:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 263
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->runOnMainHandler(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 266
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;I)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->runOnMainHandler(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->runOnMainHandler(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
