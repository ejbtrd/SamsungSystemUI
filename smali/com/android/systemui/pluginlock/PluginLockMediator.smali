.class public interface abstract Lcom/android/systemui/pluginlock/PluginLockMediator;
.super Ljava/lang/Object;
.source "PluginLockMediator.java"


# virtual methods
.method public abstract getCurrentScreenType()I
.end method

.method public abstract getDynamicLockData()Ljava/lang/String;
.end method

.method public abstract getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.end method

.method public abstract getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
.end method

.method public abstract getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.end method

.method public abstract getSecureMode()I
.end method

.method public abstract goToLockedShade()V
.end method

.method public abstract isFbeAvailable()Z
.end method

.method public abstract isHomeWallpaperRequired(I)Z
.end method

.method public abstract isRotateMenuHide()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isWindowSecured()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract onAodTransitionEnd()V
.end method

.method public abstract onBarStateChanged()V
.end method

.method public abstract onBarStateChanged(I)V
.end method

.method public abstract onDataCleared()V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onEventReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onFolderStateChanged(ZZ)V
.end method

.method public abstract onHomeWallpaperChanged(I)V
.end method

.method public abstract onRootViewAttached(Landroid/view/ViewGroup;)V
.end method

.method public abstract onRootViewDetached()V
.end method

.method public abstract onUserActivity()V
.end method

.method public abstract onViewModeChanged(I)V
.end method

.method public abstract onWallpaperChanged(I)V
.end method

.method public abstract recoverItem(I)V
.end method

.method public abstract registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
.end method

.method public abstract registerUpdateMonitor()V
.end method

.method public abstract registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V
.end method

.method public abstract removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
.end method

.method public abstract requestDismissKeyguard(Landroid/content/Intent;)V
.end method

.method public abstract resetConfigs()V
.end method

.method public abstract resetDynamicLock()V
.end method

.method public abstract resetDynamicLockData(Z)V
.end method

.method public abstract resetItem(IZ)V
.end method

.method public abstract setDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
.end method

.method public abstract setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
.end method

.method public abstract setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V
.end method

.method public abstract setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V
.end method

.method public abstract setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
.end method

.method public abstract setLockscreenEnabled(Z)V
.end method

.method public abstract setLockscreenTimer(J)V
.end method

.method public abstract setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
.end method

.method public abstract setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
.end method

.method public abstract setPluginWallpaper(IIILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaper(IILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaperHint(ILjava/lang/String;)V
.end method

.method public abstract setPluginWallpaperHint(Ljava/lang/String;)V
.end method

.method public abstract setPluginWallpaperState(II)V
.end method

.method public abstract setQsExpansion(F)V
.end method

.method public abstract setScreenOrientation(ZZ)V
.end method

.method public abstract unregisterUpdateMonitor()V
.end method

.method public abstract updateBiometricRecognition(Z)V
.end method

.method public abstract updateDynamicLockData(Ljava/lang/String;)V
.end method

.method public abstract updateOverlayUserTimeout(Z)V
.end method

.method public abstract updateWindowSecureState(Z)V
.end method
