.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;
    }
.end annotation


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBattery:Lcom/android/systemui/BatteryMeterView;

.field private mBgColorCanvasView:Landroid/view/View;

.field protected mBlockVisibleByKnox:Z

.field private mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

.field private mCarrierInformationContainer:Landroid/view/ViewGroup;

.field private mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

.field private mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

.field private mCenterIconSpace:Landroid/view/View;

.field private mClock:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

.field private mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mExpansionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

.field private mHeadsUpVisible:Z

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

.field private mIndicatorGardenFertilizer:Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

.field mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field mIsFullyOpenedPanel:Z

.field mLocationInWindow:[I

.field private mMinFraction:F

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mNotiIconWidth:I

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOngoingCallChip:Landroid/view/View;

.field mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mRotationOrientation:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShouldShowOngoingCallChip:Z

.field private mState:I

.field private mStatusBarAreaView:Landroid/view/ViewGroup;

.field private mStatusBarContents:Landroid/view/ViewGroup;

.field private mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

.field private mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mSystemIconsArea:Landroid/view/ViewGroup;

.field private mTouchableRegion:Landroid/graphics/Rect;

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$0uy_q5maE9y3lST-3qpP2E1ior8()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->lambda$setBar$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PZrmdupOvBn4BUMZ-kC6kr0OPro()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->lambda$setBar$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$W24cODNQUsePWU6zR_gt20W_vl4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->lambda$new$2(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mRotationOrientation:I

    .line 134
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 149
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlockVisibleByKnox:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 155
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchableRegion:Landroid/graphics/Rect;

    .line 171
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldShowOngoingCallChip:Z

    .line 778
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    .line 779
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-direct {p2, p0, v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    .line 1010
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    .line 1036
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 176
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 177
    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 179
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 182
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 184
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_0

    .line 185
    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateGardenOnLayoutByCover(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isPinnedEdge()Z
    .locals 0

    .line 981
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 982
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$2(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 7

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchableRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 1040
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    aget v2, v6, v2

    add-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    aget v4, v6, v4

    add-int/2addr v2, v4

    .line 1039
    invoke-virtual {v0, v3, v1, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x3

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1047
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private static synthetic lambda$setBar$0()V
    .locals 2

    .line 192
    const-class v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarIcons()V

    .line 193
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarHidden()V

    return-void
.end method

.method private static synthetic lambda$setBar$1()V
    .locals 1

    .line 198
    const-class v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarText()V

    return-void
.end method

.method private updateGardenOnLayoutByCover(I)V
    .locals 1

    .line 1107
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onChangedCoverDefaultSidePadding(Lcom/android/systemui/statusbar/phone/IndicatorGarden;I)V

    return-void
.end method

.method private updateOngingCallChipVisibility()V
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOngoingCallChip:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1136
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldShowOngoingCallChip:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOngoingCallChip:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    .line 563
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 564
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/4 v1, 0x0

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 568
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    return-void
.end method

.method private updateStatusBarHeight()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dumpGarden(Ljava/io/PrintWriter;)V
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenFertilizer:Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

    if-eqz v0, :cond_0

    .line 998
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->dumpGarden(Ljava/io/PrintWriter;Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;Landroid/view/DisplayCutout;)V

    .line 1001
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_1

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneStatusBarView mTouchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneStatusBarView view location x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLocationInWindow:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

    if-eqz v0, :cond_2

    .line 1006
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method protected getBgColorCanvasView()Landroid/view/View;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBgColorCanvasView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 966
    sget v0, Lcom/android/systemui/R$id;->phone_status_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBgColorCanvasView:Landroid/view/View;

    .line 968
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBgColorCanvasView:Landroid/view/View;

    return-object p0
.end method

.method public getCarrierInformationContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 735
    sget v0, Lcom/android/systemui/R$id;->home_carrier_information_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getCarrierInformationContext()Landroid/content/Context;
    .locals 0

    .line 728
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 881
    sget v0, Lcom/android/systemui/R$id;->status_bar_center_side:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 883
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEssentialLeftWidth()I
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 931
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 932
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotiIconWidth:I

    int-to-float p0, p0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getEssentialRightWidth()I
    .locals 5

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    .line 940
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 942
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 947
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v3, :cond_2

    const-class v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 948
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 949
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    .line 952
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 953
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 954
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    :cond_3
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    return v0
.end method

.method public getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getHeadsUpVisible()Z
    .locals 0

    .line 1130
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    return p0
.end method

.method public getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 869
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 871
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 744
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 893
    sget v0, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 895
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 905
    sget v0, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    .line 907
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTwoPhoneIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1053
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTwoPhoneIconImageView()Landroid/widget/ImageView;
    .locals 0

    .line 1059
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 389
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 267
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 269
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 270
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClock:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 271
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 276
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenFertilizer:Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

    .line 277
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->registerIconManager(Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;)Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 283
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    .line 284
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PhoneStatusBarView"

    const-string/jumbo v1, "updateTwoPhoneIcons attached"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onAttachedToWindow()V

    .line 303
    :cond_4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_5

    .line 304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :cond_5
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .line 515
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 516
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 349
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 357
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IndicatorGarden] onConfigurationChanged() from View - newConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenFertilizer:Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->onConfigChanged()V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 310
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 311
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 312
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClock:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 313
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenFertilizer:Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenFertilizer;->destroy()V

    .line 335
    :cond_3
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    .line 336
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getTicket()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->removeIndicatorIconManager(I)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onDetachedFromWindow()V

    .line 342
    :cond_4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_5

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :cond_5
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .line 527
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 528
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 225
    sget v0, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    .line 226
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClock:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 227
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 228
    sget v0, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    .line 230
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 231
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v1, :cond_0

    .line 232
    sget v2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->HOME_INDICATOR:I

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIndicatorType(Landroid/view/ViewGroup;I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setClockManager(Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;)V

    .line 237
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->status_bar_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    .line 239
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 240
    sget v0, Lcom/android/systemui/R$id;->system_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    .line 241
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$layout;->samsung_status_bar_network_speed_view:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setInStatusBar(Z)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/systemui/BatteryMeterView;->setParentViewTag(I)V

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_4

    const-string v1, "PhoneStatusBarView"

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 255
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->ongoing_call_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOngoingCallChip:Landroid/view/View;

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 703
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 705
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .line 452
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 3

    .line 472
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 475
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mState:I

    if-eq v0, v1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Panel is open : isKeyguardVIRunning : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isKeyguardVIRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PhoneStatusBarView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "QPN001"

    const-string v2, "QPNE0001"

    .line 480
    invoke-static {v0, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 431
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 437
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 438
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 491
    const-class v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V

    if-nez v0, :cond_1

    .line 502
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 507
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    .line 521
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 522
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    .line 423
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCommandQueue.panelsEnabled() : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PhoneStatusBarView"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 1

    .line 549
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onStatusBarPanelStateChanged()V

    .line 555
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExpansionChangedListeners:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 556
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    .line 557
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;->onExpansionChanged(FZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1

    .line 538
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 542
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_0
    return-void

    .line 539
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "minFraction cannot be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 2

    const-string v0, "KeyguardVisibleMonitor"

    const-string v1, "mHideExpandedRunnable is cancelled"

    .line 460
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 191
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 197
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarView"

    const-string/jumbo v1, "updateTwoPhoneIcons setBar"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 207
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBgColor(I)V

    :cond_1
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBgColorCanvasView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBgColorCanvasView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 975
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCoverMargin(IZ)V
    .locals 1

    .line 1113
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->updateCoverMargin(IZ)V

    :cond_0
    return-void
.end method

.method public setExpansionChangedListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mExpansionChangedListeners:Ljava/util/List;

    return-void
.end method

.method public setHeadsUpVisible(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOngingCallChipVisibility()V

    return-void
.end method

.method public setRestrictedVisibleByKnox(Z)V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlockVisibleByKnox:Z

    if-eq v0, p1, :cond_1

    .line 752
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlockVisibleByKnox:Z

    if-nez p1, :cond_0

    .line 753
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 754
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setShowOngoingCallChip(Z)V
    .locals 0

    .line 1125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldShowOngoingCallChip:Z

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    .line 1120
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mState:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 768
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlockVisibleByKnox:Z

    if-eqz v1, :cond_0

    move p1, v0

    .line 772
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .locals 6

    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->resetAndGetLastPanelInvisibleReason()I

    move-result v0

    .line 688
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 689
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getPanelInvisibleReason()I

    move-result v4

    .line 690
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-ne v5, v1, :cond_3

    if-nez v1, :cond_4

    if-eq v0, v4, :cond_4

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 693
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHeadsUpVisible:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v3

    const/4 p0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p0

    const-string p0, "PhoneStatusBarView"

    const-string/jumbo v2, "shouldPanelBeVisible %b / headUpVisible=%b, why=%d"

    .line 692
    invoke-static {p0, v2, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v1
.end method

.method public updateCarrierInformationViews()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->addCarrierInformationView()V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->removeCarrierInformationView()V

    .line 717
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->addCarrierInformationView()V

    goto :goto_1

    .line 721
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->removeCarrierInformationView()V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 2

    .line 822
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_0

    .line 823
    const-class v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isPinnedEdge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDotMarginForEdge(Z)V

    .line 825
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    .line 572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->display_cutout_margin_consumption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 575
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotiIconWidth:I

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateStatusBarHeight()V

    .line 589
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 590
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->updateResources()V

    :cond_1
    return-void
.end method
