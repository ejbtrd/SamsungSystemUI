.class public Lcom/samsung/android/edgelighting/view/GradientEffectView;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;
.source "GradientEffectView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public fadeInAnimation()V
    .locals 9

    .line 158
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 159
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x5dc

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void
.end method

.method public fadeOutAnimation()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 164
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x384

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void
.end method

.method public hide()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->stopRotation()V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->resetImageDrawable()V

    return-void
.end method

.method protected init()V
    .locals 4

    .line 87
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->navigation_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 102
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v1

    .line 103
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 105
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 106
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v0, v1

    .line 109
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->setScreenSize(II)V

    return-void
.end method

.method public setImageDrawable()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->color_gradation:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMainColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 145
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 149
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

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

    .line 132
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setScreenSize(II)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->setImageDrawable()V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method public show()V
    .locals 9

    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 57
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->setImageDrawable()V

    const-wide/16 v0, 0xbb8

    .line 62
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 69
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x384

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void
.end method
