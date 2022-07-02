.class public Lcom/android/keyguard/KeyguardSecPinViewController;
.super Lcom/android/keyguard/KeyguardPinViewController;
.source "KeyguardSecPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardPinViewController<",
        "Lcom/android/keyguard/KeyguardSecPINView;",
        ">;"
    }
.end annotation


# instance fields
.field private mBottomView:Landroid/widget/LinearLayout;

.field private final mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardPinViewController;-><init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 43
    new-instance p1, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    .line 45
    new-instance p1, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecPINView;

    sget p2, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->afterTextChanged(Landroid/text/Editable;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->verifyNDigitsPIN()V

    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecPinViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 148
    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinViewController;->showPromptReason(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    :cond_3
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v0, :cond_5

    .line 167
    sget v0, Lcom/android/systemui/R$string;->kg_pin_sub_instructions_vzw:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_1

    .line 169
    :cond_5
    sget v0, Lcom/android/systemui/R$string;->kg_pin_sub_instructions:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    sget v0, Lcom/android/systemui/R$string;->kg_biometrics_has_confirmed:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 215
    sget p0, Lcom/android/systemui/R$id;->keyguard_pin_view:I

    return p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinViewController;->onViewAttached()V

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 89
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method resetState()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinViewController;->resetState()V

    .line 137
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->displayDefaultSecurityMessage()V

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetFor2StepVerification()V

    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 123
    :goto_0
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 124
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showPromptReason(I)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecPinViewController"

    const-string/jumbo p1, "showPromptReason mSecurityMessageDisplay is null"

    .line 221
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_6

    .line 226
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-virtual {v1, v0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    .line 229
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_VZW_INSTRUCTION:Z

    if-eqz v2, :cond_1

    .line 230
    sget v2, Lcom/android/systemui/R$string;->kg_pin_sub_instructions_vzw:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    goto :goto_0

    .line 232
    :cond_1
    sget v2, Lcom/android/systemui/R$string;->kg_pin_sub_instructions:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 235
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4

    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    goto :goto_1

    .line 250
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 240
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 241
    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateStrongAuthTimeoutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_2

    .line 247
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public startAppearAnimation()V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 191
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    .line 194
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 195
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 196
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    .line 197
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 198
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 205
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 206
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method

.method protected verifyNDigitsPIN()V
    .locals 3

    .line 104
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v2, v1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    .line 109
    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "KeyguardSecPinViewController"

    const-string/jumbo v2, "verifyPassword by N digits pin option"

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecPasswordTextView;->setMaxLength(I)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
