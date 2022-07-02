.class public interface abstract Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;
.super Ljava/lang/Object;
.source "KeyguardSecUpdateMonitorBase.java"


# virtual methods
.method public addAdditionalLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addMaskViewForOpticalFpSensor()V
    .locals 0

    return-void
.end method

.method public checkSimState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clearESimRemoved()V
    .locals 0

    return-void
.end method

.method public dispatchCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public dispatchDlsBiometricMode(Z)V
    .locals 0

    return-void
.end method

.method public dispatchDlsViewMode(I)V
    .locals 0

    return-void
.end method

.method public dispatchDualDarInnerLockScreenState(IZ)V
    .locals 0

    return-void
.end method

.method public dispatchForceStartFingerprint()V
    .locals 0

    return-void
.end method

.method public dispatchSecureLockUpdate()V
    .locals 0

    return-void
.end method

.method public dispatchSecureState(I)V
    .locals 0

    return-void
.end method

.method public dispatchStartedEarlyWakingUp(I)V
    .locals 0

    return-void
.end method

.method public dispatchStartedWakingUp(I)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;I)V
    .locals 0

    return-void
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCredentialTypeForUser(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 387
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getDedicatedFingerprintFlag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFaceMsgDispatcher()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFailedBiometricUnlockAttempts(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFpMsgDispatcher()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPluginAODManager()Lcom/android/systemui/doze/PluginAODManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecLockoutBiometricAttemptDeadline()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleLockDisabledChanged()V
    .locals 0

    return-void
.end method

.method public handleLockModeChanged()V
    .locals 0

    return-void
.end method

.method public handleOwnerInfoChanged()V
    .locals 0

    return-void
.end method

.method public handleSecMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public isBiometricErrorLockoutPermanent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCarrierLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCoverClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDismissActionExist()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDarInnerAuthRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDarInnerAuthShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualDisplayPolicyAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDynamicLockViewMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isESimEmbedded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isESimRemoveButtonClicked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEarlyWakeUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFMMLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFpStopRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIccBlockedPermanently()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLockscreenDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMaxFailedBiometricUnlockAttemptsShort(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedsDeviceDreaming()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPossibleWakeup(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenOffMemoRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimDisabledPermanently()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTableMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeSlowLogEnable()V
    .locals 0

    return-void
.end method

.method public notifySimStateInitInfo()V
    .locals 0

    return-void
.end method

.method public registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    return-void
.end method

.method public removeESim(I)V
    .locals 0

    return-void
.end method

.method public removeMaskViewForOpticalFpSensor()V
    .locals 0

    return-void
.end method

.method public reportFailedBiometricUnlockAttempt(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestFingerprintAuth(Z)V
    .locals 0

    return-void
.end method

.method public sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public setBiometricId(I)V
    .locals 0

    return-void
.end method

.method public setDismissActionExist(Z)V
    .locals 0

    return-void
.end method

.method public setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    return-void
.end method

.method public setFaceAuthenticated(Z)V
    .locals 0

    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setupLocked()V
    .locals 0

    return-void
.end method

.method public startMonitoring()V
    .locals 0

    return-void
.end method

.method public updateBatteryState(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateBiometricsOptionState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateCarrierLock(IZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateDualDARInnerLockscreenRequirement(I)V
    .locals 0

    return-void
.end method

.method public updateFMMLock(IZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateLockscreenDisabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateOwnerInfoState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateSecureLockState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateUserUnlockNotification(I)V
    .locals 0

    return-void
.end method
