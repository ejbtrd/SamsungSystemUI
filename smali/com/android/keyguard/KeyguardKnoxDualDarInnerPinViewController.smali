.class public Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;
.super Lcom/android/keyguard/KeyguardSecPinViewController;
.source "KeyguardKnoxDualDarInnerPinViewController.java"


# instance fields
.field private mEntry:[B

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 55
    iput-object p7, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 56
    iput-object p11, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 57
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardKnoxDualDarInnerPinViewController"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 245
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 249
    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_2

    .line 253
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

    .line 254
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->showPromptReason(I)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/systemui/R$string;->kg_knox_dual_dar_inner_instructions:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 5

    .line 162
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getMainUserId(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 164
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@onPasswordChecked "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " timeoutMs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "KeyguardKnoxDualDarInnerPinViewController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const-string p3, "onPasswordChecked"

    .line 167
    invoke-static {v4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardSecPINView;

    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz p3, :cond_1

    .line 170
    iget-object p3, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p3, v3, v3}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, p1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_6

    .line 174
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, v3, p1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZ)V

    goto/16 :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPINView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    :cond_3
    if-eqz p4, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p4

    invoke-interface {p4, p1, v2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-lez p3, :cond_4

    .line 186
    iget-object p4, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p4, p1, p3}, Lcom/android/systemui/knox/KnoxStateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_4
    int-to-long p3, p3

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_6

    .line 193
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 p3, 0xbb8

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 195
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardSecPINView;->getWrongPasswordStringId()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-lez p1, :cond_5

    .line 198
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 198
    invoke-virtual {p3, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 212
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 218
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 65
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 68
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v1

    .line 67
    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->resetState()V

    :goto_0
    return-void
.end method

.method protected resetState()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARCustomCrypto(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardKnoxDualDarInnerPinViewController"

    const-string v1, "DualDar at Do safe mode with custom crypto case"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->resetState()V

    :goto_0
    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 272
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public showPromptReason(I)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    const-string p0, "KeyguardKnoxDualDarInnerPinViewController"

    const-string/jumbo p1, "showPromptReason mSecurityMessageDisplay is null"

    .line 225
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 231
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v1

    .line 230
    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 235
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPromptReasonStringRes(I)I

    :cond_2
    return-void
.end method

.method protected verifyNDigitsPIN()V
    .locals 0

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    .line 93
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    const-string v1, "KeyguardKnoxDualDarInnerPinViewController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mEntry:[B

    .line 102
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v1

    .line 109
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v4

    check-cast v5, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v5, 0x3

    if-gt v3, v5, :cond_2

    .line 112
    check-cast v4, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 113
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->onPasswordChecked(IZIZ)V

    .line 114
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 119
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 121
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 123
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
