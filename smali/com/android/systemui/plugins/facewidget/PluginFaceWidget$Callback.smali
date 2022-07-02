.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginFaceWidget$Callback;
.super Ljava/lang/Object;
.source "PluginFaceWidget.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract applyBlur(F)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x404
    .end annotation
.end method

.method public abstract applyBlur(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x406
    .end annotation
.end method

.method public abstract canBeSkipOnWakeAndUnlock()Z
.end method

.method public abstract getAODClockView(Z)Landroid/view/View;
.end method

.method public abstract getAODZigzagPosition()Landroid/graphics/Point;
.end method

.method public abstract getAdaptiveColorResult()[I
.end method

.method public abstract getDisplayLifeCycle()Lcom/android/systemui/plugins/facewidget/PluginDisplayLifeCycle;
.end method

.method public abstract getFloatingShortcutRotation()I
.end method

.method public abstract getHomeCityTimeZoneDeviceProvisionedFromPrefs()Ljava/lang/String;
.end method

.method public abstract getInDisplayFingerprintHeight()I
.end method

.method public abstract getInDisplayFingerprintImageSize()I
.end method

.method public abstract getKeyguardStatusCallback()Lcom/android/systemui/plugins/facewidget/PluginKeyguardStatusCallback;
.end method

.method public abstract getKeyguardUpdateMonitor()Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitor;
.end method

.method public abstract getKnoxStateMonitor()Lcom/android/systemui/plugins/facewidget/PluginKnoxStateMonitor;
.end method

.method public abstract getLockPatternUtils()Lcom/android/systemui/plugins/facewidget/PluginLockPatternUtils;
.end method

.method public abstract getNavigationBarHeight()I
.end method

.method public abstract getNotificationControllerCallback()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController$Callback;
.end method

.method public abstract getNotificationPanelViewHeight()I
.end method

.method public abstract getPluginLockManager()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetLockManager;
.end method

.method public abstract getSystemUIPluginVersion()I
.end method

.method public abstract getWallpaperUtils()Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;
.end method

.method public abstract hasAdaptiveColorResult()Z
.end method

.method public abstract isBlurSupported()Z
.end method

.method public abstract isCMASSupported()Z
.end method

.method public abstract isCapturedBlurSupported()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x404
    .end annotation
.end method

.method public abstract isInDisplayFingerprintSupported()Z
.end method

.method public abstract isLockScreenDisabled()Z
.end method

.method public abstract isMultiSimSupported()Z
.end method

.method public abstract isNoLockIcon()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f5
    .end annotation
.end method

.method public abstract isOpenThemeSupported()Z
.end method

.method public abstract isPresidentialCMASSupported()Z
.end method

.method public abstract isSubDisplay()Z
.end method

.method public abstract isUIBiometricsSupported()Z
.end method

.method public abstract isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
.end method

.method public abstract isWiFiOnlyDevice()Z
.end method

.method public abstract onClockPageTransitionEnded()V
.end method

.method public abstract putHomeCityTimeZoneDeviceProvisionedToPrefs(Ljava/lang/String;)V
.end method

.method public abstract putHomeCityTimeZoneSetToPrefs(Ljava/lang/String;)V
.end method

.method public abstract sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x403
    .end annotation
.end method

.method public abstract sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x403
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldEnableKeyguardScreenRotation()Z
.end method

.method public abstract updateAnimateScreenOff()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x401
    .end annotation
.end method

.method public abstract updateFaceWidgetArea()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f7
    .end annotation
.end method

.method public abstract updateNIOShortcutFingerPrintVisibility(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x408
    .end annotation
.end method
