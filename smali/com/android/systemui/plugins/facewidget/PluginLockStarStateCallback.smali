.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginLockStarStateCallback;
.super Ljava/lang/Object;
.source "PluginLockStarStateCallback.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public onClockChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    return-void
.end method

.method public onFaceWidgetChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    return-void
.end method

.method public onLockStarEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    return-void
.end method

.method public onMusicChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f9
    .end annotation

    return-void
.end method

.method public onUiInfoRequested()Landroid/os/Bundle;
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f9
    .end annotation

    .line 24
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public onViewModeChanged(I)V
    .locals 0
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f3
    .end annotation

    return-void
.end method
