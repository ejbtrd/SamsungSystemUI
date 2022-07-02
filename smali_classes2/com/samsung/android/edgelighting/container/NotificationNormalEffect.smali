.class public Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationNormalEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBasicLighting:Z

.field protected mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

.field protected mLightingDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xce4

    .line 20
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mBasicLighting:Z

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

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0xce4

    .line 20
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mBasicLighting:Z

    return-void
.end method

.method private hideLightingEffect(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mInfiniteLighting:Z

    if-eqz v0, :cond_1

    .line 157
    sget-object p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->TAG:Ljava/lang/String;

    const-string p1, "hideLightingEffect infinite Noti Type "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->hide()V

    .line 73
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init()V
    .locals 3

    .line 45
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    .line 48
    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->setScreenSize(II)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->hide()V

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v0

    if-ltz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(FI)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->setLightingDuration(J)V

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setRotateDuration(J)V

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setStrokeAlpha(F)V

    .line 139
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getRadiusWeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 140
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getRadiusWeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setRadiusWeight(F)V

    :cond_5
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

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setMainColor(I)V

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

    .line 32
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setIsMultiResolutionSupoorted(Z)V

    return-void
.end method

.method setIsNoFrame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNoFrame"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->setIsNoFrame(Z)V

    return-void
.end method

.method public setLightingDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 164
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    return-void
.end method

.method public show()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mInfiniteLighting:Z

    if-nez v0, :cond_1

    .line 63
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->hideLightingEffect(J)V

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->show()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->show()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->updateEffectAlpha()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->hideLightingEffect(J)V

    return-void
.end method

.method public updateText(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDirty"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->updateText(Z)V

    if-nez p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isRotateAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->show()V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->mLightingDuration:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;->hideLightingEffect(J)V

    :cond_2
    return-void
.end method
