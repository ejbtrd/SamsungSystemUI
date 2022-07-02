.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetPluginLockManagerWrapper.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceWidgetLockStarStateCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    return-void
.end method

.method public onClockChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;->onClockChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onLockStarEnabled(Z)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;->onLockStarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onMusicChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;->onMusicChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;->onUiInfoRequested()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public onViewModeChanged(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;

    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method
