.class public Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;
.source "NotificationBubbleEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBubbleScale:[F

.field private mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;


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
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 24
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->TAG:Ljava/lang/String;

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

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dismissToastPopup()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->dot_effect_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 85
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mBubbleScale:[F

    aget v2, v3, v2

    mul-float/2addr v1, v2

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->toast_effect_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getMinWidth()I

    move-result v2

    div-int/2addr v2, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    float-to-int v1, v2

    .line 90
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 4

    .line 41
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->init()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 43
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mBubbleScale:[F

    .line 45
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frame_effect"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "edge_lighting_dot_type.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "dot_bottom.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->dot_effect_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mBubbleScale:[F

    aget v1, v2, v1

    mul-float/2addr v0, v1

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    const/4 v2, -0x1

    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f8ccccd    # 1.1f
        0x3f933333    # 1.15f
        0x3f99999a    # 1.2f
        0x3fa00000    # 1.25f
    .end array-data
.end method

.method public requestHideEffectView()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 146
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setEffectColors([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEffectColors([I)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v2, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v2, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->update()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method updateEffectLocation()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->dot_effect_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mBubbleScale:[F

    aget v1, v2, v1

    mul-float/2addr v0, v1

    .line 126
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    const/4 v2, -0x1

    .line 127
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;->mDotEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
