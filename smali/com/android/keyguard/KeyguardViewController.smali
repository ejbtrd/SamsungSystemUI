.class public interface abstract Lcom/android/keyguard/KeyguardViewController;
.super Ljava/lang/Object;
.source "KeyguardViewController.java"


# virtual methods
.method public abstract blockPanelExpansionFromCurrentTouch()V
.end method

.method public abstract bouncerIsOrWillBeShowing()Z
.end method

.method public abstract dismiss()V
.end method

.method public abstract dismissAndCollapse()V
.end method

.method public abstract dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;ZZ)V
.end method

.method public abstract folderOpenAndDismiss()V
.end method

.method public abstract getViewRootImpl()Landroid/view/ViewRootImpl;
.end method

.method public abstract hide(JJ)V
.end method

.method public abstract isBouncerShowing()Z
.end method

.method public abstract isGoingToNotificationShade()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract isPanelFullyCollapsed()Z
.end method

.method public abstract isRemoteLockMode()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isUnlockWithWallpaper()Z
.end method

.method public abstract keyguardGoingAway()V
.end method

.method public abstract notifyKeyguardAuthenticated(Z)V
.end method

.method public abstract onCancelClicked()V
.end method

.method public abstract onDismissCancelled()V
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onWakeAndUnlock()V
.end method

.method public abstract reset(Z)V
.end method

.method public abstract resetBouncer()V
.end method

.method public abstract setKeyguardGoingAwayState(Z)V
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract setOccluded(ZZ)V
.end method

.method public abstract setShowSwipeBouncer(Z)V
.end method

.method public abstract shouldDisableWindowAnimationsForUnlock()Z
.end method

.method public abstract shouldSubtleWindowAnimationsForUnlock()Z
.end method

.method public abstract show(Landroid/os/Bundle;)V
.end method

.method public abstract showBouncer()V
.end method

.method public abstract showBouncer(Z)V
.end method

.method public abstract startPreHideAnimation(Ljava/lang/Runnable;)V
.end method
