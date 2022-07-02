.class public Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationEclipseEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;


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

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 23
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->TAG:Ljava/lang/String;

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
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 91
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected dismissToastPopup()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 39
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "Edge_Eclipse_small.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->eclipse_effect_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setZ(F)V

    return-void
.end method

.method public requestHideEffectView()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

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
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;->mEclipseEffect:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
