.class public Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;
.super Ljava/lang/Object;
.source "GestureHintAnimator.java"


# static fields
.field private static GESTURE_CENTER:I = 0x1

.field private static GESTURE_LEFT:I = 0x0

.field private static GESTURE_RIGHT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentHintId:I

.field private mCurrentMoveType:I

.field mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

.field private mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

.field mHandler:Landroid/os/Handler;

.field mHoldingViAnimator:Landroid/animation/AnimatorSet;

.field private mHomeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

.field private mIsCanMove:Z

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mNavigationMode:I


# direct methods
.method public static synthetic $r8$lambda$Lb19XlZcOR7H75pgSfHSBFu6FsU(Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->lambda$reset$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TqO-GzduOE3sAmC3ToOhHXn-f3c(Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->lambda$onActionMove$2(IIJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/navigationbar/util/DisplayUtil;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    .line 66
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    return-void
.end method

.method private checkMovement(DD)I
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result v0

    .line 200
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    const/4 p2, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    cmpl-double v6, p3, v3

    if-eqz v6, :cond_3

    .line 203
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_5

    .line 205
    :cond_0
    iget p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    if-ne p0, v5, :cond_1

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x403e000000000000L    # 30.0

    .line 206
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    div-double/2addr p3, v1

    cmpg-double p0, p0, p3

    if-gez p0, :cond_2

    return p2

    :cond_2
    return v5

    :cond_3
    if-nez p1, :cond_4

    cmpl-double p0, p3, v3

    if-eqz p0, :cond_4

    return p2

    :cond_4
    cmpl-double p0, p3, v3

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    return v5

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private dipToPixel(F)F
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 194
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private getDistance(II)I
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result v0

    .line 247
    iget v1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 248
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 250
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method private getDragArea()F
    .locals 2

    .line 222
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 223
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43520000    # 210.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42d20000    # 105.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    .line 225
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result p0

    return p0
.end method

.method private getHintView(I)Landroid/view/View;
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isSideBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHomeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxDrag()F
    .locals 2

    .line 230
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41880000    # 17.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41080000    # 8.5f

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 233
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result p0

    return p0
.end method

.method private getMaxScale()F
    .locals 2

    .line 238
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    iget p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f947ae1    # 1.16f

    goto :goto_0

    :cond_0
    const p0, 0x3f8ccccd    # 1.1f

    :goto_0
    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private synthetic lambda$onActionMove$2(IIJ)V
    .locals 6

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentMoveType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentHintId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getDragArea()F

    move-result v1

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getMaxDrag()F

    move-result v2

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getDistance(II)I

    move-result p1

    int-to-float p2, p1

    mul-float v3, v2, p2

    div-float/2addr v3, v1

    if-lez p1, :cond_0

    cmpl-float p1, v3, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    neg-float p1, v2

    cmpg-float v2, v3, p1

    if-gez v2, :cond_1

    move v3, p1

    :cond_1
    move v2, v3

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getMaxScale()F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, p1, v3

    mul-float/2addr v4, p2

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    cmpl-float p2, v4, p1

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v4

    .line 289
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result p2

    .line 292
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 302
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_2

    :cond_4
    if-ne p2, v5, :cond_5

    neg-float p2, v2

    .line 305
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_5
    :goto_2
    move-object p1, v4

    goto :goto_5

    .line 294
    :cond_6
    :goto_3
    iget p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    if-ne p2, v5, :cond_7

    neg-float p2, v2

    .line 295
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_4

    .line 297
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 299
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    const-string/jumbo p1, "scaleX"

    .line 309
    :goto_5
    iget p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentHintId:I

    sget v1, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    if-ne p2, v1, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    const/4 p2, 0x0

    .line 310
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-nez p3, :cond_8

    .line 313
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_a

    .line 314
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 315
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    goto :goto_6

    .line 317
    :cond_8
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-nez p3, :cond_a

    new-array p3, v5, [F

    aput v3, p3, p2

    .line 318
    invoke-static {v0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 319
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    aput-object p3, v1, p2

    .line 320
    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 321
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 322
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    const p3, 0x3dcccccd    # 0.1f

    const p4, 0x3e2e147b    # 0.17f

    invoke-static {p4, p4, p3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 325
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 326
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    goto :goto_6

    .line 328
    :cond_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    :goto_6
    return-void
.end method

.method private synthetic lambda$reset$0()V
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    .line 82
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->showHintView(I)V

    .line 83
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->showHintView(I)V

    .line 84
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->showHintView(I)V

    .line 86
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->resetHintView(I)V

    .line 87
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->resetHintView(I)V

    .line 88
    sget v0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private resetHintView(I)V
    .locals 12

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result p1

    .line 118
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    const/4 v1, 0x3

    const-string/jumbo v2, "scaleY"

    const-string/jumbo v3, "scaleX"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_2

    :cond_1
    move-object p1, v3

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    const/high16 p0, -0x80000000

    move-object p1, v2

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_1

    move-object p1, v2

    goto :goto_0

    .line 138
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const-wide/16 v7, 0xc8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-lez v6, :cond_4

    .line 139
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-array v11, v5, [F

    aput v4, v11, v10

    .line 140
    invoke-static {v6, p1, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 141
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v5, [Landroid/animation/Animator;

    aput-object p1, v11, v10

    .line 142
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 143
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const p1, 0x3dcccccd    # 0.1f

    const v11, 0x3e2e147b    # 0.17f

    .line 144
    invoke-static {v11, v11, p1, v9}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    new-array p1, v5, [F

    aput v9, p1, v10

    .line 148
    invoke-static {v0, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v5, [F

    aput v9, v3, v10

    .line 149
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [F

    aput p0, v3, v10

    const-string/jumbo p0, "translationX"

    .line 150
    invoke-static {v0, p0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v3, v5, [F

    aput v4, v3, v10

    const-string/jumbo v6, "translationY"

    .line 151
    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 153
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p1, v6, v10

    aput-object v2, v6, v5

    const/4 p1, 0x2

    aput-object p0, v6, p1

    aput-object v0, v6, v1

    .line 154
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const p0, 0x3f4ccccd    # 0.8f

    const p1, 0x3f547ae1    # 0.83f

    .line 156
    invoke-static {p0, v4, p1, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method

.method private showHintView(I)V
    .locals 3

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->getHintView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 189
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActionMove(IIIJ)V
    .locals 7

    .line 260
    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentHintId:I

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActionMove - ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 263
    iget p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    int-to-double v0, p2

    int-to-double v2, p3

    .line 264
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->checkMovement(DD)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;IIJ)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mNavigationMode:I

    .line 351
    invoke-static {p1}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentMoveType:I

    return-void
.end method

.method public reset()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHintViewGroup(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mHomeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    return-void
.end method

.method public start(IZ)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 339
    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mCurrentHintId:I

    .line 340
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->mIsCanMove:Z

    return-void
.end method
