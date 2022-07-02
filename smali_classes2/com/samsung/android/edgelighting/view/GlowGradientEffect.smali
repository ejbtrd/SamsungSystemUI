.class public Lcom/samsung/android/edgelighting/view/GlowGradientEffect;
.super Landroid/widget/FrameLayout;
.source "GlowGradientEffect.java"


# instance fields
.field mGlowView:Landroid/widget/ImageView;

.field mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

.field private mLightingAlpha:F


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

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    iput p1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mLightingAlpha:F

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->init()V

    return-void
.end method

.method private fadeInAnimation()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mLightingAlpha:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->fadeInAnimation()V

    return-void
.end method

.method private fadeOutAnimation()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mLightingAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x384

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    new-instance v1, Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;-><init>(Lcom/samsung/android/edgelighting/view/GlowGradientEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->fadeOutAnimation()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 37
    new-instance v0, Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/GradientEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 40
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->edge_gradation_only_glow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string p0, "GLOW"

    const-string v0, "init"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->fadeOutAnimation()V

    return-void
.end method

.method public setIsMultiResolutionSupoorted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupported"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setIsMultiResolutionSupoorted(Z)V

    return-void
.end method

.method public setMainColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 57
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->setMainColor(I)V

    const-string p0, "GLOW"

    const-string/jumbo p1, "set Main Color"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 72
    iput p1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mLightingAlpha:F

    .line 73
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setStrokeAlpha(F)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    return-void
.end method

.method public setStrokeWidth(FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "depth"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(FI)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLOW"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->show()V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->fadeInAnimation()V

    return-void
.end method

.method public updateGlowEffectAlpha()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mLightingAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->updateEffectAlpha()V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
