.class Lcom/android/systemui/accessibility/MagnificationGestureDetector;
.super Ljava/lang/Object;
.source "MagnificationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;
    }
.end annotation


# instance fields
.field private final mCancelTapGestureRunnable:Ljava/lang/Runnable;

.field private mDetectSingleTap:Z

.field private mDraggingDetected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

.field private final mPointerDown:Landroid/graphics/PointF;

.field private final mPointerLocation:Landroid/graphics/PointF;

.field private mTouchSlopSquare:I

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private mVibratorNoti:Z


# direct methods
.method public static synthetic $r8$lambda$n_mA_UDT16RVhcWFTy619SiIj8I(Lcom/android/systemui/accessibility/MagnificationGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    .line 104
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 129
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    mul-int/2addr p1, p1

    .line 131
    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    .line 132
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    .line 134
    new-instance p1, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getHapticticVibEffect()I
    .locals 0

    const/4 p0, 0x1

    .line 320
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0
.end method

.method private static isLocationValid(Landroid/graphics/PointF;)Z
    .locals 1

    .line 346
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    return-void
.end method

.method private notifyChangeWindowSizeGestureIfNeeded(Landroid/view/View;FF)Z
    .locals 3

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    if-nez v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->getHapticticVibEffect()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->isLocationValid(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    .line 314
    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, p3, v2

    .line 315
    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p0, p1, v1, v2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onChangeWindowSize(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method private notifyDraggingGestureIfNeeded(Landroid/view/View;FF)Z
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->getHapticticVibEffect()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->isLocationValid(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float v0, p2, v0

    .line 294
    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    .line 295
    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method private reset()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->resetPointF(Landroid/graphics/PointF;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->resetPointF(Landroid/graphics/PointF;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    return-void
.end method

.method private static resetPointF(Landroid/graphics/PointF;)V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 341
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 342
    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private stopSingleTapDetection()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    return-void
.end method

.method private stopSingleTapDetectionIfNeeded(FF)V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->isLocationValid(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 255
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    float-to-int p2, v0

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    .line 257
    iget p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetection()V

    :cond_2
    return-void
.end method


# virtual methods
.method onChangeWindowSize(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 p2, 0x1

    if-eq v2, p2, :cond_2

    const/4 p2, 0x2

    if-eq v2, p2, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetection()V

    goto :goto_2

    .line 227
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 228
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->notifyChangeWindowSizeGestureIfNeeded(Landroid/view/View;FF)Z

    move-result p0

    goto :goto_1

    .line 231
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 232
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    if-eqz p1, :cond_3

    .line 233
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onSingleTap()Z

    move-result p1

    or-int/2addr p1, v3

    goto :goto_0

    :cond_3
    move p1, v3

    .line 235
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    move v3, p1

    .line 238
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onFinish(FF)Z

    move-result p1

    or-int/2addr v3, p1

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->reset()V

    goto :goto_2

    .line 218
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Ljava/lang/Runnable;

    .line 220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v6, p2

    add-long/2addr v4, v6

    .line 219
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 221
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onStart(FF)Z

    move-result p0

    :goto_1
    or-int/2addr v3, p0

    :goto_2
    return v3
.end method

.method onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 p2, 0x1

    if-eq v2, p2, :cond_2

    const/4 p2, 0x2

    if-eq v2, p2, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_2

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetection()V

    goto :goto_2

    .line 192
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 193
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->notifyDraggingGestureIfNeeded(Landroid/view/View;FF)Z

    move-result p0

    goto :goto_1

    .line 196
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    .line 197
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    if-eqz p1, :cond_3

    .line 198
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onSingleTap()Z

    move-result p1

    or-int/2addr p1, v3

    goto :goto_0

    :cond_3
    move p1, v3

    .line 201
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    move v3, p1

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onFinish(FF)Z

    move-result p1

    or-int/2addr v3, p1

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->reset()V

    goto :goto_2

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Ljava/lang/Runnable;

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v6, p2

    add-long/2addr v4, v6

    .line 184
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 186
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onStart(FF)Z

    move-result p0

    :goto_1
    or-int/2addr v3, p0

    :goto_2
    return v3
.end method
