.class public Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;
.super Landroid/widget/FrameLayout;
.source "NaturalSwitchingLayout.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDragLayout;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownPoint:Landroid/graphics/Point;

.field private mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

.field private mHasDropped:Z

.field private mHideRequested:Z

.field private mIsMwHandlerType:Z

.field private final mMovePoint:Landroid/graphics/Point;

.field private final mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

.field private final mNaturalSwitchingCallback:Lcom/samsung/android/multiwindow/INaturalSwitchingCallback$Stub;

.field private mNaturalSwitchingMode:I

.field private mNaturalSwitchingStartReported:Z

.field private mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

.field private mPassedInitialSlop:Z

.field private mReadyToStart:Z

.field private final mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTaskId:I

.field private final mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

.field private final mTouchGap:Landroid/graphics/Point;

.field private mTouchSlop:I

.field private mWindowingMode:I


# direct methods
.method public static synthetic $r8$lambda$DFmRt2HfFZRNGxsT5mFQieklGvc(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->lambda$onReadyToStartNaturalSwitching$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-CAWvjxlzhd9LoQMpxoZYyr7Nw(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->lambda$prepare$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ISplitScreenController;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 85
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 88
    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 106
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    .line 107
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    .line 108
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    .line 112
    new-instance p2, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$1;-><init>(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingCallback:Lcom/samsung/android/multiwindow/INaturalSwitchingCallback$Stub;

    .line 127
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "statusbar"

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/StatusBarManager;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 129
    new-instance p2, Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 130
    new-instance p1, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-direct {p1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    return-void
.end method

.method private synthetic lambda$onReadyToStartNaturalSwitching$1()V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->startNaturalSwitchingIfNeeded()V

    return-void
.end method

.method private synthetic lambda$prepare$0()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz v0, :cond_0

    const-string p0, "NaturalSwitchingLayout"

    const-string/jumbo v0, "onPreDraw: failed, reason=hide_requested"

    .line 184
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->onReadyToStartNaturalSwitching()V

    return-void
.end method

.method private onNaturalSwitchingStarted()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    .line 371
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->initPushRegion(Landroid/graphics/Rect;)V

    .line 372
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->isFreeformDragTarget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getDropSide()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->expandNonTargets(I)V

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->onNaturalSwitchingStarted()V

    return-void
.end method

.method private onReadyToStartNaturalSwitching()V
    .locals 2

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mReadyToStart:Z

    .line 340
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->startSpringAnimation(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldApplyExitAnimation(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 325
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

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

.method private startNaturalSwitchingIfNeeded()V
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    const-string v1, "NaturalSwitchingLayout"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, already started!"

    .line 346
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz v0, :cond_1

    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, reason=hide_requested"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 353
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string/jumbo v0, "startNaturalSwitchingIfNeeded"

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 358
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskId:I

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingCallback:Lcom/samsung/android/multiwindow/INaturalSwitchingCallback$Stub;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startNaturalSwitching(ILcom/samsung/android/multiwindow/INaturalSwitchingCallback;)Z

    return-void
.end method

.method private updateNaturalSwitchingMode()V
    .locals 2

    .line 331
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMaximumSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 332
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 334
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    :goto_0
    return-void
.end method


# virtual methods
.method public drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z
    .locals 9

    const/4 p2, 0x1

    .line 256
    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHasDropped:Z

    .line 257
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 262
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v0, p2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->getToWindowingMode()I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->getSplitCreateMode()I

    move-result v1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getDropTargetWindowingMode()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->getSplitCreateMode()I

    move-result v1

    :goto_0
    move v4, v1

    .line 269
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    const/4 v8, 0x5

    if-ne v1, v8, :cond_1

    if-ne v0, v8, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    .line 272
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->shouldApplyExitAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->startTransition(Z)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->calculateSplitRatio()V

    .line 276
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    if-ne v1, v8, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    .line 279
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getDividerRatio()F

    move-result v2

    goto :goto_1

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getDividerRatio()F

    move-result v1

    .line 282
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getCellDividerRatio()F

    move-result v2

    :goto_1
    move v6, v1

    move v7, v2

    .line 284
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskId:I

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeSplitLayoutByNaturalSwitching(IIILandroid/graphics/Rect;FF)V

    .line 286
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 288
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_USAGE_LOGGING:Z

    if-eqz p1, :cond_9

    .line 289
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    if-ne p1, v8, :cond_5

    .line 291
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "1000"

    const-string p3, "From Popup view_HandleGesture"

    .line 292
    invoke-static {p1, p3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSupportOnlyTwoUpMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSplit()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 296
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "1021"

    .line 297
    invoke-static {p1, p3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_5
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    .line 303
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_6

    if-ne v0, v8, :cond_6

    const-string p1, "2004"

    const-string p3, "From Split view_HandleGesture"

    .line 305
    invoke-static {p1, p3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_6
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    if-ne p1, v8, :cond_7

    .line 311
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "Freeform -> Split"

    goto :goto_2

    .line 313
    :cond_7
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p0

    if-eqz p0, :cond_8

    if-ne v0, v8, :cond_8

    const-string p0, "Split -> Freeform"

    goto :goto_2

    :cond_8
    const-string p0, "Layout changed"

    :goto_2
    const-string p1, "1041"

    .line 319
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return p2
.end method

.method finishNaturalSwitchingIfNeeded()V
    .locals 2

    .line 362
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    if-eqz v0, :cond_0

    const-string v0, "NaturalSwitchingLayout"

    const-string v1, "finishNaturalSwitchingIfNeeded"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 365
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->finishNaturalSwitching()V

    :cond_0
    return-void
.end method

.method public hasDropped()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHasDropped:Z

    return p0
.end method

.method public hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
    .locals 1

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide: callers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NaturalSwitchingLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz p2, :cond_0

    .line 248
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->finishNaturalSwitchingIfNeeded()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 381
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHideRequested:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 0

    const-string p3, "NaturalSwitchingLayout"

    const-string/jumbo p4, "prepare"

    .line 151
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 152
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mReadyToStart:Z

    .line 153
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHideRequested:Z

    .line 154
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mHasDropped:Z

    .line 155
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p4, p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->init(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 156
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 p4, 0x1600000

    invoke-virtual {p1, p4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchSlop:I

    .line 158
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 159
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Point;->set(II)V

    .line 160
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    const/4 p4, -0x1

    invoke-virtual {p1, p4, p4}, Landroid/graphics/Point;->set(II)V

    .line 162
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p5, "android.intent.extra.TASK_ID"

    .line 163
    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskId:I

    .line 164
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.intent.extra.NS_WINDOWING_MODE"

    .line 165
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    .line 166
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.NS_MW_HANDLER_TYPE"

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    .line 168
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->init(Lcom/android/wm/shell/draganddrop/TaskVisibility;I)V

    .line 169
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->updateNaturalSwitchingMode()V

    .line 171
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->ns_drag_target_view:I

    const/4 p3, 0x0

    .line 172
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/DragTargetView;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    .line 173
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskId:I

    iget p4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    iget-object p5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1, p2, p4, p5}, Lcom/android/wm/shell/draganddrop/DragTargetView;->init(IILcom/android/wm/shell/draganddrop/TaskVisibility;)V

    .line 175
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->ns_non_drag_target_view:I

    .line 176
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    .line 177
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mWindowingMode:I

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget p4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->init(ILcom/android/wm/shell/draganddrop/TaskVisibility;I)V

    .line 179
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/draganddrop/DragTargetView;->adjustDragTarget(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)V

    .line 180
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->initHandlerPosition()V

    .line 181
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->adjustNonDragTargets()V

    .line 182
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    new-instance p2, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->addOnPreDrawListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeWindows()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->remove()V

    .line 240
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->remove()V

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public update(Landroid/view/DragEvent;)V
    .locals 6

    .line 197
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 198
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 199
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 200
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 201
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    iget-boolean v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/wm/shell/draganddrop/DragTargetView;->ensureHandlerPositionIfNeeded(Landroid/graphics/Point;Landroid/graphics/Point;Z)V

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    iget v3, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->update(Landroid/view/DragEvent;Landroid/graphics/Point;)V

    .line 205
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mReadyToStart:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 206
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchSlop:I

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTouchSlop:I

    if-le v0, v2, :cond_2

    .line 207
    :cond_1
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 208
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->onNaturalSwitchingStarted()V

    .line 210
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 212
    iget v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v2, v1, :cond_6

    .line 213
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getDropSide()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->handleNonTargets(Landroid/view/DragEvent;I)Z

    move-result p1

    .line 215
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->hasPushRegion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getPushRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->updateForPush(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->getToWindowingMode()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getSwapTargetWindowingMode()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    .line 220
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getShrunkTargetWindowingMode()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v5}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 219
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->updateForSwap(IIILandroid/graphics/Rect;)V

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->getToWindowingMode()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    goto :goto_0

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getShrunkTargetWindowingMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    .line 226
    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->isShrunkTargetChanged()Z

    move-result v3

    .line 225
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->update(IIZ)V

    :cond_5
    :goto_0
    move v0, p1

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    if-ne v2, v1, :cond_7

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->handleDropTargets(Landroid/view/DragEvent;)Z

    move-result v0

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/draganddrop/DragTargetView;

    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_8
    return-void
.end method
