.class public Lcom/android/wm/shell/draganddrop/DragAndDropController;
.super Ljava/lang/Object;
.source "DragAndDropController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDismissReceiver:Landroid/content/BroadcastReceiver;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayDropTargets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

.field private mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$NSS209s7tZYLBV2vunxqzaexAcM(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$setDropTargetWindowInvisible$1(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nHOJACXmSi2Yzm-7E8iG0jl1ErI(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$handleDrop$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 111
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    .line 840
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    .line 125
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowInvisible()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/DisplayController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Lcom/android/wm/shell/draganddrop/IDragLayout;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Lcom/android/wm/shell/draganddrop/IDragLayout;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/util/SparseArray;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    return-object p0
.end method

.method private getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    const/4 v0, 0x0

    .line 416
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Lcom/android/wm/shell/draganddrop/IDragLayout;)Z
    .locals 5

    .line 353
    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 354
    iget v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 356
    iget-object v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 357
    invoke-interface {v1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 358
    invoke-interface {v1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v3, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;ZZ)V

    .line 361
    iget-object v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->snackBar:Lcom/android/wm/shell/common/SnackBar;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SnackBar;->showIfPossible(Landroid/graphics/Rect;)V

    .line 366
    :cond_0
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/SurfaceControl;)V

    invoke-interface {p3, p1, v0, v1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private isUserSetup()Z
    .locals 5

    .line 451
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 453
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, -0x2

    const-string/jumbo v4, "user_setup_complete"

    .line 455
    invoke-static {p0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private synthetic lambda$handleDrop$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 368
    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 375
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$setDropTargetWindowInvisible$1(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 1

    const/4 v0, 0x4

    .line 441
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    return-void
.end method

.method private registerDismissReceiver()V
    .locals 2

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDropTargetWindowInvisible()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 436
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 438
    sget-object v1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t make dropTarget invisible since handler isn\'t existed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    :cond_0
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .locals 10

    .line 381
    iget-boolean p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    if-nez p2, :cond_1

    .line 383
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    int-to-long p0, p0

    int-to-long v5, p2

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x55664869

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p2, v7, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 388
    :cond_1
    iget p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    if-ne p0, p2, :cond_3

    .line 390
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz p0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x2cd4ce7

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v4

    invoke-static {p1, p2, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 395
    :cond_3
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    if-eqz p0, :cond_4

    .line 396
    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;->isNaturalSwitching()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    if-ne p2, p0, :cond_4

    .line 397
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->naturalSwitchingLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->removeWindows()V

    .line 400
    :cond_4
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz p0, :cond_5

    iget p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    int-to-long v5, p0

    int-to-long v7, p2

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, 0x469bce00    # 19943.0f

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p0, v9, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_5
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p2, :cond_6

    .line 405
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 409
    :cond_6
    iput p2, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/wm/shell/ISplitScreenController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 139
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->registerDismissReceiver()V

    return-void
.end method

.method public initialize(Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/ISplitScreenController;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    .line 131
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v11, p1

    if-eqz v11, :cond_0

    return-void

    .line 151
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    int-to-long v4, v11

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x3c018a92

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v1, v6, v7, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0x7e0

    .line 156
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4, v11}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v4

    .line 158
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/WindowManager;

    .line 161
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const v16, 0x1000008

    const/16 v17, -0x3

    const/16 v15, 0x7e0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 166
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v7, -0x7fffffb0

    or-int/2addr v6, v7

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    const/4 v6, 0x3

    .line 177
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v2, "ShellDropTarget"

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/android/wm/shell/R$layout;->global_drop_target:I

    invoke-virtual {v2, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    .line 183
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v2, 0x4

    .line 184
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    new-instance v7, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7, v4, v2, v3}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;Landroid/view/SurfaceControl$Transaction;)V

    .line 190
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :try_start_0
    invoke-interface {v5, v6, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    new-instance v13, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    new-instance v8, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-direct {v8, v4, v1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;)V

    new-instance v9, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/wm/shell/draganddrop/SmartTipController;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/android/wm/shell/draganddrop/SmartTipController;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/android/wm/shell/draganddrop/VisibleTasks;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-direct {v14, v11, v1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;-><init>(ILcom/android/wm/shell/ISplitScreenController;)V

    new-instance v15, Lcom/android/wm/shell/common/SnackBar;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0}, Lcom/android/wm/shell/common/SnackBar;-><init>(Landroid/content/Context;)V

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/draganddrop/VisibleTasks;Lcom/android/wm/shell/common/SnackBar;)V

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add view for display id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 7

    .line 210
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz p2, :cond_0

    int-to-long v0, p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x7a9bec7a

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {p2, v2, v4, v3, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez p0, :cond_1

    return-void

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 217
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->snackBar:Lcom/android/wm/shell/common/SnackBar;

    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SnackBar;->hideIfPossible()V

    :cond_2
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 8

    .line 225
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x526a63b2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 231
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 233
    iget-object p0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->snackBar:Lcom/android/wm/shell/common/SnackBar;

    if-eqz p0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SnackBar;->hideIfPossible()V

    :cond_2
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 241
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result v14

    float-to-double v14, v14

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v8, 0x4

    aput-object v1, v2, v8

    const v1, 0x6efee556

    const/16 v8, 0x2a8

    const/4 v9, 0x0

    invoke-static {v6, v1, v8, v9, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 246
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v6

    if-nez v2, :cond_1

    return v7

    .line 254
    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->supportDragAndDrop()Z

    move-result v8

    if-nez v8, :cond_2

    return v7

    .line 259
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    if-ne v8, v5, :cond_d

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->isUserSetup()Z

    move-result v8

    if-nez v8, :cond_3

    .line 262
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v1, "User setup is not yet completed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 269
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "application/vnd.android.activity"

    .line 272
    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/vnd.android.shortcut"

    .line 273
    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/vnd.android.task"

    .line 274
    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v8, v5

    goto :goto_0

    :cond_5
    move v8, v7

    .line 275
    :goto_0
    iput-boolean v8, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-eqz v8, :cond_6

    .line 278
    iget-object v9, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v9}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    .line 279
    iget-object v9, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateMimeType(Landroid/content/pm/ActivityInfo;)V

    .line 281
    :cond_6
    iget-boolean v9, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v9, :cond_7

    if-eqz v6, :cond_7

    .line 283
    invoke-virtual {v6}, Landroid/content/ClipDescription;->isNaturalSwitching()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v5

    goto :goto_1

    :cond_7
    move v9, v7

    .line 284
    :goto_1
    iget-boolean v10, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    or-int/2addr v10, v9

    iput-boolean v10, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v10, :cond_8

    .line 288
    iget-object v10, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v10}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    .line 289
    iget-object v10, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    .line 290
    invoke-static/range {p2 .. p2}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v12

    .line 289
    invoke-virtual {v10, v11, v12}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateFrom(Landroid/content/ClipData;Landroid/view/DragAndDropPermissions;)Z

    move-result v10

    .line 291
    iget-boolean v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    or-int/2addr v11, v10

    iput-boolean v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    goto :goto_2

    :cond_8
    move v10, v7

    .line 294
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    move-result-object v11

    iput-object v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    if-eqz v11, :cond_9

    .line 297
    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    invoke-virtual {v11, v12}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->connect(Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V

    .line 299
    iget-object v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 300
    invoke-virtual {v11}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->getInitialDropTargetVisible()Z

    move-result v11

    xor-int/2addr v11, v5

    iput-boolean v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    .line 305
    :cond_9
    sget-boolean v11, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v11, :cond_a

    iget-boolean v11, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {v0, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v15, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v3, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v3, v5

    aput-object v6, v3, v4

    const v4, 0x1667e8e0

    const/4 v5, 0x0

    invoke-static {v14, v4, v15, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    if-eqz v8, :cond_b

    .line 310
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;

    invoke-direct {v3, v0, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V

    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    goto :goto_4

    :cond_b
    if-eqz v9, :cond_c

    .line 313
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;

    invoke-direct {v3, v0, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V

    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    goto :goto_4

    :cond_c
    if-eqz v10, :cond_d

    .line 315
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;

    invoke-direct {v3, v0, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V

    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    .line 320
    :cond_d
    :goto_4
    iget-boolean v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v0, :cond_e

    return v7

    .line 325
    :cond_e
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    move-object/from16 v3, p2

    invoke-interface {v0, v3, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;->onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_10

    const/4 v1, 0x0

    .line 328
    iput-object v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

    .line 329
    iput-boolean v7, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 330
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v3, :cond_f

    .line 331
    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->clear()V

    .line 333
    :cond_f
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    if-eqz v3, :cond_10

    .line 334
    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->disconnect()V

    .line 335
    iput-object v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 337
    iput-boolean v7, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    :cond_10
    return v0
.end method
