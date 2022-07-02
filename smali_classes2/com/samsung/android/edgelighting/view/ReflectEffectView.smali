.class public Lcom/samsung/android/edgelighting/view/ReflectEffectView;
.super Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;
.source "ReflectEffectView.java"


# instance fields
.field protected mAnimationSet:Landroid/animation/AnimatorSet;

.field mImageFrame:Landroid/widget/ImageView;

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

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->init()V

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

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->init()V

    return-void
.end method


# virtual methods
.method public getStrokeAlpha()F
    .locals 0

    .line 133
    iget p0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    return p0
.end method

.method protected init()V
    .locals 8

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 43
    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->edge_prism:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 52
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 55
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

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

    .line 128
    iput p1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    .line 129
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public startAnimation()V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string/jumbo v4, "rotation"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1770

    .line 71
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    .line 73
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 76
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v1, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    new-array v4, v3, [F

    iget v5, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x15e

    .line 80
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 82
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v1, v2, v3

    .line 83
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public stopAnimation()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mLightingAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    new-instance v1, Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/ReflectEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stopImmediately()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
