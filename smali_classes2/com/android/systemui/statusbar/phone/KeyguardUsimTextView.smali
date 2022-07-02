.class public Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardUsimTextView.java"


# instance fields
.field private mPlayingShortcutAffordance:Z

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method private getCarrierString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .line 77
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getMainStackSlotId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    .line 67
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 8

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateText(simState): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUsimTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 88
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 90
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 94
    sget v5, Lcom/android/systemui/R$dimen;->keyguard_usim_text_margin_top:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    .line 95
    :cond_0
    sget v5, Lcom/android/systemui/R$dimen;->keyguard_usim_text_margin_top_land:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    if-ne v2, v4, :cond_1

    .line 98
    sget v6, Lcom/android/systemui/R$dimen;->keyguard_usim_text_margin_bottom:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    .line 99
    :cond_1
    sget v6, Lcom/android/systemui/R$dimen;->keyguard_usim_text_margin_bottom_land:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 102
    :goto_1
    sget-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v7, :cond_2

    const-class v7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 104
    sget v2, Lcom/android/systemui/R$dimen;->keyguard_usim_text_margin_bottom_land_opened:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 107
    :cond_2
    invoke-virtual {v3, v0, v5, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_4

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->keyguard_missing_sim_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 117
    :cond_3
    sget p1, Lcom/android/systemui/R$string;->keyguard_nosim_text_kor_only:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 120
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v2, 0x8

    if-ne p1, v1, :cond_6

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->keyguard_usim_not_used:I

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 127
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_7

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SKT_USIM_TEXT:Z

    if-eqz p1, :cond_7

    const-string/jumbo p1, "ril.simtype"

    .line 129
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x13

    .line 130
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_7

    .line 131
    sget p1, Lcom/android/systemui/R$string;->keyguard_skt_usim_unregistered:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 133
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_2
    return-void
.end method
