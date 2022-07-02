.class public interface abstract Lcom/android/systemui/knox/KnoxStateMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# virtual methods
.method public abstract checkSdpCondition(I)Z
.end method

.method public abstract clearFailedUnlockAttempts(I)V
.end method

.method public abstract filterOutForKnoxContainer(ILjava/lang/String;Z)Z
.end method

.method public abstract getBatteryLevelColourItem()[I
.end method

.method public abstract getContainerIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInnerAuthUserId(I)I
.end method

.method public abstract getKnoxSanitizedText(I)Ljava/lang/String;
.end method

.method public abstract getLockDelay()I
.end method

.method public abstract getLockoutAttemptDeadline(I)J
.end method

.method public abstract getMainUserId(I)I
.end method

.method public abstract getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;
.end method

.method public abstract getProfileIconForKnox(I)I
.end method

.method public abstract getQuickPanelItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuickPanelUnavailableButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusBarText()Ljava/lang/String;
.end method

.method public abstract getStatusBarTextSize()I
.end method

.method public abstract getStatusBarTextStyle()I
.end method

.method public abstract getStatusBarTextWidth()I
.end method

.method public abstract getUnlockSimPin()Ljava/lang/String;
.end method

.method public abstract isAdminLockEnabled()Z
.end method

.method public abstract isAirplaneModeTileBlocked()Z
.end method

.method public abstract isBatteryNotificationEnabled()Z
.end method

.method public abstract isBlockedEdmSettingsChange()Z
.end method

.method public abstract isBlueLightFilterTileBlocked()Z
.end method

.method public abstract isBluetoothTileBlocked()Z
.end method

.method public abstract isBrightnessBlocked()Z
.end method

.method public abstract isBrightnessControllerEnabled()Z
.end method

.method public abstract isCarrierTextEnabled()Z
.end method

.method public abstract isCellularDataAllowed()Z
.end method

.method public abstract isChargerConnectionSoundEnabledState()Z
.end method

.method public abstract isDeviceDisabledForMaxFailedAttempt()Z
.end method

.method public abstract isDisableDeviceByMultifactor()Z
.end method

.method public abstract isDndTileBlocked()Z
.end method

.method public abstract isDualDarDeviceOwner(I)Z
.end method

.method public abstract isDualDarInnerLayerUnlocked(I)Z
.end method

.method public abstract isFaceRecognitionDisabledByMdm()Z
.end method

.method public abstract isFlashlightTileBlocked()Z
.end method

.method public abstract isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
.end method

.method public abstract isLegacyContainer(Landroid/content/pm/UserInfo;)Z
.end method

.method public abstract isLicenseExpired()Z
.end method

.method public abstract isLocationTileBlocked()Z
.end method

.method public abstract isLockScreenDisabledbyKNOX()Z
.end method

.method public abstract isLockScreenDisabledbyKNOXForBoot()Z
.end method

.method public abstract isLockscreenAllDisabled()Z
.end method

.method public abstract isLockscreenBatteryInfoEnabled()Z
.end method

.method public abstract isLockscreenClockEnabled()Z
.end method

.method public abstract isLockscreenDateEnabled()Z
.end method

.method public abstract isLockscreenHelpTextEnabled()Z
.end method

.method public abstract isLockscreenOwnerInfoEnabled()Z
.end method

.method public abstract isMDMWallpaperEnabled()Z
.end method

.method public abstract isManagedProfileForKnox(I)Z
.end method

.method public abstract isMobileDataTileBlocked()Z
.end method

.method public abstract isMultifactorAuthEnforced()Z
.end method

.method public abstract isNavigationBarHidden()Z
.end method

.method public abstract isPanelExpandEnabled()Z
.end method

.method public abstract isPasswordVisibilityEnabled()Z
.end method

.method public abstract isPersona(I)Z
.end method

.method public abstract isPwdChangeRequested()Z
.end method

.method public abstract isQuickSettingEditEnabled()Z
.end method

.method public abstract isRoamingAllowed()Z
.end method

.method public abstract isRotationLockTileBlocked()Z
.end method

.method public abstract isSecondaryLockRequired(I)Z
.end method

.method public abstract isSetToSwipeLock()Z
.end method

.method public abstract isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
.end method

.method public abstract isSoundModeTileBlocked()Z
.end method

.method public abstract isStatusBarDoubleTapEnabled()Z
.end method

.method public abstract isStatusBarHidden()Z
.end method

.method public abstract isStatusBarIconsEnabled()Z
.end method

.method public abstract isSubIdLockedByMDM()Z
.end method

.method public abstract isSubIdLockedByMDM(I)Z
.end method

.method public abstract isUnlockSimOnBootState()Z
.end method

.method public abstract isUserMobileDataRestricted()Z
.end method

.method public abstract isUserWifiHotspotRestricted()Z
.end method

.method public abstract isUsersEnabled()Z
.end method

.method public abstract isVirtualUserId(I)Z
.end method

.method public abstract isVolumeDialogEnabled()Z
.end method

.method public abstract isWifiHotspotTileBlocked()Z
.end method

.method public abstract isWifiTileBlocked()Z
.end method

.method public abstract knoxContainerInSuperLockMode(I)Z
.end method

.method public abstract lockSdp()V
.end method

.method public abstract registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
.end method

.method public abstract setAdminLock(ZZ)V
.end method

.method public abstract setLockoutAttemptDeadline(II)J
.end method

.method public abstract unlockSdp(Z)V
.end method

.method public abstract updateFailedUnlockAttemptForDeviceDisabled()V
.end method

.method public abstract updateFailedUnlockAttemptForProfileDisabled()V
.end method
