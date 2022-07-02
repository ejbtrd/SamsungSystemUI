.class public Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
.super Ljava/lang/Object;
.source "DividerResizeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;,
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;,
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$BlurEffectsTransactionHelper;,
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static USE_GUIDE_VIEW_EFFECTS:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDividerPosition:I

.field private mDefaultHandleMoveThreshold:I

.field private mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

.field private mDividerResizeTransactionHelper:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;

.field private mDividerSize:I

.field private mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private mIsFinishing:Z

.field private mIsHorizontalDivision:Z

.field private mIsResizing:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMoveStartPosition:I

.field private final mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

.field private mResizingRequested:Z

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private mSyncAppsCallback:Landroid/os/RemoteCallback;

.field private final mSyncAppsCallbackTimeoutRunnable:Ljava/lang/Runnable;

.field private mSyncAppsId:I

.field private final mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private mUseGuideViewByCommand:Z

.field private mUseGuideViewByMultiStar:Z

.field private mWaitingForSyncAppsCallback:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$DJdtAP_ifj2f_gJ3sILEh2PslDU(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->lambda$finishResizing$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dmML25Ay5YnPTRa48_k_RyBVrXI(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->lambda$stopWaitingForSyncAppsCallback$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$e5lrLSsLsivAIh7gp4q1yM3kd_E(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->lambda$startWaitingForSyncAppsCallback$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lzYBWzmNrqq5gtRG6_Ze-xQQrYQ(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pc8YLBcvGSePzzxCguR00DLCeII(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->lambda$startWaitingForSyncAppsCallback$3(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->DEBUG:Z

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsFinishing:Z

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    .line 104
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 107
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string/jumbo p2, "window"

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWindowManager:Landroid/view/WindowManager;

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 129
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 130
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->updateDividerResizeMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsHorizontalDivision:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Landroid/os/RemoteCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    return-object p0
.end method

.method private canUseSyncAppsCallback()Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private clear()V
    .locals 2

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    .line 342
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    .line 343
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsFinishing:Z

    .line 344
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 345
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 346
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsHorizontalDivision:Z

    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->remove()V

    .line 348
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 349
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V

    return-void
.end method

.method private synthetic lambda$finishResizing$1(I)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(IFZZ)V

    .line 222
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->onStopDraggingFinished()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const-string/jumbo v0, "timeout"

    .line 108
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->stopWaitingForSyncAppsCallback(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startWaitingForSyncAppsCallback$2()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->onSyncAppsReady()V

    return-void
.end method

.method private synthetic lambda$startWaitingForSyncAppsCallback$3(Landroid/os/Bundle;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopWaitingForSyncAppsCallback$4()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->clear()V

    return-void
.end method

.method private onStopDraggingFinished()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    if-eqz v0, :cond_0

    const-string p0, "DividerResizeController"

    const-string/jumbo v0, "onStopDraggingFinished: WaitingForSyncAppsCallback"

    .line 238
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->clear()V

    return-void
.end method

.method static splitDismissSideToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SPLIT_DISMISS_SIDE_END"

    return-object p0

    :cond_1
    const-string p0, "SPLIT_DISMISS_SIDE_START"

    return-object p0

    :cond_2
    const-string p0, "SPLIT_DISMISS_SIDE_NONE"

    return-object p0
.end method

.method private startWaitingForSyncAppsCallback(Ljava/lang/String;)V
    .locals 5

    .line 306
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    const-string v1, "DividerResizeController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startWaitingForSyncAppsCallback: failed, already waiting!"

    .line 307
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    .line 311
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallback:Landroid/os/RemoteCallback;

    .line 314
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 315
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-interface {v0, v2, v3, v4}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWaitingForSyncAppsCallback: reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SyncId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopWaitingForSyncAppsCallback(Ljava/lang/String;)V
    .locals 3

    .line 321
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    const-string v1, "DividerResizeController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopWaitingForSyncAppsCallback: failed, there is no waiting!"

    .line 322
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    .line 326
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsCallbackTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWaitingForSyncAppsCallback: reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SyncId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onResizeFinished()V

    .line 330
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    .line 331
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->postFinishRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private updateDividerResizeMode()V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByCommand:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByMultiStar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_2

    .line 438
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    goto :goto_2

    .line 439
    :cond_2
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$BlurEffectsTransactionHelper;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$BlurEffectsTransactionHelper;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    :goto_2
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeTransactionHelper:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;

    return-void
.end method

.method private validateMoveEvent(I)Z
    .locals 3

    .line 169
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mCurrentDividerPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDefaultHandleMoveThreshold:I

    if-le v0, v2, :cond_1

    .line 173
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    .line 174
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mMoveStartPosition:I

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "validateMoveEvent: start move didiver, pos="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DividerResizeController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method finishResizing(II)V
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    const-string v1, "DividerResizeController"

    if-nez v0, :cond_0

    const-string p0, "finishResizing: failed, NOT resizing state!"

    .line 183
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsFinishing:Z

    if-eqz v0, :cond_1

    const-string p0, "finishResizing: failed, already finishing state!"

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsFinishing:Z

    .line 192
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    if-eqz v2, :cond_2

    .line 193
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsHorizontalDivision:Z

    if-eqz v2, :cond_3

    move p1, p2

    goto :goto_0

    .line 196
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mCurrentDividerPosition:I

    .line 198
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p2, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;I)V

    .line 199
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$400(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    .line 204
    :goto_1
    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    if-eqz v3, :cond_7

    .line 205
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onActionDrop(II)V

    .line 206
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->canUseSyncAppsCallback()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "resize_split"

    .line 207
    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->startWaitingForSyncAppsCallback(Ljava/lang/String;)V

    .line 209
    :cond_5
    sget-boolean p2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mWaitingForSyncAppsCallback:Z

    if-nez p2, :cond_6

    .line 210
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onResizeFinished()V

    .line 212
    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result v2

    .line 215
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishResizing: snapTargetPosition="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isInDismissZone="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    .line 216
    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", deferStopDragging="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;I)V

    if-eqz v2, :cond_8

    .line 226
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->postFinishRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 228
    :cond_8
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->isResizing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeTransactionHelper:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->isResizing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeTransactionHelper:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method handleResizeSplit(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeTransactionHelper:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->handleResizeSplit(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method isResizing()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsResizing:Z

    return p0
.end method

.method onMoveEvent(II)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsFinishing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_1

    move p1, p2

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->validateMoveEvent(I)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 162
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p2, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;I)V

    .line 163
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onActionMove(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method onSyncAppsReady()V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncAppsReady: SyncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSyncAppsId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerResizeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sync_apps_ready"

    .line 297
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->stopWaitingForSyncAppsCallback(Ljava/lang/String;)V

    return-void
.end method

.method setDividerResizeMode(Z)V
    .locals 1

    .line 450
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByMultiStar:Z

    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDividerResizeMode: useGuideView="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DividerResizeController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method startResizing(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    const-string v1, "DividerResizeController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startResizing: failed, already resizing state!"

    .line 135
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->updateDividerResizeMode()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizingRequested:Z

    .line 140
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 141
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 142
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDividerSize()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerSize:I

    .line 143
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mIsHorizontalDivision:Z

    .line 144
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mCurrentDividerPosition:I

    .line 145
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->mw_divider_handle_move_threshold_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDefaultHandleMoveThreshold:I

    .line 147
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/wm/shell/R$layout;->divider_resize_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 149
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V

    .line 150
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->init(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startResizing: splitLayout="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method toggleDividerResizeModeByCommand()Z
    .locals 3

    .line 443
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByCommand:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByCommand:Z

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleDividerResizeModeByCommand: UseGuideView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->mUseGuideViewByCommand:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DividerResizeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
