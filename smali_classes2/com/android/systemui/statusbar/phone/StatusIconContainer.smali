.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public static HOME_INDICATOR:I = 0x1

.field public static LOCK_INDICATOR:I = 0x0

.field public static NONE_INDICATOR:I = -0x1

.field private static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mBatteryWidth:I

.field private mBatteryX:F

.field private mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field private mCurrentLayoutDirection:I

.field private mCutoutRightSideAvailableWidth:I

.field private mCutoutRightSideIconsWidth:I

.field private mDeltaWidth:F

.field private mDisplayCutoutRect:Landroid/graphics/Rect;

.field private mDotPadding:I

.field private mIconDotFrameWidth:I

.field private mIconSpacing:I

.field private mIgnoredSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorType:I

.field private mIsSubscreenContainer:Z

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredMode:I

.field private mNeedsUnderflow:Z

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mParent:Landroid/view/ViewGroup;

.field private mShouldRestrictIcons:Z

.field private mSmallestScreenWidthDp:I

.field private mStaticDotDiameter:I

.field private mTotalWidth:I

.field private mUnderflowStart:I

.field private mUnderflowWidth:I

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$5EBe809H8elwWY-OJ63wb3Q9s2Q(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$O4bwMWfOhTRLfIv8P_szEwjIj1w(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->lambda$onFinishInflate$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 749
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 756
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 758
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    .line 765
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 767
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    .line 775
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 97
    sget v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->NONE_INDICATOR:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorType:I

    .line 119
    const-class v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 120
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCurrentLayoutDirection:I

    .line 165
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSmallestScreenWidthDp:I

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    .line 131
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method private addIgnoredSlotInternal(Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private applyIconStates()V
    .locals 3

    const/4 v0, 0x0

    .line 550
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 552
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateIconTranslations()V
    .locals 13

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 458
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 459
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 460
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ltz v4, :cond_3

    .line 470
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 471
    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 472
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v11

    .line 474
    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 475
    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v1, v7

    .line 484
    iput v5, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 485
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 486
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 488
    sget-boolean v7, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->excludeCutoutArea()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    .line 490
    iget v10, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v7, v10

    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-lez v10, :cond_1

    if-nez v6, :cond_1

    .line 492
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDisplayCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    sub-float/2addr v6, v7

    sub-float/2addr v1, v6

    .line 493
    iput v1, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    move v6, v8

    .line 499
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    int-to-float v7, v7

    sub-float/2addr v1, v7

    goto :goto_2

    .line 476
    :cond_2
    :goto_1
    iput v7, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x14

    if-gt v1, v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0x13

    .line 506
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    sub-int/2addr v1, v8

    move v6, v5

    :goto_4
    const/4 v8, -0x1

    if-ltz v1, :cond_7

    .line 510
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 512
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v10, :cond_5

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_8

    :cond_5
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_6

    if-lt v6, v4, :cond_6

    goto :goto_5

    .line 517
    :cond_6
    iget v8, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    move v1, v8

    :cond_8
    :goto_5
    if-eq v1, v8, :cond_9

    :goto_6
    if-ltz v1, :cond_9

    .line 527
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 534
    iput v7, v2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 540
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_7
    if-ge v5, v3, :cond_a

    .line 542
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 543
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    .line 544
    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method private excludeCutoutArea()Z
    .locals 3

    .line 593
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInputProperty()Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayCutoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDisplayCutoutRect:Landroid/graphics/Rect;

    .line 597
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorType:I

    sget v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->NONE_INDICATOR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 598
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->excludeCutoutArea()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private getCutoutRightSideAvailableWidth()I
    .locals 6

    .line 623
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 624
    sget v1, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 625
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isPinnedEdgeRight()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorType:I

    sget v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->HOME_INDICATOR:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->indicator_right_padding_edge_pin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    .line 628
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mParent:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    :goto_1
    if-eqz v2, :cond_2

    .line 630
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_2

    .line 631
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 632
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDisplayCutoutRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 634
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryWidth:I

    .line 635
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryX:F

    .line 637
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryWidth:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 639
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v1, :cond_4

    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 640
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 641
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method

.method private getDeltaWidthForCutoutArea(I)F
    .locals 6

    const/4 v0, 0x0

    .line 604
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getCutoutRightSideAvailableWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 607
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    if-ne v1, v3, :cond_0

    move v3, v0

    goto :goto_1

    .line 608
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 609
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v4, :cond_1

    .line 610
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 611
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_1

    .line 612
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDisplayCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int v0, p1, p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    int-to-float p0, v0

    return p0
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .locals 1

    .line 574
    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object p0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .locals 2

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 219
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_icon_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_system_icon_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 221
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 222
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 223
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 227
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    return-void
.end method

.method private isPinnedEdgeRight()Z
    .locals 1

    .line 648
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgeAreaRight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->updateMargins()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->updateMargins()V

    return-void
.end method

.method private resetViewStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 560
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 561
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 562
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 568
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 569
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateMargins()V
    .locals 7

    .line 177
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 181
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 182
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getPaddingForSignalClusterBattery()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->signal_cluster_battery_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 189
    :goto_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SUB_SCREEN_SIGNAL_INFO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v5, -0x1

    new-array v6, v3, [Ljava/lang/Object;

    .line 190
    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIsSubscreenContainer:Z

    if-eqz v2, :cond_2

    move v0, v3

    .line 194
    :cond_2
    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addIgnoredSlots(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlotInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 655
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

    if-eqz v0, :cond_0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusIconContainer STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mIndicatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   excludeCutoutArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->excludeCutoutArea()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   StatusIconContainer width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   StatusIconContainer measuredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mDisplayCutoutRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDisplayCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mCutoutRightSideAvailableWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mCutoutRightSideIconsWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mDeltaWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDeltaWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mTotalWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mTotalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mMeasuredMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasuredMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mBatteryWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   mBatteryX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mBatteryX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusIconContainer   isPinnedEdgeRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isPinnedEdgeRight()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isRestrictingIcons()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCurrentLayoutDirection:I

    if-eq v1, v0, :cond_0

    .line 152
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCurrentLayoutDirection:I

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 157
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_1

    .line 159
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSmallestScreenWidthDp:I

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->updateScale()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 237
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 238
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 239
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 241
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 275
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 276
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 277
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 278
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-gt v1, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x13

    .line 284
    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    .line 289
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 290
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-le v1, v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v7, v2

    move v3, v5

    move v9, v8

    :goto_3
    if-ge v7, v1, :cond_8

    .line 293
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v11, v1, v7

    sub-int/2addr v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 294
    invoke-virtual {p0, v10, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v11, v1, -0x1

    if-ne v7, v11, :cond_4

    move v11, v2

    goto :goto_4

    .line 295
    :cond_4
    iget v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 296
    :goto_4
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v12, :cond_6

    if-ge v7, v4, :cond_5

    if-eqz v9, :cond_5

    .line 298
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    if-gt v3, p1, :cond_7

    goto :goto_5

    :cond_5
    if-eqz v9, :cond_7

    .line 304
    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v3, v9

    move v9, v2

    if-gt v3, p1, :cond_7

    goto :goto_5

    .line 311
    :cond_6
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    if-gt v3, p1, :cond_7

    :goto_5
    move v5, v3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 318
    :cond_8
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->excludeCutoutArea()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 319
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getDeltaWidthForCutoutArea(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDeltaWidth:F

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    .line 327
    :cond_9
    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v1, v6

    if-gt v5, v1, :cond_a

    goto :goto_6

    :cond_a
    if-ltz v5, :cond_b

    if-ge v5, p1, :cond_b

    move v2, v5

    goto :goto_6

    :cond_b
    move v2, p1

    :goto_6
    if-eqz v4, :cond_c

    .line 335
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mTotalWidth:I

    .line 336
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mWidth:I

    .line 337
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasuredMode:I

    :cond_c
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_e

    .line 341
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez p1, :cond_d

    if-le v3, v2, :cond_d

    .line 342
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 344
    :cond_d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_7

    :cond_e
    const/high16 p1, -0x80000000

    if-ne v0, p1, :cond_f

    if-le v3, v2, :cond_f

    .line 347
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v3, v2

    .line 350
    :cond_f
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_7
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5

    .line 356
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 357
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v1, 0x1

    .line 358
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 359
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SUB_SCREEN_SIGNAL_INFO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 360
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIsSubscreenContainer:Z

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->shouldBlockAni:Z

    .line 363
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 368
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 369
    sget p0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public removeIgnoredSlots(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setClockManager(Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    return-void
.end method

.method public setIgnoredSlots(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    return-void
.end method

.method public setIndicatorType(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mParent:Landroid/view/ViewGroup;

    .line 588
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorType:I

    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return-void
.end method

.method public setSubScreenFlag(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIsSubscreenContainer:Z

    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->updateMargins()V

    return-void
.end method
