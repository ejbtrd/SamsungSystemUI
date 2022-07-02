.class public Lcom/android/systemui/qs/SecQuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "SecQuickStatusBarHeader.java"


# instance fields
.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockIconsView:Landroid/view/View;

.field private mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

.field private mColorPicker:Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

.field private mCurrentOrientation:I

.field private mCutOutHeight:I

.field private mDateButtonContainer:Landroid/view/View;

.field private mDateView:Landroid/widget/TextView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mExpanded:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mNavBarHeight:I

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mPrivacyChip:Landroid/view/View;

.field private mQsDisabled:Z

.field private mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;


# direct methods
.method public static synthetic $r8$lambda$elnbC_7z861HyxreWpbY9Y_3M9Q(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->lambda$updateEverything$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 76
    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 77
    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 90
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings_Header:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v0}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->createColorPicker(Landroid/content/Context;)V

    return-void
.end method

.method private createColorPicker(Landroid/content/Context;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

    .line 97
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$color;->sec_panel_background_color_tablet:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    .line 98
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mColorPicker:Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

    return-void
.end method

.method private synthetic lambda$updateEverything$0()V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private updateContentsHeight()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getDateButtonContainerHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 223
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 224
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    .line 225
    iget-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 226
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 229
    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_3

    .line 230
    iget p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    const/4 p2, -0x2

    .line 232
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 234
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isDarkPanelBgColor()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mColorPicker:Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->isDarkPanelBgColor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 240
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v3, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 250
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    if-eq v1, v0, :cond_4

    .line 251
    :cond_1
    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 252
    iput v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsHeight()V

    goto :goto_1

    .line 257
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    if-eq v1, v0, :cond_4

    .line 258
    :cond_3
    iput v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNavBarHeight:I

    .line 259
    iput v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCutOutHeight:I

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsHeight()V

    .line 271
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mColorPicker:Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

    invoke-virtual {p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->getColorIntensity()F

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    .line 148
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 159
    iget v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsHeight()V

    .line 161
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 110
    sget v0, Lcom/android/systemui/R$id;->quick_qs_date_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 112
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    .line 114
    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 121
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 122
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_2

    .line 123
    sget v0, Lcom/android/systemui/R$id;->quick_qs_network_speed_viewstub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 127
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->networkSpeed:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 138
    sget v0, Lcom/android/systemui/R$id;->header_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 139
    sget v0, Lcom/android/systemui/R$id;->header_date:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateContentsHeight()V

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 296
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->createColorPicker(Landroid/content/Context;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method setChipVisibility(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 193
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    .line 194
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 0

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 275
    new-instance v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResources()V
    .locals 4

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mColorPicker:Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->getColorIntensity()F

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v2

    .line 175
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 179
    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v3, :cond_1

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_1
    return-void
.end method
