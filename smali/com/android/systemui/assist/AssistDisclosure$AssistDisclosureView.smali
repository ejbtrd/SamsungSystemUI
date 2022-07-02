.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "AssistDisclosure.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistDisclosureView"
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowThickness:F

.field private mThickness:F

.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .locals 4

    .line 136
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    .line 137
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 134
    iput p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 139
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 141
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, p2, [I

    .line 143
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 145
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 148
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 149
    new-instance p2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;Lcom/android/systemui/assist/AssistDisclosure;)V

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    sget-boolean p1, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_ASSIST_ROUND_DISCLOSURE:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    .line 178
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 181
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->assist_disclosure_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->assist_disclosure_shadow_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    if-eqz p1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getRadius()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    .line 191
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    mul-float/2addr p2, v1

    iget v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0xde
    .end array-data

    :array_1
    .array-data 4
        0xde
        0x0
    .end array-data
.end method

.method private drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V
    .locals 0

    sub-float/2addr p2, p7

    sub-float/2addr p3, p7

    add-float/2addr p4, p7

    add-float/2addr p5, p7

    move-object p0, p1

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    .line 308
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 13

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    move-object v10, p0

    .line 277
    iget v11, v10, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    int-to-float v7, v1

    sub-float v1, v7, v11

    int-to-float v0, v0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v6, v0

    move-object v8, p2

    move/from16 v9, p3

    .line 280
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    const/4 v5, 0x0

    move v6, v11

    move v7, v1

    .line 287
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    sub-float v12, v0, v11

    move v4, v12

    move v6, v0

    .line 292
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    move v4, v11

    move v6, v12

    move v7, v11

    .line 299
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    return-void
.end method

.method private getRadius()F
    .locals 2

    .line 203
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_0

    int-to-float p0, v0

    return p0

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->assist_disclosure_rounded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_1

    int-to-float p0, v0

    return p0

    .line 214
    :cond_1
    sget v0, Lcom/android/systemui/BasicRune;->ASSIST_CONFIG_ROUND_DISCLOSURE:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private startAnimation()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 322
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->startAnimation()V

    const/high16 v0, 0x1000000

    .line 222
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 240
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_ASSIST_ROUND_DISCLOSURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 247
    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 248
    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 250
    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v8, v3, v4

    mul-float v9, v3, v4

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float v5, v0, v5

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v6, v3, v4

    sub-float v6, v0, v6

    mul-float v9, v3, v4

    const/high16 v10, -0x3d4c0000    # -90.0f

    move v8, v0

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 256
    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v6, v3, v4

    sub-float v6, v0, v6

    mul-float/2addr v3, v4

    sub-float v7, v2, v3

    const/4 v10, 0x0

    move v9, v2

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget-object v5, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v3, v0, v4

    sub-float v7, v2, v3

    mul-float v8, v0, v4

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_0
    return-void
.end method
