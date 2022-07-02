.class public Lcom/android/systemui/power/UnintentionalLcdOnView;
.super Landroid/widget/LinearLayout;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;
    }
.end annotation


# instance fields
.field private mCenterXOnScreen:F

.field private mCenterYOnScreen:F

.field private mCircleImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDCircleMaxRadius:F

.field private mDCircleRadius:F

.field private mDragDistance:F

.field private mDragDistanceY:F

.field private mDragToUnlock:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageScale:F

.field private mIsLockerSelected:Z

.field private mLockerCueMtrl_L1:Landroid/widget/ImageView;

.field private mLockerCueMtrl_L2:Landroid/widget/ImageView;

.field private mLockerCueMtrl_L3:Landroid/widget/ImageView;

.field private mLockerCueMtrl_R1:Landroid/widget/ImageView;

.field private mLockerCueMtrl_R2:Landroid/widget/ImageView;

.field private mLockerCueMtrl_R3:Landroid/widget/ImageView;

.field private mLockerImage:Landroid/widget/ImageView;

.field private mLockerRing:Landroid/widget/ImageView;

.field private mPaintColor:Landroid/graphics/Paint;

.field private mPreviewClipRect:Landroid/graphics/RectF;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mSineInOut33:Landroid/view/animation/PathInterpolator;

.field private mStartX:F

.field private mStartY:F

.field private mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

.field private mTranslateX:F

.field private mTranslateY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWhiteRectagleWidth:F

.field private mWhiteRectangleHeight:F

.field private roundRectPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 75
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L1:Landroid/widget/ImageView;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L2:Landroid/widget/ImageView;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L3:Landroid/widget/ImageView;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R1:Landroid/widget/ImageView;

    .line 82
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R2:Landroid/widget/ImageView;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R3:Landroid/widget/ImageView;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    .line 88
    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 91
    iput p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mImageScale:F

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->roundRectPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 258
    new-instance v1, Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$2;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->unintentional_lock_screen_white_rectangle_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectagleWidth:F

    .line 125
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->unintentional_lock_screen_white_rectangle_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectangleHeight:F

    .line 126
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v2, p2, v3, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    .line 127
    new-instance p2, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    .line 128
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    .line 129
    sget p2, Lcom/android/systemui/R$color;->accidental_touch_rectngle_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 130
    iget-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/power/UnintentionalLcdOnView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/power/UnintentionalLcdOnView;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/power/UnintentionalLcdOnView;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    return p1
.end method

.method private animateWhiteCircle(Z)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0xfa

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$4;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$5;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private cancelAllAnimators()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private drawPreviewCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 413
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 417
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 421
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 423
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method private endMotion()V
    .locals 1

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->cancelAllAnimators()V

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V

    .line 294
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 138
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private onLockerActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    .line 207
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartX:F

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    const/4 p1, 0x1

    .line 210
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    return-void
.end method

.method private onLockerActionMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 220
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    .line 221
    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 222
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectagleWidth:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 228
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectangleHeight:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutVisibility(I)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setPreviewClipRect(F)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onLockerActionUp()V
    .locals 3

    const-string v0, "PowerUI.UnintentionalLcdOnView"

    const-string v1, "onLockerActionUp"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, v1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->endMotion()V

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 246
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectagleWidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectangleHeight:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const-string v1, "drag distance > WhiteCircleRadius"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;->onUnintentionalLcdOnTouchView()V

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->showDescription(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDCircleAnimator(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 268
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusStart:F

    .line 269
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusEnd:F

    goto :goto_0

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    .line 272
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusStart:F

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusEnd:F

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 275
    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusStart:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRadiusEnd:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 276
    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    new-instance p1, Lcom/android/systemui/power/UnintentionalLcdOnView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$3;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setLockerLayoutVisibility(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 372
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setVisibility(I[Landroid/view/View;)V

    return-void
.end method

.method private setPreviewClipRect(F)V
    .locals 6

    .line 407
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectagleWidth:F

    sub-float v2, v0, v1

    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget v4, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectangleHeight:F

    sub-float v5, v3, v4

    add-float/2addr v0, v1

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v5, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->roundRectPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private varargs setVisibility(I[Landroid/view/View;)V
    .locals 2

    .line 382
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 383
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showDescription(Z)V
    .locals 1

    const-string p1, "PowerUI.UnintentionalLcdOnView"

    const-string/jumbo v0, "showDescription of unintentional locker"

    .line 388
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    .line 403
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mHandler:Landroid/os/Handler;

    .line 153
    sget v0, Lcom/android/systemui/R$id;->unintentional_body:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    sget v1, Lcom/android/systemui/R$id;->locker_img_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 157
    sget v1, Lcom/android/systemui/R$id;->locker_image_circle:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 158
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_L:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L1:Landroid/widget/ImageView;

    .line 159
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_L2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L2:Landroid/widget/ImageView;

    .line 160
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_L3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_L3:Landroid/widget/ImageView;

    .line 161
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_R:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R1:Landroid/widget/ImageView;

    .line 162
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_R2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R2:Landroid/widget/ImageView;

    .line 163
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl_R3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl_R3:Landroid/widget/ImageView;

    .line 164
    sget v1, Lcom/android/systemui/R$id;->unintentional_drag_to_unlock:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    .line 165
    sget v1, Lcom/android/systemui/R$id;->locker_image_ring:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 169
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->unintentional_lcd_on_alert_window_body_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->unintentional_lcd_on_alert_window_body:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/power/UnintentionalLcdOnView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$1;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 430
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 431
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectagleWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTranslateX:F

    .line 432
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteRectangleHeight:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTranslateY:F

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 434
    iget-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 435
    aget p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    const/4 p2, 0x1

    .line 436
    aget p1, p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    return-void
.end method

.method public regUnintentionalLcdOnTouchViewListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    return-void
.end method

.method public unRegUnintentionalLcdOnTouchListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    :cond_0
    return-void
.end method
