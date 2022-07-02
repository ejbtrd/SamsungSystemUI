.class public Lcom/android/keyguard/KeyguardSecSimPukView;
.super Lcom/android/keyguard/KeyguardSimPukView;
.source "KeyguardSecSimPukView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x2

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_4

    .line 37
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$string;->kg_lgu_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v4, p1, 0xa

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 38
    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 40
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v3, p1, 0xa

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    .line 41
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 44
    :cond_2
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p2, :cond_3

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_8

    .line 52
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz v3, :cond_5

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$string;->kg_lgu_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v4, p1, 0xa

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 53
    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v3, p1, 0xa

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    .line 56
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p2, :cond_7

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 63
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 69
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSimPukView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    return-void
.end method
