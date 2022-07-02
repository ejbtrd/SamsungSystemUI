.class public Lcom/android/wm/shell/TaskView;
.super Landroid/view/SurfaceView;
.source "TaskView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/TaskView$Listener;
    }
.end annotation


# instance fields
.field private final mGuard:Landroid/util/CloseGuard;

.field private mIsInitialized:Z

.field private mListener:Lcom/android/wm/shell/TaskView$Listener;

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private mNeedToResetTaskPosition:Z

.field private mObscuredTouchRect:Landroid/graphics/Rect;

.field private final mRecreateSurfaceTimeoutRunnable:Ljava/lang/Runnable;

.field private final mShellExecutor:Ljava/util/concurrent/Executor;

.field private mSurfaceCreated:Z

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskLeash:Landroid/view/SurfaceControl;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTaskToken:Landroid/window/WindowContainerToken;

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRootRect:Landroid/graphics/Rect;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mWaitingForSurfaceCreated:Z


# direct methods
.method public static synthetic $r8$lambda$2E7aObXnO0QCkRxFV8KtAGKikHs(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$performRelease$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dubv6Ds1bUwhFEv5bIpcvcld1ws(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$performRelease$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GR96ewT9aoMN5GZuXOhZZ01bj90(Lcom/android/wm/shell/TaskView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/TaskView;->lambda$onTaskVanished$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PPgv7EFfN318X5rf-l789wTI1FA(Lcom/android/wm/shell/TaskView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/TaskView;->lambda$onBackPressedOnTaskRoot$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeXk8IDiONgfgPwaERL52nD60tc(Lcom/android/wm/shell/TaskView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/TaskView;->lambda$updateTaskVisibility$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9noWnj3n83ofnBVqvRnyij_pkc(Lcom/android/wm/shell/TaskView;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/TaskView;->lambda$onTaskAppeared$5(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cg3PbrUIUMCTEvDPvu-OUPjsetY(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$surfaceCreated$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$eM0rnQY5ac3GTAfnxW-6oNBoAr8(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gzXtlYCczHfnmBZuL3KtOGtmxpo(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$surfaceCreated$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$pnslMHnGv2tcT2tz8adNEnLviH8(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/TaskView;->lambda$prepareActivityOptions$1(Landroid/os/Binder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wUh0zcaBITMQi3TKLlbJOSadHMo(Lcom/android/wm/shell/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->lambda$surfaceDestroyed$10()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 111
    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 78
    new-instance p1, Landroid/util/CloseGuard;

    invoke-direct {p1}, Landroid/util/CloseGuard;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView;->mGuard:Landroid/util/CloseGuard;

    .line 86
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mNeedToResetTaskPosition:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    .line 100
    new-instance v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/TaskView;)V

    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mRecreateSurfaceTimeoutRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 108
    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    .line 113
    iput-object p2, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 114
    invoke-virtual {p2}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/TaskView;->mShellExecutor:Ljava/util/concurrent/Executor;

    .line 115
    invoke-virtual {p0}, Landroid/view/SurfaceView;->setUseAlpha()V

    .line 116
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string/jumbo p0, "release"

    .line 117
    invoke-virtual {p1, p0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private finishRecreateSurface(Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    .line 153
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mRecreateSurfaceTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishRecreateSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", reason="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const-string/jumbo v0, "timeout"

    .line 101
    invoke-direct {p0, v0}, Lcom/android/wm/shell/TaskView;->finishRecreateSurface(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->updateTaskVisibility()V

    return-void
.end method

.method private synthetic lambda$onBackPressedOnTaskRoot$7(I)V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/TaskView$Listener;->onBackPressedOnTaskRoot(I)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$5(ILandroid/content/ComponentName;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$6(I)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$performRelease$2()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->removeListener(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 266
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->resetTaskInfo()V

    return-void
.end method

.method private synthetic lambda$performRelease$3()V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/TaskView$Listener;->onReleased()V

    return-void
.end method

.method private synthetic lambda$prepareActivityOptions$1(Landroid/os/Binder;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private synthetic lambda$surfaceCreated$8()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/TaskView$Listener;->onInitialized()V

    return-void
.end method

.method private synthetic lambda$surfaceCreated$9()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mNeedToResetTaskPosition:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->updateTaskVisibility()V

    return-void
.end method

.method private synthetic lambda$surfaceDestroyed$10()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 445
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->updateTaskVisibility()V

    return-void
.end method

.method private synthetic lambda$updateTaskVisibility$4(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    iget-boolean p0, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    invoke-interface {v0, p1, p0}, Lcom/android/wm/shell/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    return-void
.end method

.method private performRelease()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 264
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/TaskView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 269
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/TaskView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mIsInitialized:Z

    :cond_0
    return-void
.end method

.method private prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .locals 3

    .line 204
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 209
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    const/4 p0, 0x6

    .line 210
    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 p0, 0x1

    .line 211
    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setRemoveWithTaskOrganizer(Z)V

    return-void
.end method

.method private resetTaskInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 279
    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 280
    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method private updateTaskVisibility()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iget-boolean v2, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 291
    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 296
    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/TaskView;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    .line 375
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void

    .line 373
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no surface for taskId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 255
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->performRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 475
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 476
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz v0, :cond_1

    .line 363
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 364
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/TaskView;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 7

    .line 455
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 458
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 459
    iget-object v3, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 460
    iget-object v3, p0, Lcom/android/wm/shell/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    aget v5, v4, v2

    aget v4, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/wm/shell/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 464
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    aget v4, v3, v2

    aget v5, v3, v1

    aget v2, v3, v2

    .line 465
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/TaskView;->mTmpLocation:[I

    aget v1, v3, v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 464
    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 468
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mObscuredTouchRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_1

    .line 469
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 481
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 482
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onLocationChanged()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 233
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 237
    :cond_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 240
    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 305
    iput-object p1, p0, Lcom/android/wm/shell/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 306
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 307
    iput-object p2, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 309
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 312
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    .line 313
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->updateTaskVisibility()V

    .line 319
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 321
    invoke-virtual {p0}, Lcom/android/wm/shell/TaskView;->onLocationChanged()V

    .line 322
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p2, :cond_1

    .line 323
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    .line 326
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz p2, :cond_2

    .line 327
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 328
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 329
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/TaskView;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 354
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz v0, :cond_1

    .line 340
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 341
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/TaskView;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 348
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 349
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->resetTaskInfo()V

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/wm/shell/TaskView;->performRelease()V

    return-void
.end method

.method public resetTaskPosition()V
    .locals 1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mNeedToResetTaskPosition:Z

    return-void
.end method

.method public setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/TaskView$Listener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-nez v0, :cond_0

    .line 128
    iput-object p2, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    .line 129
    iput-object p1, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to set a listener when one has already been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .locals 8

    .line 193
    invoke-direct {p0, p3, p4}, Lcom/android/wm/shell/TaskView;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 197
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    .line 195
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startRecreateSurface()V
    .locals 5

    .line 138
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "TaskView"

    if-nez v0, :cond_0

    const-string/jumbo p0, "startRecreateSurface: failed, cannot find handler"

    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    .line 145
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/TaskView;->mRecreateSurfaceTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecreateSurface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .locals 0

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/TaskView;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 174
    iget-object p0, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    const/4 p3, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 178
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 428
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez p1, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/TaskView;->onLocationChanged()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x1

    .line 392
    iput-boolean p1, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    .line 394
    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mWaitingForSurfaceCreated:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "surface_created"

    .line 395
    invoke-direct {p0, v0}, Lcom/android/wm/shell/TaskView;->finishRecreateSurface(Ljava/lang/String;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/TaskView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 399
    iput-boolean p1, p0, Lcom/android/wm/shell/TaskView;->mIsInitialized:Z

    .line 400
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/TaskView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/TaskView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x0

    .line 436
    iput-boolean p1, p0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    .line 437
    iget-object p1, p0, Lcom/android/wm/shell/TaskView;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/TaskView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
