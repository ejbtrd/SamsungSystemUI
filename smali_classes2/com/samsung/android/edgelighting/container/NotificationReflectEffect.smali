.class public Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationReflectEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;


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

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 16
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->TAG:Ljava/lang/String;

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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->stopAnimation()V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 31
    new-instance v0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onFlickUpAnimation()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->stopAnimation()V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 3

    .line 120
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->stopAnimation()V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->setStrokeAlpha(F)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v0

    if-ltz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(FI)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
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

    .line 40
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    return-void
.end method

.method setIsMultiResolutionSupoorted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupported"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setIsMultiResolutionSupoorted(Z)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->startAnimation()V

    .line 52
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method updateEffectLocation()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->stopImmediately()V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->getStrokeWidth()F

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->getStrokeAlpha()F

    move-result v1

    .line 63
    new-instance v2, Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    const/16 v3, 0x8

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->setStrokeAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;->mReflectEffectView:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->startAnimation()V

    :cond_0
    return-void
.end method
