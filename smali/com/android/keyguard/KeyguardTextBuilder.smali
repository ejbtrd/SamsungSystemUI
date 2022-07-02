.class public Lcom/android/keyguard/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;,
        Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;,
        Lcom/android/keyguard/KeyguardTextBuilder$Security;,
        Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/KeyguardTextBuilder;


# instance fields
.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 145
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 147
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 149
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "tablet"

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardTextBuilder;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardTextBuilder;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardTextBuilder;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthPopupSize()I

    move-result p0

    return p0
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 5

    .line 444
    iget v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    iget p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 446
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 445
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 448
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getBiometricSecurityLevel()Ljava/lang/String;
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 627
    sget-object p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->getType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 628
    :cond_1
    sget-object p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->getType()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;
    .locals 1

    .line 153
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 156
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    return-object p0
.end method

.method private getStrongAuthPopupSize()I
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 635
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 636
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 639
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    if-eqz v1, :cond_2

    .line 640
    sget p0, Lcom/android/systemui/R$dimen;->kg_strong_auth_timeout_popup_size_tablet:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 641
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 642
    sget p0, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    int-to-float p0, v2

    if-eqz v3, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    const v0, 0x3f6147ae    # 0.88f

    :goto_1
    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private updateCurrentState(Z)V
    .locals 6

    .line 454
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 456
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isBiometricErrorLockoutPermanent()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 458
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    .line 461
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType(I)I

    move-result v4

    if-nez v1, :cond_2

    and-int/lit8 v5, v4, 0x1

    if-ne v5, v3, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 462
    :goto_2
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v1, :cond_3

    const/16 v1, 0x100

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 464
    :goto_3
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_d

    if-eqz v5, :cond_4

    .line 468
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 469
    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    .line 470
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 471
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_5

    :cond_5
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    .line 474
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 475
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 476
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    .line 479
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 480
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    .line 483
    :cond_8
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_9

    if-eqz v1, :cond_a

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 484
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 485
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    goto :goto_7

    .line 481
    :cond_b
    :goto_6
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    move v2, v3

    :cond_c
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    .line 489
    :cond_d
    :goto_7
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    const-string v0, "none"

    if-eqz p1, :cond_e

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v1, :cond_e

    .line 490
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    :cond_e
    if-eqz p1, :cond_f

    .line 492
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    .line 493
    :cond_f
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_10

    .line 494
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    .line 496
    :cond_10
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    .line 499
    :goto_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDismissActionExist()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 500
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v3, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    .line 518
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 514
    :cond_11
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 511
    :cond_12
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 508
    :cond_13
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 505
    :cond_14
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 502
    :cond_15
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    .line 522
    :cond_16
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method private updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 527
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 536
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 532
    :cond_0
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 529
    :cond_1
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 8

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;

    move-result-object p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x10403e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v2

    const-string v3, "none"

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 189
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_use_biometrics_first:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    if-ne v2, v4, :cond_4

    .line 191
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_use_fingerprint_first:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 197
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v0, :cond_8

    .line 199
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 200
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 201
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 202
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, p1

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 209
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v6

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 207
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 203
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v3, v2, p1

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 205
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v2, v5

    .line 203
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 212
    :cond_8
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 213
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 214
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 215
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    .line 222
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object p1, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v6

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 223
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 220
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 216
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v4, v2, p1

    aput-object v3, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v2, v5

    .line 216
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 226
    :cond_b
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 227
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 228
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 229
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    .line 233
    :cond_c
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 234
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_finger_print_template_changed_error_message:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_d
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v0, :cond_e

    .line 237
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    .line 238
    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_biometric_security_active_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v2, v6

    .line 238
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 230
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object p1, v2, v7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v2, v6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v2, v5

    .line 230
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 242
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    .line 245
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 247
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find default string id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-object v1
.end method

.method public getFPFailedAttemptGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;
    .locals 7

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$plurals;->kg_secure_attempts_to_unlock_with_fingerprints:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 420
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_SIDE:Z

    if-eqz p2, :cond_0

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->kg_secure_press_side_key:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 423
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->kg_secure_press_power_key:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 427
    :cond_1
    sget-object p3, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    if-eq p2, v3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    .line 436
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_secure_enter_password_instead:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_secure_draw_pattern_instead:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 429
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_secure_enter_pin_instead:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 439
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 8

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v0, 0x10403e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x1

    .line 274
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "none"

    if-eq p2, p1, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    const/4 v0, 0x7

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    return-object v1

    .line 291
    :cond_2
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    .line 292
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz p2, :cond_7

    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    goto :goto_2

    .line 287
    :cond_3
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_1

    .line 295
    :cond_4
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_2

    .line 283
    :cond_5
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_6
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    :cond_7
    :goto_1
    move-object v0, v4

    .line 301
    :goto_2
    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez p2, :cond_9

    sget-object p2, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 302
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    .line 308
    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v7, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    aput-object v0, v6, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v6, v3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    aput-object p1, v6, v2

    .line 308
    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 303
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v0, v5

    aput-object v4, v0, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v0, v2

    .line 303
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 313
    :goto_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {p2, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 316
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 318
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find prompt string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v1
.end method

.method public getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 5

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    .line 605
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x1

    .line 606
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 608
    sget v2, Lcom/android/systemui/R$string;->kg_device_biometric_security_level_instructions:I

    .line 609
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v1, v3, p1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 611
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getBiometricSecurityLevel()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v3, v1

    .line 608
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 613
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 616
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 618
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find strong auth timeout string id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 11

    const-string v0, "1"

    const-string v1, "none"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 395
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_warning_device_attempt_remaining_auto_wipe:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v3, v6, v2

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 398
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "string"

    .line 398
    invoke-virtual {v6, v5, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 402
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 404
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 406
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 407
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {p0, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 409
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {p0, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 412
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find the warning on auto wipe string id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 368
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 369
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->kg_device_security_remaining_frp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 369
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    .line 372
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 378
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find warning frp string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 339
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 340
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->kg_device_security_remaining_reactivation:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 345
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 347
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find warning reactivation string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public updateStrongAuthTimeoutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 544
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "%1$s"

    .line 545
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%2$s"

    .line 546
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ltz v1, :cond_2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 551
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 552
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 553
    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 554
    new-instance p2, Lcom/android/keyguard/KeyguardTextBuilder$1;

    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder$1;-><init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/16 p0, 0x21

    invoke-virtual {v0, p2, v1, v2, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0

    .line 548
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unnecessary to update this message : promptReasonString = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
