.class Lcom/android/keyguard/KeyguardSecSimPinViewController$3;
.super Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;
.source "KeyguardSecSimPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

.field final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field final synthetic val$subId:I


# direct methods
.method public static synthetic $r8$lambda$CVRJqhCKJ7b-BUr43U5Bd8BJ1Dw(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->lambda$onSimCheckResponse$0(Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;IILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput p4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$subId:I

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onSimCheckResponse$0(Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$500(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 299
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 297
    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPinViewController"

    .line 304
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 310
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput-boolean v3, p1, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 311
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SIM_UNLOCK_TOAST:Z

    if-eqz p2, :cond_1

    .line 312
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$600(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->kg_sim_lock_verified:I

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 315
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p3, v3, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$700(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_c

    const-class p1, Lcom/android/systemui/util/DesktopManager;

    .line 318
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "ForceHideSoftInput"

    .line 319
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$700(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto/16 :goto_2

    .line 323
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput-boolean v2, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 324
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result p2

    if-ne p2, v3, :cond_b

    const-string/jumbo p2, "verifyPasswordAndUnlock : PIN_RESULT_TYPE_INCORRECT"

    .line 326
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p2

    if-nez p2, :cond_4

    .line 329
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 330
    :cond_4
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz p2, :cond_6

    .line 331
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x3

    .line 332
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-ne p1, v3, :cond_5

    .line 333
    sget p1, Lcom/android/systemui/R$string;->kg_lgu_sim_puk_1st_attempts:I

    goto :goto_1

    .line 334
    :cond_5
    sget p1, Lcom/android/systemui/R$string;->kg_lgu_sim_puk_2nd_attempts:I

    .line 332
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto/16 :goto_2

    .line 335
    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p2, :cond_7

    .line 336
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v0, Lcom/android/systemui/R$string;->kg_kor_password_wrong_pin_code:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 338
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 336
    invoke-virtual {p2, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 339
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p2

    if-ne p2, v3, :cond_9

    .line 340
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p1, :cond_8

    .line 341
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p2, Lcom/android/systemui/R$string;->kg_ctc_password_wrong_pin_code_one:I

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_2

    .line 344
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p2, Lcom/android/systemui/R$string;->kg_password_wrong_pin_code_one:I

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_2

    .line 348
    :cond_9
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p2, :cond_a

    .line 349
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v0, Lcom/android/systemui/R$string;->kg_ctc_password_wrong_pin_code_other:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 351
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 349
    invoke-virtual {p2, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 353
    :cond_a
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v0, Lcom/android/systemui/R$string;->kg_password_wrong_pin_code_other:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 355
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 353
    invoke-virtual {p2, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 361
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$800(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_password_pin_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_2
    if-eqz p3, :cond_d

    .line 365
    invoke-interface {p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 367
    :cond_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Landroid/telephony/PinResult;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$400(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$subId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
