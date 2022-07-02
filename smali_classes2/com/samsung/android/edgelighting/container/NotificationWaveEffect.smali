.class public Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;
.source "NotificationWaveEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;


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

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 13
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->TAG:Ljava/lang/String;

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

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dismissToastPopup()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected finishToastPopupAnimation()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getRootRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->setCurrentRect(Landroid/graphics/Rect;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iget-wide v1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->startLineAnimation(J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->init()V

    .line 29
    new-instance v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onFlickUpAnimation()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->requestHideEffectView()V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

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

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

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

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setEffectColors([I)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz p1, :cond_0

    .line 38
    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->setPaintColor(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->show()V

    return-void
.end method

.method public update()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->update()V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getRootRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->setCurrentRect(Landroid/graphics/Rect;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iget-wide v1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->startLineAnimation(J)V

    :cond_0
    return-void
.end method

.method updateEffectLocation()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->stopLineAnimation()V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;->mLineEffect:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
