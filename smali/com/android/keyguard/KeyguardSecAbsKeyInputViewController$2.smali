.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecAbsKeyInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 190
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset()V

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 6

    .line 164
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 165
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$402(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Z)Z

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-boolean v0, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 168
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->displayDefaultSecurityMessage()V

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 173
    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;

    move-result-object p2

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    .line 176
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 177
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 180
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    goto :goto_1

    .line 182
    :cond_5
    sget v0, Lcom/android/systemui/R$dimen;->kg_sub_message_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eq v0, p1, :cond_1

    .line 152
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 156
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onSimulationFailToUnlock(I)V
    .locals 8

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$900(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/systemui/vibrate/VibrationUtil;

    move-result-object v0

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 236
    rem-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 v2, 0x7530

    goto :goto_0

    :cond_1
    move v2, v3

    .line 237
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

    const-string v4, "KeyguardSecAbsKeyInputViewController"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    const/16 v0, 0x8

    if-nez v2, :cond_2

    .line 240
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 241
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 242
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-lez v2, :cond_4

    .line 246
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setLockoutAttemptDeadline(II)J

    move-result-wide v4

    .line 250
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p1, v4, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 252
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->notifyKeyguardLockout()V

    .line 254
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    :cond_4
    :goto_1
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 259
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 261
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_5

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 264
    invoke-virtual {v0, v4, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    :cond_6
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$302(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)I

    .line 143
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 144
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    :cond_1
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->initializeBottomContainerView(J)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 202
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
