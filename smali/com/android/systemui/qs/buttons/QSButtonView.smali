.class public Lcom/android/systemui/qs/buttons/QSButtonView;
.super Landroid/widget/FrameLayout;
.source "QSButtonView.java"


# instance fields
.field private mExpanded:Z

.field private mIsEmergencyMode:Z

.field private mIsReserveMaxMode:Z

.field private mListening:Z

.field private mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

.field private mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

.field private mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

.field private mQsDisabled:Z

.field private mSearchButton:Lcom/android/systemui/qs/buttons/QSSearchButton;

.field private mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;


# direct methods
.method public static synthetic $r8$lambda$seHWfa_YRu5EJ-_IiTA2BnATnyY(Lcom/android/systemui/qs/buttons/QSButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->lambda$updateEverything$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$updateEverything$0()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateVisibilities()V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private updateVisibilities()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->updateVisibility()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsEmergencyMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsReserveMaxMode:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->updateSettingsBadge()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSearchButton:Lcom/android/systemui/qs/buttons/QSSearchButton;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsEmergencyMode:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsEmergencyMode:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    goto :goto_8

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    if-nez v1, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateMoreButtonBadgeVisibility()V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 68
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mQsDisabled:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateEverything()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 43
    sget v0, Lcom/android/systemui/R$id;->search_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSSearchButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSearchButton:Lcom/android/systemui/qs/buttons/QSSearchButton;

    .line 44
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSSettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->power_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSPowerButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSMoreButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->mum_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/buttons/QSMumButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateEverything()V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->onPanelModeChanged()V

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 6

    .line 117
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_header_setting_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSearchButton:Lcom/android/systemui/qs/buttons/QSSearchButton;

    sget v2, Lcom/android/systemui/R$id;->search_button:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 121
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_qs_ripple_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mPowerButton:Lcom/android/systemui/qs/buttons/QSPowerButton;

    sget v2, Lcom/android/systemui/R$id;->power_button:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 125
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    sget v2, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 129
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    sget v2, Lcom/android/systemui/R$id;->settings_button_badge:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->badge_notification_background:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$color;->badge_notification_text_color:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    sget v2, Lcom/android/systemui/R$id;->more_button:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 137
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    sget v1, Lcom/android/systemui/R$id;->more_button_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 58
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mExpanded:Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->setExpanded(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateEverything()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mListening:Z

    .line 93
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mMumButton:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->setListening(Z)V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/systemui/qs/buttons/QSButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSButtonView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateState(ZZ)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsEmergencyMode:Z

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/qs/buttons/QSButtonView;->mIsReserveMaxMode:Z

    return-void
.end method
