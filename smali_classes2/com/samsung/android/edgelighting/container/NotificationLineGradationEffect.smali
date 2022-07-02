.class public Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationLineGradationEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 38
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0, p2}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->setLineColorType(I)V

    :cond_0
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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->hide()V

    .line 98
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public init()V
    .locals 3

    .line 48
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 50
    new-instance v0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    .line 52
    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->setScreenSize(II)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public requestHideEffectView()V
    .locals 3

    .line 123
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->hide()V

    .line 125
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

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

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v0

    if-ltz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getWidthDepth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(FI)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setStrokeWidth(F)V

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 81
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setStrokeAlpha(F)V

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

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->setMainColor(I)V

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

    .line 118
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setIsMultiResolutionSupoorted(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->show()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->updateEffectAlpha()V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;->mGradationEffect:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
