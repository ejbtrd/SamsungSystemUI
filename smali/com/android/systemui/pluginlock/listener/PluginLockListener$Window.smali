.class public interface abstract Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;
.super Ljava/lang/Object;
.source "PluginLockListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/listener/PluginLockListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Window"
.end annotation


# virtual methods
.method public abstract onScreenOrientationChangeRequired(Z)V
.end method

.method public abstract onScreenTimeoutChanged(J)V
.end method

.method public abstract onViewModeChanged(I)V
.end method

.method public abstract updateBiometricRecognition(Z)V
.end method

.method public abstract updateOverlayUserTimeout(Z)V
.end method

.method public abstract updateWindowSecureState(Z)V
.end method
