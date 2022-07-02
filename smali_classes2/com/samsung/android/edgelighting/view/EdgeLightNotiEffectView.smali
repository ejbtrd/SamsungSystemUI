.class public Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;
.source "EdgeLightNotiEffectView.java"


# instance fields
.field private final MSG_RESET_DRAWABLE:I

.field private final TAG:Ljava/lang/String;

.field private mBasicLighting:Z

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 13
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->MSG_RESET_DRAWABLE:I

    .line 45
    new-instance p1, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mHandler:Landroid/os/Handler;

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
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-class p1, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->MSG_RESET_DRAWABLE:I

    .line 45
    new-instance p1, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final isSupportFrameEffect()Z
    .locals 2

    .line 18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frame_effect"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hide()V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x258

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->stopRotation()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 119
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected init()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->isSupportFrameEffect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setMaskingEdgeArea(Z)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isDoneRound:Z

    .line 67
    iget v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setMaxPadding(F)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setRingImageAlpha(Landroid/view/View;F)V

    const-wide/16 v0, 0xbb8

    .line 72
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    return-void
.end method

.method public setImageDrawable()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->noti_basic_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/edgelighting/R$drawable;->noti_basic_gradient:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setIsNoFrame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noFrame"
        }
    .end annotation

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 136
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setScreenSize(II)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->setImageDrawable()V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method public show()V
    .locals 9

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mBasicLighting:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    const-string v0, " Already animating "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->setImageDrawable()V

    .line 97
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->startRotation(J)V

    .line 100
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xc8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void

    .line 81
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightNotiEffectView;->TAG:Ljava/lang/String;

    const-string v0, "Basic lighting is not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
