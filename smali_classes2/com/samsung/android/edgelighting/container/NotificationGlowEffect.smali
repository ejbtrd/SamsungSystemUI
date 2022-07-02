.class public Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationGlowEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;


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

    .line 20
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 45
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->hide()V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init()V
    .locals 3

    .line 31
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 32
    new-instance v0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    .line 34
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public requestHideEffectView()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->hide()V

    .line 98
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v0

    if-ltz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->setStrokeWidth(FI)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->setStrokeWidth(F)V

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->setStrokeAlpha(F)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->updateGlowEffectAlpha()V

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

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->setMainColor(I)V

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

    .line 91
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->setIsMultiResolutionSupoorted(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    .line 40
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->show()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;->mGlowEffectView:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->updateGlowEffectAlpha()V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
