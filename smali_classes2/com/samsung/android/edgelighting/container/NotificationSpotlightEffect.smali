.class public Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationSpotlightEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;


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

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 14
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->TAG:Ljava/lang/String;

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

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 135
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected dismissToastPopup()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->stopAnimation()V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v1, 0xa8b

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->setCurrentWidth(I)V

    .line 104
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->startAnimation()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 35
    new-instance v0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    new-instance v1, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;-><init>(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->setSpotlightAnimListener(Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa8b

    const/16 v2, 0x9d9

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, -0x778

    .line 52
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method protected onFlickUpAnimation()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->stopAnimation()V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

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

    .line 140
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setEffectColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz p1, :cond_0

    .line 61
    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->setPaintColor(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->stopAnimation()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v1, 0xa8b

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->setCurrentWidth(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->startAnimation()V

    .line 78
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/16 v1, 0xa8b

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->setCurrentWidth(I)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->startAnimation()V

    :cond_0
    return-void
.end method

.method updateEffectLocation()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->stopAnimation()V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->startAnimation()V

    :cond_0
    return-void
.end method
