.class public Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsEnrollProgressBarDrawable.java"


# instance fields
.field private final mBackgroundCirclePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mLastStepAcquired:Z

.field private final mParent:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mRotation:I


# direct methods
.method public static synthetic $r8$lambda$KtyUAN7G0IBq93yNOBCSIlpAsHo(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->lambda$setEnrollmentProgress$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thXJiSDNR--aWNZ65sbJuU-p1us(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->lambda$setEnrollmentProgress$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V
    .locals 5

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mParent:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    .line 59
    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    sget v1, Lcom/android/systemui/R$color;->white_disabled:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-array v2, v1, [I

    const v3, 0x1010429

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 68
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010033

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 72
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressPaint:Landroid/graphics/Paint;

    .line 76
    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    sget p0, Lcom/android/systemui/R$color;->udfps_enroll_progress:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private synthetic lambda$setEnrollmentProgress$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsEnrollProgressBarDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRotation:I

    .line 104
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mParent:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$setEnrollmentProgress$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    .line 121
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mParent:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private setEnrollmentProgress(F)V
    .locals 5

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mLastStepAcquired:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x96

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x190

    new-array v2, v3, [I

    .line 99
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    new-instance v4, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-array v2, v3, [F

    const/4 v3, 0x0

    .line 113
    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x190
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRotation:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v2, p1

    move v3, v0

    move v4, v0

    .line 140
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 150
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v8, v1, v2

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 152
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onLastStepAcquired()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(F)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mLastStepAcquired:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method setEnrollmentProgress(II)V
    .locals 0

    sub-int p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(F)V

    return-void
.end method
