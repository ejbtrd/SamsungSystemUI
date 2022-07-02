.class Lcom/android/keyguard/KeyguardSecSimPukViewController$3;
.super Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;
.source "KeyguardSecSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSimPukViewController<",
        "Lcom/android/keyguard/KeyguardSecSimPukView;",
        ">.CheckSimPuk;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public static synthetic $r8$lambda$usiEuWRaWNlZITL9VeCePFyOWyY(Lcom/android/keyguard/KeyguardSecSimPukViewController$3;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->lambda$onSimLockChangedResponse$0(Landroid/telephony/PinResult;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onSimLockChangedResponse$0(Landroid/telephony/PinResult;)V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$800(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 404
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 402
    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 408
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    const-string v1, "KeyguardSecSimPukViewController"

    if-nez v0, :cond_4

    .line 409
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 410
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 411
    iput-boolean v3, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 412
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_UNLOCK_TOAST:Z

    if-eqz v0, :cond_1

    .line 413
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$900(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_sim_lock_accepted:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 414
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_2

    .line 415
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_kor_success_pin_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1100(Lcom/android/keyguard/KeyguardSecSimPukViewController;Ljava/lang/String;)V

    .line 417
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 418
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_3

    const-class p1, Lcom/android/systemui/util/DesktopManager;

    .line 419
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ForceHideSoftInput"

    .line 420
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 423
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_3

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 427
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 430
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    .line 429
    invoke-virtual {v0, v4, v2}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$1400(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    .line 440
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Landroid/telephony/PinResult;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$700(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$3;Landroid/telephony/PinResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
