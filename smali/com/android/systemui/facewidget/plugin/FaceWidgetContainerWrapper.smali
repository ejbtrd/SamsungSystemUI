.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetContainerWrapper.java"

# interfaces
.implements Lcom/android/systemui/facewidget/KeyguardStatusBase;


# instance fields
.field private mClockContainer:Landroid/view/View;

.field private mContentsContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFaceWidgetContainer:Landroid/view/View;

.field private mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public dozeTimeTick()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 290
    const-class p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    return-object p0
.end method

.method public getContentsContainers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentClockType()I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 218
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getCurrentClockType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    const p0, 0x7fffffff

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 105
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, p0

    return v1
.end method

.method public getLastLockClockType()I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 313
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getLastLockClockType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinTopMargin(Z)I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->getCurrentClockType()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getMinTopMargin(IZ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getVisibility()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 47
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public isInContentBounds(F)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 195
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->isInContentBounds(F)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaOutputRemoteviewsVisible()Z
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 275
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->isMediaOutputRemoteviewsVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 141
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestAODState(ZZ)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 334
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->requestAODState(ZZ)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method public setExpandState(ZI)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->setExpandState(ZI)V

    :cond_0
    return-void
.end method

.method public setMediaOutputVisibility(Z)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 284
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->setMediaOutputVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 1

    .line 252
    const-class p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez p0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getKeyguardStatusCallback()Lcom/android/systemui/plugins/facewidget/PluginKeyguardStatusCallback;

    move-result-object p0

    .line 258
    instance-of v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    if-eqz v0, :cond_1

    .line 259
    check-cast p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->setKeyguardStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    :cond_1
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 340
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->setTouchEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showFaceWidgetDashBoard()V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->showFacewidgetDashBoard()V

    :cond_0
    return-void
.end method
