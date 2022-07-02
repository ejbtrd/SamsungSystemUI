.class public Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;
.source "EdgeLightAppEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private lineDuration:J

.field repeatColorAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 29
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x64

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->lineDuration:J

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 33
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->lineDuration:J

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 33
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->lineDuration:J

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 33
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->lineDuration:J

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->init()V

    return-void
.end method


# virtual methods
.method public cancelRepeatColorAnimation()V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->stopRotation()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->resetImageDrawable()V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->cancelRepeatColorAnimation()V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setMaxPadding(F)V

    const/high16 v0, 0x41100000    # 9.0f

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setRingImageAlpha(Landroid/view/View;F)V

    const-wide/16 v0, 0x1388

    .line 105
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const v0, 0x3f4ccccd    # 0.8f

    .line 107
    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    return-void
.end method

.method public resetLightingAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    return-void
.end method

.method public setImageDrawable()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->music_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 343
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/edgelighting/R$drawable;->music_gradient:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setMainColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 209
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 v0, 0x2

    aget v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 221
    iget p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v1, p1, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setRepeatColorAnimation(IIJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromColor",
            "toColor",
            "startDelay",
            "duration"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repeat Color Animation from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 265
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 267
    new-instance p2, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 289
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 291
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 313
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setScreenSize(II)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setImageDrawable()V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method public show()V
    .locals 9

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setImageDrawable()V

    .line 133
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->lineDuration:J

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    .line 143
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mSubColor:I

    if-eqz v2, :cond_1

    .line 145
    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setRepeatColorAnimation(IIJJ)V

    :cond_1
    return-void
.end method
