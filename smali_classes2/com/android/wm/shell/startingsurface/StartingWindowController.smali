.class public Lcom/android/wm/shell/startingsurface/StartingWindowController;
.super Ljava/lang/Object;
.source "StartingWindowController.java"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;,
        Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG_SPLASH_SCREEN:Z

.field private static final TAG:Ljava/lang/String; = "StartingWindowController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field private final mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

.field private final mTaskBackgroundColors:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTaskBackgroundColors"
        }
    .end annotation
.end field

.field private mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7FfxGnEGaLdDOLshmru8meZfhdg(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$onAppSplashScreenViewRemoved$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nsve7j-qdEujmRJ49hHw0qVTWtY(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$copySplashScreenView$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSvN_iYbAze6X2c1OXkMhBsWeHo(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqqHQyOoATvfXbzNdRaXqStkx4A(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$removeStartingWindow$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmKhbQdCo-o-gBzZ-BxRWuitRy8(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->lambda$removeStartingWindow$3(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->DEBUG_SPLASH_SCREEN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/startingsurface/StartingWindowController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 95
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 100
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 102
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 103
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Landroid/util/SparseIntArray;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isSplashScreenType(I)Z
    .locals 2
    .param p0    # I
        .annotation build Landroid/window/StartingWindowInfo$StartingWindowType;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "addStartingWindow"

    const-wide/16 v1, 0x20

    .line 137
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;->getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I

    move-result v0

    .line 141
    iget-object v3, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 142
    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->isSplashScreenType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    sget-boolean v4, Lcom/android/wm/shell/CoreShellRune;->APP_LAUNCHING_TRACE:Z

    if-eqz v4, :cond_0

    const-string v5, "[SystemUI] addSplashScreenStartingWindow (STARTING_WINDOW_TYPE_SPLASH_SCREEN)"

    .line 145
    invoke-static {v1, v2, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {v5, p1, p2, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;I)V

    if-eqz v4, :cond_3

    .line 152
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 157
    sget-boolean v4, Lcom/android/wm/shell/CoreShellRune;->APP_LAUNCHING_TRACE:Z

    if-eqz v4, :cond_2

    const-string v5, "[SystemUI] makeTaskSnapshotWindow"

    .line 158
    invoke-static {v1, v2, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 161
    :cond_2
    iget-object v5, p1, Landroid/window/StartingWindowInfo;->mTaskSnapshot:Landroid/window/TaskSnapshot;

    .line 162
    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {v6, p1, p2, v5}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;)V

    if-eqz v4, :cond_3

    .line 166
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 171
    iget p2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 172
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 173
    invoke-virtual {v3, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->getStartingWindowBackgroundColorForTask(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 176
    :try_start_0
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 177
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 179
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->isSplashScreenType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p2, v0, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    :cond_5
    iget-object p2, p1, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_6

    goto :goto_2

    .line 188
    :cond_6
    iget-object p1, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 189
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;)V

    .line 192
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private synthetic lambda$copySplashScreenView$1(I)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->copySplashScreenView(I)V

    return-void
.end method

.method private synthetic lambda$onAppSplashScreenViewRemoved$2(I)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method private synthetic lambda$removeStartingWindow$3(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private synthetic lambda$removeStartingWindow$4(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asStartingSurface()Lcom/android/wm/shell/startingsurface/StartingSurface;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    return-object p0
.end method

.method public copySplashScreenView(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public removeStartingWindow(ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    .line 223
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    const-wide/16 p0, 0x1388

    invoke-interface {p2, p3, p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method setStartingWindowListener(Lcom/android/internal/util/function/TriConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    return-void
.end method
