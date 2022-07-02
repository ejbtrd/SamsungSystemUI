.class Lcom/android/keyguard/KeyguardSecPatternViewController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 728
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 730
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reset()V

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 716
    sget-object p1, Lcom/android/keyguard/KeyguardSecPatternViewController$7;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 720
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 743
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 744
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$602(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2302(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z

    .line 708
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 709
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    :cond_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 765
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onSimulationFailToUnlock(I)V
    .locals 6

    .line 779
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/vibrate/VibrationUtil;

    move-result-object v0

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 785
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 786
    rem-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 v2, 0x7530

    goto :goto_0

    :cond_1
    move v2, v3

    .line 787
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimulationFailToUnlock failedAttempts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " timeoutMs : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KeyguardSecPatternViewController"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    const/16 v0, 0x8

    if-nez v2, :cond_2

    .line 790
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 791
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 792
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-lez v2, :cond_4

    .line 797
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 798
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    .line 801
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1, v4, v5}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    .line 803
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->notifyKeyguardLockout()V

    .line 805
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    :cond_4
    :goto_1
    if-nez v2, :cond_6

    .line 809
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 811
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    .line 812
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    sget v2, Lcom/android/systemui/R$string;->kg_incorrect_pattern:I

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1100(Lcom/android/keyguard/KeyguardSecPatternViewController;I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_5

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 814
    invoke-virtual {v0, v4, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 819
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 821
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 822
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 737
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 738
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$602(Lcom/android/keyguard/KeyguardSecPatternViewController;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1400(Lcom/android/keyguard/KeyguardSecPatternViewController;)I

    move-result v0

    if-lez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1402(Lcom/android/keyguard/KeyguardSecPatternViewController;I)I

    .line 698
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 699
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1900(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    :cond_1
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1900(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 751
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 752
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 753
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    .line 755
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
