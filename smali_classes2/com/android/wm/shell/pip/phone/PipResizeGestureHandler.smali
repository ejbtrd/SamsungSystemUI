.class public Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "PipResizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private mAngle:F

.field private final mContext:Landroid/content/Context;

.field private mCtrlType:I

.field private mDelta:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private final mDownBounds:Landroid/graphics/Rect;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mDownSecondPoint:Landroid/graphics/PointF;

.field private final mDragCornerSize:Landroid/graphics/Rect;

.field private mEnableDragCornerResize:Z

.field private mEnablePinchResize:Z

.field mFirstIndex:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsSysUiStateValid:Z

.field private final mLastPoint:Landroid/graphics/PointF;

.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mLastSecondPoint:Landroid/graphics/PointF;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMaxSize:Landroid/graphics/Point;

.field private final mMinSize:Landroid/graphics/Point;

.field private final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field private final mMovementBoundsSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mOhmOffset:I

.field private mOngoingPinchToResize:Z

.field private final mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field private final mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

.field private final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field private final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field private final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field mSecondIndex:I

.field private mThresholdCrossed:Z

.field private final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field private final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field private final mTmpTopRightCorner:Landroid/graphics/Rect;

.field private mTouchSlop:F

.field private final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field private final mUserResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$WtDbF9Y9YztVsta_tic2Eewwo9Y(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->lambda$finishResize$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3nbkw5BASZg3VO5nA6uBp5FOBQ(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->lambda$updateIsEnabled$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 116
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 130
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 132
    iput-object p11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 133
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 134
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 135
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 136
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 137
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 138
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 139
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    .line 140
    iput-object p10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 141
    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 142
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    invoke-direct {p1}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    return-void
.end method

.method static synthetic access$002(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    return p1
.end method

.method private convertDragResizeToPinch(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    .line 565
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 566
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v2, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float v2, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 567
    iget v1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    int-to-float v1, v1

    .line 565
    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 569
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 570
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget v2, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v2, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 571
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget p3, p3, Landroid/graphics/Rect;->top:I

    :goto_3
    int-to-float p3, p3

    .line 569
    invoke-virtual {v0, v2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 572
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 573
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 575
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 197
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 201
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private distanceBetween(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 678
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    float-to-double v0, p0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private finishResize()V
    .locals 7

    .line 582
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    .line 596
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 598
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 599
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v3, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resizeRectAboutCenter(Landroid/graphics/Rect;II)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 603
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 604
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 605
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 606
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 610
    iget v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 611
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 612
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->applySnapFraction(Landroid/graphics/Rect;F)V

    .line 615
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/16 v4, 0xfa

    iget v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;IFLjava/util/function/Consumer;)V

    .line 621
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 622
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 623
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->setMagneticFieldRadiusPercent(F)V

    .line 624
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_1

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    :goto_1
    return-void
.end method

.method private isInValidSysUiState()Z
    .locals 0

    .line 424
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    return p0
.end method

.method private synthetic lambda$finishResize$1(Landroid/graphics/Rect;)V
    .locals 1

    .line 584
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 585
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 586
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 587
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    return-void
.end method

.method private synthetic lambda$updateIsEnabled$0()V
    .locals 3

    .line 230
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 231
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method private onDragCornerResize(Landroid/view/MotionEvent;)V
    .locals 8

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 505
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-int v0, v1

    float-to-int v4, p1

    invoke-virtual {p0, v0, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_7

    float-to-int v0, v1

    float-to-int v2, p1

    .line 507
    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setCtrlType(II)V

    .line 508
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 509
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 511
    :cond_1
    iget-boolean v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_7

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 515
    :cond_2
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    goto :goto_0

    .line 519
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    float-to-double v4, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p1, v0

    float-to-double v6, v0

    .line 520
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    .line 521
    iput-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 523
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 524
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 526
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz v0, :cond_7

    .line 527
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0, v2, v2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(IZ)V

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 534
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    if-eqz v2, :cond_7

    .line 535
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->convertDragResizeToPinch(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 536
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 538
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setHasUserResizedPip(Z)V

    goto :goto_0

    .line 557
    :cond_6
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    :cond_7
    :goto_0
    return-void
.end method

.method private reloadResources()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    sget v1, Lcom/android/wm/shell/R$dimen;->pip_resize_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 182
    sget v1, Lcom/android/wm/shell/R$bool;->config_pipEnableDragCornerResize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    return-void
.end method

.method private resetDragCorners()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resizeRectAboutCenter(Landroid/graphics/Rect;II)V
    .locals 2

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    .line 683
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 684
    div-int/lit8 v1, p2, 0x2

    sub-int/2addr p0, v1

    add-int/2addr p2, p0

    .line 686
    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 688
    invoke-virtual {p1, p0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setCtrlType(II)V
    .locals 7

    .line 390
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 394
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 397
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v1, v6

    .line 394
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    .line 401
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 402
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_1

    .line 406
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 407
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    .line 412
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x8

    .line 413
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_3

    .line 418
    iget p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    .line 419
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_3
    return-void
.end method

.method private updateIsEnabled()V
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 218
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 221
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 222
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->disposeInputChannel()V

    .line 224
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    const-string/jumbo v2, "pip-resize"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create input event receiver"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustCornerTouchRegion(Landroid/graphics/Rect;)V
    .locals 4

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 335
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 337
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 339
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v2, p0, 0x2

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 351
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v2, p0, 0x2

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipResizeGestureHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowGesture="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsAttached="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnablePinchResize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mThresholdCrossed="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mOhmOffset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getLastResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method getUserResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hasOngoingGesture()Z
    .locals 1

    .line 274
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

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

.method public init()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 147
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    const-string/jumbo v0, "systemui"

    const-string/jumbo v1, "pip_pinch_resize"

    const/4 v2, 0x1

    .line 149
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 153
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method invalidateUserResizeBounds()V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public isResizing()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    return p0
.end method

.method public isUsingPinchToZoom()Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    return p0
.end method

.method public isWithinDragResizeRegion(II)Z
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetDragCorners()V

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->adjustCornerTouchRegion(Landroid/graphics/Rect;)V

    .line 316
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 317
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 318
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 319
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 320
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 322
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method onActivityPinned()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 207
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method onActivityUnpinned()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 212
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 213
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    return-void
.end method

.method onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 251
    :cond_1
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    .line 252
    check-cast p1, Landroid/view/MotionEvent;

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 256
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 257
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 262
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 264
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    if-eqz v0, :cond_5

    .line 265
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onDragCornerResize(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method onPinchResize(Landroid/view/MotionEvent;)V
    .locals 13

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 432
    :cond_0
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 433
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 434
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 435
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 438
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    return-void

    .line 442
    :cond_2
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v6, 0x5

    if-ne v0, v6, :cond_3

    .line 444
    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-ne v6, v2, :cond_3

    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v6, v2, :cond_3

    .line 445
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    iput-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 448
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 449
    iput v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 450
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    iget v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 451
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    iget v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 452
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 454
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 455
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 456
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    if-ne v0, v5, :cond_7

    .line 461
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-eq v0, v2, :cond_7

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v1, v2, :cond_4

    goto/16 :goto_0

    .line 465
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    .line 466
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    .line 467
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    .line 468
    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    .line 469
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 470
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 473
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->distanceBetween(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->distanceBetween(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 476
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->pilferPointers()V

    .line 477
    iput-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 479
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 480
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 482
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 483
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 487
    :cond_6
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz p1, :cond_7

    .line 488
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v4 .. v12}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 492
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/function/Consumer;)V

    .line 494
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setHasUserResizedPip(Z)V

    nop

    :cond_7
    :goto_0
    return-void
.end method

.method public onSystemUiStateChanged(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    return-void
.end method

.method pilferPointers()V
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    return-void
.end method

.method resetState()V
    .locals 2

    const/4 v0, 0x0

    .line 635
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    const/4 v1, 0x0

    .line 636
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 637
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 638
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void
.end method

.method setOhmOffset(I)V
    .locals 0

    .line 674
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    return-void
.end method

.method setUserResizeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateMaxSize(II)V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateMinSize(II)V
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public willStartResizeGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 377
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    return p1

    .line 369
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
