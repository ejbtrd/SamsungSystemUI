.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.source "KeyguardSecIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecKeyguardCallback"
.end annotation


# instance fields
.field private mLastSuccessiveErrorMessage:I

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public static synthetic $r8$lambda$b2Q-yhRyUwJM1bm9rjMlPZyucHs(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->lambda$onBiometricHelp$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wA9nD7YB3uXcBYWU4_mckZdt0Z4(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->lambda$onBiometricRunningStateChanged$1()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method

.method private getBiometricErrorGuideText(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)Ljava/lang/CharSequence;
    .locals 0

    .line 721
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return-object p2

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$onBiometricHelp$0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_fingerprint_retry_notification:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLeave()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBiometricRunningStateChanged$1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    .line 748
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 751
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object p1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_face_no_match:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 732
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 733
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 734
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 735
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 739
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    .line 743
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 9

    .line 675
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 676
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressBiometricError(ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto/16 :goto_1

    .line 686
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    if-eq p3, p1, :cond_9

    .line 687
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 692
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DUAL_LCD_FOLDER:Z

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 693
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 695
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v1, :cond_4

    .line 696
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto/16 :goto_1

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 699
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v2, :cond_5

    .line 700
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 702
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object p3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    move-object v3, p3

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 703
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p2, v0, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    goto :goto_0

    .line 704
    :cond_5
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v1, :cond_7

    .line 705
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSideFingerprintSupported()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isRearFingerprintSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 706
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    goto :goto_0

    .line 708
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->getBiometricErrorGuideText(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)Ljava/lang/CharSequence;

    move-result-object v3

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 710
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_1

    .line 713
    :cond_8
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, v0, :cond_9

    .line 714
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    .line 717
    :cond_9
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 11

    .line 599
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, v0, :cond_0

    return-void

    .line 602
    :cond_0
    const-class p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    .line 603
    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 607
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_4

    .line 608
    :cond_2
    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result p3

    if-nez p3, :cond_e

    const/4 p3, 0x2

    if-eq p1, v0, :cond_9

    if-eq p1, p3, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_3

    :goto_0
    move-object v6, p2

    goto :goto_1

    .line 632
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_tsp_block:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 629
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_light:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 626
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_too_wet:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 623
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_too_fast:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 620
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_image_dirty:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 617
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_insufficient:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 614
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_partial:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 635
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 636
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_a

    if-ne p2, p3, :cond_a

    goto :goto_3

    .line 641
    :cond_a
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p3

    if-eqz p3, :cond_b

    if-nez p2, :cond_b

    .line 642
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 643
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_3

    .line 644
    :cond_b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSideFingerprintSupported()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isRearFingerprintSupported()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_2

    .line 647
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object p2

    const-wide/16 v7, 0xbb8

    const/4 v9, 0x0

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 648
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p3, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_3

    .line 645
    :cond_d
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :goto_3
    if-ne p1, v2, :cond_e

    .line 651
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 652
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isMaxFailedBiometricUnlockAttemptsShort()Z

    move-result p1

    if-nez p1, :cond_e

    .line 653
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    const-wide/16 p1, 0x3e8

    .line 654
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 655
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 654
    invoke-static {p1, p2, p3, v0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 655
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 669
    :cond_e
    :goto_4
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 764
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    const-string v2, ""

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 767
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_2

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto :goto_0

    .line 771
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 774
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 p1, 0x64

    .line 777
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;)V

    .line 778
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 7

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 574
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    .line 576
    sget-object v4, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLockModeChanged - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 579
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v6, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V

    :cond_0
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1302(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 592
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 527
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    .line 528
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 8

    .line 553
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 556
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1302(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 557
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, ""

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :cond_1
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .line 568
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    .line 546
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p1

    if-nez p1, :cond_0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method
