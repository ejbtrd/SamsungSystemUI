.class public Lcom/android/systemui/qs/SecQSFooterView;
.super Landroid/widget/FrameLayout;
.source "SecQSFooterView.java"


# instance fields
.field private mCutOutHeight:I

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNavBarHeight:I

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mQsDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mCutOutHeight:I

    .line 48
    iput p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mNavBarHeight:I

    return-void
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 3

    .line 127
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    .line 128
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    const v0, 0x3f666666    # 0.9f

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateFooterAnimator()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateResources()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateFooterAnimator()V

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsFooterViewHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method disable(IZ)V
    .locals 0

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 165
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mQsDisabled:Z

    if-ne p2, p1, :cond_1

    return-void

    .line 166
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSFooterView;->mQsDisabled:Z

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 89
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v3, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 98
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mCutOutHeight:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mNavBarHeight:I

    if-eq v1, v0, :cond_4

    .line 99
    :cond_1
    iput v2, p0, Lcom/android/systemui/qs/SecQSFooterView;->mCutOutHeight:I

    .line 100
    iput v1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mNavBarHeight:I

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateResources()V

    goto :goto_1

    .line 104
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mCutOutHeight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mNavBarHeight:I

    if-eq v1, v0, :cond_4

    .line 105
    :cond_3
    iput v2, p0, Lcom/android/systemui/qs/SecQSFooterView;->mCutOutHeight:I

    .line 106
    iput v1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mNavBarHeight:I

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateResources()V

    .line 111
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    sget v0, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateResources()V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateResources()V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setExpanded(ZZ)V
    .locals 0

    .line 143
    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpanded:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpanded:Z

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpansionAmount:F

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing()V
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSFooterView;->setExpansion(F)V

    return-void
.end method

.method updateAnimator(II)V
    .locals 3

    .line 66
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int/2addr p1, v0

    add-int/lit8 p2, p2, -0x1

    .line 68
    div-int/2addr p1, p2

    .line 69
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->default_gear_space:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    iget p1, p0, Lcom/android/systemui/qs/SecQSFooterView;->mExpansionAmount:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSFooterView;->setExpansion(F)V

    return-void
.end method
