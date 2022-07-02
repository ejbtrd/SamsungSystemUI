.class public Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;
.super Ljava/lang/Object;
.source "ExternalClockProvider.java"


# instance fields
.field private mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceRefresh(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->forceRefresh(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getClockGroup(I)I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->getClockGroup(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getClockView(I)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultClockType()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->getDefaultClockType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getLockClockType()I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->getLockClockType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginClockProvider;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    return-void
.end method

.method public isStartAlignClock(I)Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->isStartAlignClock(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V

    :cond_0
    return-void
.end method

.method public setAdaptiveColors(Landroid/view/View;[I)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->setAdaptiveColors(Landroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method public setClockType(I)Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->setClockType(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setColorThemeAdaptiveColor(Landroid/view/View;IZ)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->setColorThemeAdaptiveColor(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public setPreDefineOrCustomColor(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->setPreDefineOrCustomColor(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public unregisterClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    if-eqz p0, :cond_0

    .line 38
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V

    :cond_0
    return-void
.end method
