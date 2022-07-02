.class public final Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "LockscreenShadeTransitionController.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field private dragDownAmountOnStart:F

.field private final dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private draggedFarEnough:Z

.field public expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public host:Landroid/view/View;

.field private initialTouchX:F

.field private initialTouchY:F

.field private isDraggingDown:Z

.field private lastHeight:F

.field private minDragDistance:I

.field private slopMultiplier:F

.field private startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final temp2:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchSlop:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/FalsingManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/classifier/FalsingCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingCollector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragDownCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 659
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 660
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 661
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 674
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->temp2:[I

    .line 695
    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/DragDownHelper;->updateResources(Landroid/content/Context;)V

    return-void
.end method

.method private final cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 829
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 834
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 833
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x177

    .line 836
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 837
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 842
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final captureStartingChild(FF)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_1

    .line 797
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_1

    .line 799
    iget-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 802
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_1
    :goto_0
    return-void
.end method

.method private final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getHost()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->temp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 862
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->temp2:[I

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    add-float/2addr p2, p0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method private final handleExpansion(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    move p1, p0

    .line 813
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const v0, 0x3e19999a    # 0.15f

    :goto_0
    mul-float/2addr p1, v0

    if-eqz p0, :cond_2

    .line 820
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    .line 821
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    .line 825
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    return-void
.end method

.method private final isFalseTouch()Z
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isFalsingCheckNeeded$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 666
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "expandCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHost()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 667
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->host:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "host"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isDragDownEnabled()Z
    .locals 1

    .line 692
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    return p0
.end method

.method public final isDraggingDown()Z
    .locals 0

    .line 679
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    .line 718
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    sub-float v2, v1, v2

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 722
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    mul-float/2addr p1, v5

    goto :goto_0

    .line 724
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    :goto_0
    cmpl-float v5, v2, p1

    if-lez v5, :cond_5

    .line 725
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_5

    .line 726
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationStartDraggingDown()V

    .line 727
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 728
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 729
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez p1, :cond_2

    return v3

    .line 732
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 733
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    .line 734
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onDragDownStarted$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 735
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    .line 736
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3

    .line 738
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v4, :cond_7

    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_7

    .line 739
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    return v4

    .line 711
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 712
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 714
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    .line 715
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    :cond_7
    :goto_1
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 752
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v1

    .line 756
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    .line 757
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchX:F

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 758
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownAmountOnStart:F

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    .line 759
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_3

    .line 760
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 762
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->lastHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 763
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-nez p1, :cond_5

    .line 764
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 765
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onCrossedThreshold$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V

    goto :goto_0

    .line 768
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    if-eqz p1, :cond_5

    .line 769
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->draggedFarEnough:Z

    .line 770
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onCrossedThreshold$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Z)V

    :cond_5
    :goto_0
    return v2

    .line 775
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->isFalseTouch()Z

    move-result p1

    if-nez p1, :cond_8

    .line 776
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 777
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->initialTouchY:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onDraggedDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/View;I)V

    .line 778
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_7

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 780
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 782
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    :goto_1
    return v1

    .line 784
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v1
.end method

.method public final setExpandCallback(Lcom/android/systemui/ExpandHelper$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/ExpandHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-void
.end method

.method public final setHost(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->host:Landroid/view/View;

    return-void
.end method

.method public final stopDragging()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationStopDraggingDown()V

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 853
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v0, 0x0

    .line 854
    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->startingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_0
    const/4 v0, 0x0

    .line 856
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 857
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->onDragDownReset$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    return-void
.end method

.method public final updateResources(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 700
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    .line 699
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->minDragDistance:I

    .line 701
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 702
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->touchSlop:F

    .line 703
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->slopMultiplier:F

    return-void
.end method
