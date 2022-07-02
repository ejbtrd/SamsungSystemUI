.class Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetKeyguardUpdateMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FaceWidgetKeyguardUpdateMonitorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricAcquired()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthFailed()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthenticated(IZ)V

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;)V

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;)V

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(Z)V

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    return-void
.end method

.method public onEmergencyStateChanged(I)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onFailedUnlockAttemptChanged()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onLocaleChanged()V

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onLockModeChanged()V

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    return-void
.end method

.method public onOwnerInfoChanged()V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onOwnerInfoChanged()V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onRefreshBatteryInfo()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    return-void
.end method

.method public onRemoteLockInfoChanged()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onRemoteLockInfoChanged()V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onSecurityViewChanged()V

    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onSetBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTimeChanged()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUpdateCoverState(Z)V

    return-void
.end method

.method public onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdateFaceWidgetRemoteViews(Landroid/content/Intent;)V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUpdateFaceWidgetRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitorCallback;->onUserUnlocked()V

    return-void
.end method
