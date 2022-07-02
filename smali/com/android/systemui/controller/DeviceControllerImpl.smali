.class public Lcom/android/systemui/controller/DeviceControllerImpl;
.super Ljava/lang/Object;
.source "DeviceControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private signal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceControllerImpl"

    .line 34
    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->signal:Landroid/os/CancellationSignal;

    return-void
.end method

.method private isNeedSecureConfirm(Landroid/content/ContentResolver;)Z
    .locals 4

    .line 62
    iget-object p0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result p0

    const-string v0, "power_off_lock_option"

    const/4 v1, 0x1

    .line 63
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 64
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRMMLocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsPowerOffUnLocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceControllerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private isScreenRotationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isSupportPowerOffLock()Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_SupportPowerOffLock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTabletDevice()Z
    .locals 1

    const-string/jumbo p0, "ro.build.characteristics"

    .line 69
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "tablet"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAutoRotate(Landroid/content/Context;Z)I
    .locals 1

    .line 198
    const-class p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz p0, :cond_1

    .line 201
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    const-string p0, "DeviceControllerImpl"

    const-string p1, "AutoRotate set is already applied"

    .line 202
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    xor-int/lit8 p1, p2, 0x1

    .line 205
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private setFlashlight(Z)I
    .locals 2

    const-string p0, "DeviceControllerImpl"

    const-string/jumbo v0, "setFlashlight"

    .line 151
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->hasFlashlight()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p1, "setFlashlight - FlashLight not supported"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz v0, :cond_4

    .line 157
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 158
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 162
    :cond_3
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private setOrientationMode(Landroid/content/Context;I)I
    .locals 4

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/controller/DeviceControllerImpl;->isScreenRotationSupported()Z

    move-result p0

    const/4 v0, -0x1

    const-string v1, "DeviceControllerImpl"

    if-nez p0, :cond_0

    const-string/jumbo p0, "screen rotation is not supported so can\'t change rotation"

    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 230
    :cond_0
    const-class p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz p0, :cond_5

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const-string p0, "Already set as portrait mode"

    .line 235
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    if-eqz p1, :cond_3

    if-ne p2, v3, :cond_3

    const-string p0, "Already set as landscape mode"

    .line 238
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 241
    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    .line 242
    :goto_1
    invoke-interface {p0, v3, p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "set as orientation = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method


# virtual methods
.method public MicOff(Landroid/content/Context;)I
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string v0, "MicOff"

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "audio"

    .line 278
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 279
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    const/4 p0, 0x3

    return p0
.end method

.method public MicOn(Landroid/content/Context;)I
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string v0, "MicOn"

    .line 263
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "audio"

    .line 265
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 266
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 270
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    const/4 p0, 0x3

    return p0
.end method

.method public restartDevice(Landroid/content/Context;)V
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string/jumbo p1, "restartDevice"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "statusbar"

    .line 127
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->rebootByBixby(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "reboot RemoteException "

    .line 134
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setLandscapeMode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "setLandscapeMode"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setOrientationMode(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public setPortraitMode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "setPortraitMode"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setOrientationMode(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public turnOffAutoRotate(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOffAutoRotate"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setAutoRotate(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public turnOffDevice(Landroid/content/Context;)V
    .locals 5

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOffDevice"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    .line 78
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->signal:Landroid/os/CancellationSignal;

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->signal:Landroid/os/CancellationSignal;

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    invoke-direct {v3, p1}, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_2

    .line 87
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "isFMMLocked = true"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/controller/DeviceControllerImpl;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x104055b

    goto :goto_0

    :cond_3
    const v0, 0x104055a

    .line 96
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    new-instance v2, Lcom/android/systemui/controller/DeviceControllerImpl$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/controller/DeviceControllerImpl$1;-><init>(Lcom/android/systemui/controller/DeviceControllerImpl;Landroid/content/Context;I)V

    const-wide/16 p0, 0x0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    const-string p1, "isFMMLocked = false"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/controller/DeviceControllerImpl;->isSupportPowerOffLock()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/controller/DeviceControllerImpl;->isNeedSecureConfirm(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "init BiometricPrompt"

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    const/4 v0, 0x1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->initPrompt(Ljava/lang/String;Z)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->mBiometricPromptWrapperBixby:Lcom/android/systemui/controller/BiometricPromptWrapperBixby;

    iget-object p0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->buildAndRun(Landroid/os/CancellationSignal;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 115
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->shutdownByBixby()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "shutdown RemoteException "

    .line 118
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public turnOffFlash(Landroid/content/Context;)I
    .locals 1

    const-string p1, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOffFlash"

    .line 146
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result p0

    return p0
.end method

.method public turnOffScreen(Landroid/content/Context;)V
    .locals 2

    const-string p0, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOffScreen"

    .line 172
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "power"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public turnOnAutoRotate(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOnAutoRotate"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/controller/DeviceControllerImpl;->isScreenRotationSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "screen rotation is not supported so can\'t turn on"

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setAutoRotate(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public turnOnFlash(Landroid/content/Context;)I
    .locals 1

    const-string p1, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOnFlash"

    .line 140
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result p0

    return p0
.end method
