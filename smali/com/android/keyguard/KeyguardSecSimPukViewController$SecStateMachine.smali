.class Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.source "KeyguardSecSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;Lcom/android/keyguard/KeyguardSecSimPukViewController$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 7

    .line 221
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_0

    move v0, v3

    goto/16 :goto_3

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 268
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 269
    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 270
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 271
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSim()V

    goto/16 :goto_3

    .line 275
    :cond_1
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 276
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->kg_kor_invalid_confirm_pin_hint:I

    goto/16 :goto_3

    .line 278
    :cond_3
    :goto_0
    sget v0, Lcom/android/systemui/R$string;->kg_empty_sim_perso_hint:I

    goto/16 :goto_3

    .line 283
    :cond_4
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_confirm_pin_hint:I

    goto/16 :goto_3

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 247
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 248
    sget v0, Lcom/android/systemui/R$string;->kg_kor_enter_confirm_pin_hint:I

    goto/16 :goto_3

    .line 249
    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_7

    .line 250
    sget v0, Lcom/android/systemui/R$string;->kg_ctc_enter_confirm_pin_hint:I

    goto :goto_3

    .line 252
    :cond_7
    sget v0, Lcom/android/systemui/R$string;->kg_sec_puk_enter_confirm_pin_hint:I

    goto :goto_3

    .line 255
    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_1

    .line 259
    :cond_9
    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_pin_instructions:I

    goto :goto_3

    .line 257
    :cond_a
    :goto_1
    sget v0, Lcom/android/systemui/R$string;->kg_empty_sim_perso_hint:I

    goto :goto_3

    .line 262
    :cond_b
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_3

    .line 223
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 225
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_d

    .line 226
    sget v0, Lcom/android/systemui/R$string;->kg_kor_puk_enter_pin_hint:I

    goto :goto_3

    .line 227
    :cond_d
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_e

    .line 228
    sget v0, Lcom/android/systemui/R$string;->kg_ctc_puk_enter_pin_hint:I

    goto :goto_3

    .line 230
    :cond_e
    sget v0, Lcom/android/systemui/R$string;->kg_sec_puk_enter_pin_hint:I

    goto :goto_3

    .line 233
    :cond_f
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_12

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_2

    .line 237
    :cond_10
    sget v0, Lcom/android/systemui/R$string;->kg_kor_invalid_sim_puk_hint:I

    goto :goto_3

    .line 235
    :cond_11
    :goto_2
    sget v0, Lcom/android/systemui/R$string;->kg_kor_empty_sim_puk_hint:I

    goto :goto_3

    .line 240
    :cond_12
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_puk_hint:I

    .line 288
    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$500(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v5, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_14

    .line 290
    sget v5, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    if-eq v0, v5, :cond_13

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_4

    .line 293
    :cond_13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$600(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/content/Context;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_4
    return-void
.end method

.method reset()V
    .locals 2

    const-string v0, "KeyguardSecSimPukViewController"

    const-string/jumbo v1, "reset()"

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 302
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 303
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 304
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->handleSubInfoChangeIfNeeded()V

    .line 305
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
