.class public Lcom/android/systemui/qs/QSUpperCabinet;
.super Landroid/widget/LinearLayout;
.source "QSUpperCabinet.java"


# instance fields
.field private mClockContainerHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field mCutOutHeight:I

.field mNavBarHeight:I

.field private mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

.field private mQSClockDateSecurityFooterContainer:Landroid/widget/LinearLayout;

.field private mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

.field private mQSDateClock:Lcom/android/systemui/qs/QSDateClock;

.field private mQSSecurityFooterContainer:Landroid/widget/LinearLayout;

.field private mSecurityFooter:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mNavBarHeight:I

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDateClockHeight()I
    .locals 8

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_panel_clock_size_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_panel_date_size_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "000"

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 151
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 152
    invoke-virtual {v2, v0, v6}, Landroid/widget/TextView;->measure(II)V

    .line 153
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 155
    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v6, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v5, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, v1

    .line 157
    invoke-virtual {v2, v3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 159
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 160
    invoke-virtual {v2, p0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 161
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 82
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCutOutHeight:I

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10502a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 90
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCutOutHeight:I

    if-eq v0, v2, :cond_2

    .line 91
    iput v2, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCutOutHeight:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCutOutHeight:I

    .line 99
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v0

    .line 101
    iget v2, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCutOutHeight:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mNavBarHeight:I

    if-eq v0, v1, :cond_4

    .line 102
    :cond_3
    iput v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mNavBarHeight:I

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSUpperCabinet;->updateCabinetHeight()V

    .line 105
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCurrentOrientation:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 112
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCurrentOrientation:I

    if-eq p1, v0, :cond_0

    .line 113
    iput p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCurrentOrientation:I

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSUpperCabinet;->updateCabinetHeight()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    sget v0, Lcom/android/systemui/R$id;->clock_date_security_footer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClockDateSecurityFooterContainer:Landroid/widget/LinearLayout;

    .line 58
    sget v0, Lcom/android/systemui/R$id;->security_footer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSSecurityFooterContainer:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->qs_panel_date_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDateClock;

    iput-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDateClock:Lcom/android/systemui/qs/QSDateClock;

    .line 60
    sget v0, Lcom/android/systemui/R$id;->panel_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->panel_date:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSDate;

    iput-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSUpperCabinet;->updateCabinetHeight()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClockDateSecurityFooterContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x40000

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClockDateSecurityFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClock:Lcom/android/systemui/statusbar/policy/QSClockPanelView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_panel_clock_size_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_panel_date_size_tablet:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 170
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 171
    iget-object p2, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->sec_qs_footer_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 172
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mClockContainerHeight:I

    if-eq v0, p1, :cond_1

    .line 173
    iput p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mClockContainerHeight:I

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/QSUpperCabinet;->getDateClockHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSClockDateSecurityFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p2

    const/16 p2, 0x8

    if-le p1, v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDate:Lcom/android/systemui/statusbar/policy/QSDate;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSDateClock:Lcom/android/systemui/qs/QSDateClock;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDateClock;->updateColor()V

    return-void
.end method

.method public setSecurityFooter(Landroid/view/View;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mSecurityFooter:Landroid/view/View;

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mQSSecurityFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public updateCabinetHeight()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mCurrentOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 121
    :goto_0
    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    const-string v4, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 123
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v2

    :cond_2
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQSUpperCabinetHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 129
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getDateButtonContainerHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v4, :cond_4

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/QSUpperCabinet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getHeaderTopMargin(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_4
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 135
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
