.class public Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;
.super Lcom/samsung/android/edgelighting/container/NotificationEffect;
.source "NotificationEchoEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;


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

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 15
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->TAG:Ljava/lang/String;

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

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-class p1, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 107
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected dismissToastPopup()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->stopAnimation()V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->init()V

    .line 30
    new-instance v0, Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->setScreenSize(II)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 37
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->initialize()V

    return-void
.end method

.method protected onFlickUpAnimation()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->stopAnimation()V

    .line 100
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public requestHideEffectView()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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

    .line 112
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

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

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEffectColors([I)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz p1, :cond_0

    .line 44
    iget p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mConvertColor:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->setPaintColor(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->stopAnimation()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mIsShowMorphView:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->startAnimation()V

    .line 62
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    return-void
.end method

.method protected startToastPopupAnimation()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->startAnimation()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;->mEchoEffectView:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->startAnimation()V

    :cond_0
    return-void
.end method
