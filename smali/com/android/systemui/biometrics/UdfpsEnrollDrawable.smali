.class public Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;
.super Lcom/android/systemui/biometrics/UdfpsDrawable;
.source "UdfpsEnrollDrawable.java"


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mBlueFill:Landroid/graphics/Paint;

.field mCurrentScale:F

.field mCurrentX:F

.field mCurrentY:F

.field private mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field private final mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

.field private final mSensorOutlinePaint:Landroid/graphics/Paint;

.field private mSensorRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$Dch01jwrr13MKv6EnoiMNuGdtC4(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKQtVJYAHrNydjOgzO4dykW_C1Y(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nzQudIMiAm7eDVmCx1Z-3nOfMjc(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    .line 65
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->udfps_enroll_icon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    sget v1, Lcom/android/systemui/R$color;->udfps_moving_target_fill:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->ic_fingerprint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 79
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    .line 130
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->isIlluminationShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 157
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 160
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    .line 161
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 160
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    .line 169
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 173
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method onEnrollmentProgress(II)V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(II)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object p1

    const/4 p2, 0x2

    new-array v0, p2, [F

    .line 112
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, p2, [F

    .line 118
    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    aput v4, v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    aput p1, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 119
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, p2, [F

    .line 124
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x320

    .line 125
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance v6, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 135
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 137
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    aput-object v1, v5, p2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 138
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40490fdb    # (float)Math.PI
    .end array-data
.end method

.method onLastStepAcquired()V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->onLastStepAcquired()V

    return-void
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    .line 92
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setAlpha(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method

.method protected updateFingerprintIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->updateFingerprintIconBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
