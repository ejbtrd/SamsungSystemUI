.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "PluginKeyguardUpdateMonitor.java"


# virtual methods
.method public abstract dispatchFaceWidgetFullScreenMode(Z)V
.end method

.method public abstract getCurrentUser()I
.end method

.method public abstract isDeviceInteractive()Z
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isEnabledBioUnlock()Z
.end method

.method public abstract isFMMLock()Z
.end method

.method public abstract isFingerprintOptionEnabled()Z
.end method

.method public abstract isKeyguardUnlocking()Z
.end method

.method public abstract isKeyguardVisible()Z
.end method

.method public abstract isRemoteLock()Z
.end method

.method public abstract isSystemUser()Z
.end method

.method public abstract isUnlockWithFingerprintPossible(I)Z
.end method

.method public abstract isUserUnlocked()Z
.end method

.method public abstract registerCallback(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V
.end method
