.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "QuickStatusBarHeader.java"


# instance fields
.field private mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockIconsSeparator:Landroid/view/View;

.field private mClockIconsView:Landroid/view/View;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mConfigShowBatteryEstimate:Z

.field private mContainer:Landroid/view/View;

.field private mCutOutPaddingLeft:I

.field private mCutOutPaddingRight:I

.field private mDateContainer:Landroid/view/View;

.field private mDatePrivacySeparator:Landroid/widget/Space;

.field private mDatePrivacyView:Landroid/view/View;

.field private mDateView:Landroid/view/View;

.field private mHasCenterCutout:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

.field private mIsSingleCarrier:Z

.field private mKeyguardExpansionFraction:F

.field private mPrivacyChip:Landroid/view/View;

.field private mPrivacyContainer:Landroid/view/View;

.field private mQSCarriers:Landroid/view/View;

.field private mQsDisabled:Z

.field private mRightLayout:Landroid/view/View;

.field private mRoundedCornerPadding:I

.field private mRssiIgnoredSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityHeaderView:Landroid/view/View;

.field private mShowClockIconsSeparator:Z

.field private mTextColorPrimary:I

.field private mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mTopViewMeasureHeight:I

.field private mViewAlpha:F

.field private mWaterfallTopInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 91
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mViewAlpha:F

    .line 93
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSingleCarrier:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    return p0
.end method

.method private setContentMargins(Landroid/view/View;II)V
    .locals 0

    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 505
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 506
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 507
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setDatePrivacyContainersWidth(Z)V
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 206
    :goto_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 207
    :goto_1
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 208
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 211
    :goto_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 212
    :goto_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSeparatorVisibility(Z)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 445
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    .line 451
    :goto_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    .line 452
    :goto_4
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 453
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 456
    :goto_5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    .line 457
    :goto_6
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 458
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAlphaAnimator()V
    .locals 5

    .line 293
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 294
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 296
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    .line 297
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAnimators()V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V

    return-void
.end method

.method private updateBatteryMode()V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mConfigShowBatteryEstimate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    if-nez v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    :goto_0
    return-void
.end method

.method private updateHeadersPadding()V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    .line 467
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 468
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 469
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 474
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    if-lez v3, :cond_0

    .line 476
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v2

    .line 477
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 479
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-lez v3, :cond_1

    .line 481
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v0

    .line 482
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 485
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 489
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    invoke-virtual {v3, v2, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    .line 392
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    .line 396
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 399
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    .line 401
    invoke-virtual {v3}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    .line 403
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 404
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 405
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v7

    .line 408
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_2

    goto :goto_2

    .line 416
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 417
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 418
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 419
    iput-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    .line 420
    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    .line 421
    iput-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    goto :goto_3

    .line 409
    :cond_4
    :goto_2
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 410
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 411
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 412
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    .line 413
    iput-boolean v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    .line 414
    iput-boolean v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    .line 424
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    .line 427
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-nez v0, :cond_6

    goto :goto_4

    .line 428
    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Insets;->top:I

    :goto_4
    iput v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateBatteryMode()V

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    .line 432
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 195
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setDatePrivacyContainersWidth(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 120
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 121
    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_date_privacy:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    .line 122
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    .line 123
    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    .line 124
    sget v0, Lcom/android/systemui/R$id;->qs_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContainer:Landroid/view/View;

    .line 125
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 126
    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Landroid/view/View;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    .line 129
    sget v0, Lcom/android/systemui/R$id;->separator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->rightLayout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->date_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->privacy_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    .line 134
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 135
    sget v0, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    .line 137
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const-string v1, "QuickStatusBarHeader"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 152
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 153
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    if-eq p1, p2, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method updateResources()V
    .locals 3

    .line 225
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    sget v1, Lcom/android/systemui/R$bool;->config_showBatteryEstimateQSBH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mConfigShowBatteryEstimate:Z

    .line 229
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const v1, 0x10502a3

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 247
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->temp_header_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 253
    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    if-eq v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010038

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 256
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    .line 257
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qqs_layout_margin_top:I

    .line 266
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 267
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qqs_layout_margin_top:I

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 273
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateBatteryMode()V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    return-void
.end method
