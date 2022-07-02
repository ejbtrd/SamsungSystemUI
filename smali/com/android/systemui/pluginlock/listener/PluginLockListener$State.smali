.class public interface abstract Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;
.super Ljava/lang/Object;
.source "PluginLockListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/listener/PluginLockListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "State"
.end annotation


# virtual methods
.method public getMaxKeyguardNotifications(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public goToLockedShade()V
    .locals 0

    return-void
.end method

.method public isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 0

    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onClockChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLockStarEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onMusicChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPluginLockReset()V
    .locals 0

    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUnNeedLockAppStarted(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onUserActivity()V
    .locals 0

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 0

    return-void
.end method

.method public resetDynamicLock()V
    .locals 0

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 0

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
