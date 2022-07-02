.class public Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;
.source "NotificationHeartEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;


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

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 21
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->TAG:Ljava/lang/String;

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

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dismissToastPopup()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 36
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->init()V

    .line 38
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "Edge_Heart.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->heart_effect_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/4 v2, -0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xe

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setZ(F)V

    return-void
.end method

.method public requestHideEffectView()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

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

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

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

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEffectColors([I)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

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

    .line 89
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->update()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;->mHeartEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
