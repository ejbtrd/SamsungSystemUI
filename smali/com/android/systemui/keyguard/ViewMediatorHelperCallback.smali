.class public interface abstract Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;
.super Ljava/lang/Object;
.source "ViewMediatorHelperCallback.java"


# virtual methods
.method public abstract adjustStatusBarLocked()V
.end method

.method public abstract doKeyguardLocked(Landroid/os/Bundle;)V
.end method

.method public abstract getLockTimeout(I)J
.end method

.method public abstract handleHide()V
.end method

.method public abstract hasPendingLock()Z
.end method

.method public abstract increaseDelayedShowingSeq()V
.end method

.method public abstract isAodShowing()Z
.end method

.method public abstract isExternallyEnabled()Z
.end method

.method public abstract isGoingToSleep()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isWakeAndUnlocking()Z
.end method

.method public abstract notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
.end method

.method public abstract playSound(I)V
.end method

.method public abstract removeShowMsg()V
.end method

.method public abstract resetPendingLock()V
.end method

.method public abstract resetPendingReset()V
.end method

.method public abstract resetStateLocked()V
.end method

.method public abstract setCustomMessage(Ljava/lang/String;)V
.end method

.method public abstract setHiding(Z)V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract tryKeyguardDone()V
.end method

.method public abstract updatePhoneState(Ljava/lang/String;)Ljava/lang/String;
.end method
