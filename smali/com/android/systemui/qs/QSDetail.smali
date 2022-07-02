.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# instance fields
.field private mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mAnimatingOpen:Z

.field private mClosingDetail:Z

.field private mContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mCornerRoundRadius:I

.field private mCutOutHeight:I

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailButtonsDivider:Landroid/view/View;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailContentParent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailExtendedContainer:Landroid/view/ViewGroup;

.field private mDetailExtendedText:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field mKeyguardShowing:Z

.field private mNavBarInset:I

.field private mOpenX:I

.field private mOpenY:I

.field private mOrientation:I

.field mPath:Landroid/graphics/Path;

.field private mQsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

.field protected mQsDetailHeader:Landroid/view/View;

.field protected mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field mQsExpanded:Z

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field mRect:Landroid/graphics/RectF;

.field private mScanState:Z

.field private mShouldAnimate:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field private mTriggeredExpand:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$VZtj6pgpWxcP7qbcg9rYNAtBk_E(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->lambda$setupDetailFooter$1(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vq-ZCVfPBawAdmiNLLZoxg0UgrE(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail;->lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDT-N1NNwzfu-hptfAkRWhSKYyc(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->lambda$onPanelModeChanged$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 79
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSEvents;->getQsUiEventsLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/QSDetail;->mNavBarInset:I

    .line 701
    new-instance p1, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 788
    new-instance p1, Lcom/android/systemui/qs/QSDetail$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$6;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 810
    new-instance p1, Lcom/android/systemui/qs/QSDetail$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$7;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 818
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mPath:Landroid/graphics/Path;

    .line 819
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSFooter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetail;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->shouldShowQsDetailHeader()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetail;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleScrollToDetail(II)V

    return-void
.end method

.method private checkPendingAnimations()V
    .locals 2

    .line 689
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_0

    .line 690
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 689
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 680
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-eqz p1, :cond_1

    .line 682
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private handleScrollToDetail(II)V
    .locals 1

    .line 695
    sget v0, Lcom/android/systemui/R$id;->qs_detail_scroll:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    .line 666
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 667
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 673
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p2, :cond_3

    .line 674
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 436
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    .line 437
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object p1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailButtonsDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onPanelModeChanged$3()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSDetail;->handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

.method private synthetic lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 473
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 476
    :cond_0
    const-class p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x3a1

    .line 477
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v1

    .line 476
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 478
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 479
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p3, 0x0

    .line 480
    invoke-interface {p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 481
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_2

    .line 482
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTile(Lcom/android/systemui/plugins/qs/DetailAdapter;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 485
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 487
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 490
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QPDE1007"

    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupDetailFooter$1(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/view/View;)V
    .locals 1

    .line 495
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    .line 499
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 500
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->onDoneButtonClicked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    :cond_1
    return-void
.end method

.method private setDetailExtendedContainerHeight()V
    .locals 3

    .line 578
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQSUpperCabinetHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getDateButtonContainerHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->shouldShowQsDetailHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 581
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPanelMargin()V
    .locals 5

    .line 586
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_TOP_MARGIN:Z

    if-eqz v0, :cond_0

    .line 587
    sget v0, Lcom/android/systemui/R$id;->qs_detail_extended_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 588
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 589
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 594
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 595
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v2, :cond_1

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_bottom_margin_tablet:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_bottom_margin:I

    .line 594
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 596
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 597
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_height_tablet:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_height:I

    .line 596
    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 598
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 601
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 602
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_content_bottom_margin_tablet:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_detail_content_bottom_margin:I

    .line 601
    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-eqz v2, :cond_4

    .line 604
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_detail_content_start_end_margin_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 605
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 607
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 610
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 611
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldShowQsDetailHeader()Z
    .locals 2

    .line 846
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateDetailText()V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->sec_quick_settings_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_detail_button_text_size:I

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->qs_btn_borderless_rect:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->sec_quick_settings_details:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-boolean v1, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 243
    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_text_size:I

    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 246
    sget v0, Lcom/android/systemui/R$dimen;->sec_qs_detail_header_container_text_size:I

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {p0, v0, v3, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_1
    return-void
.end method

.method private updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->shouldShowQsDetailHeader()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 621
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 622
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/systemui/R$drawable;->sec_qs_detail_header_background_on:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->sec_qs_detail_header_background_off:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 624
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->qs_detail_header_on_text_color:I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->qs_detail_header_off_text_color:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    .line 626
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 627
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->qs_detail_header_text_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 631
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_8

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->shouldShowQsDetailHeader()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v3, 0x2

    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setImportantForAccessibility(I)V

    goto :goto_4

    .line 637
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->shouldShowQsDetailHeader()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 638
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 640
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 642
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 643
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->qs_detail_header_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSDetail;->mNavBarInset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 826
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/qs/QSDetail;->mCornerRoundRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 832
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 833
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 325
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 326
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz v2, :cond_3

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setDetailExtendedContainerHeight()V

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    if-eqz p4, :cond_2

    .line 330
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p4, :cond_2

    .line 331
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 333
    const-class p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/CommandQueue;->animateToggleQSExpansion()V

    goto :goto_2

    .line 338
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 340
    :goto_2
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->shouldAnimate()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mShouldAnimate:Z

    .line 341
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 342
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 347
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz p2, :cond_4

    .line 349
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/CommandQueue;->animateToggleQSExpansion()V

    .line 353
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 359
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mShouldAnimate:Z

    :goto_3
    if-eq v3, v2, :cond_5

    move p2, v0

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    if-nez p2, :cond_6

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz v2, :cond_8

    .line 366
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p2

    .line 367
    iget-object p3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, p3, p4, v3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_7

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tile = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " detailView is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSDetail"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 379
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 380
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 381
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 383
    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 384
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->accessibility_quick_settings_detail:I

    new-array p4, v0, [Ljava/lang/Object;

    .line 386
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p4, v1

    .line 384
    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 387
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 389
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 393
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 396
    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 399
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mKeyguardShowing:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsExpanded:Z

    if-eqz p1, :cond_b

    .line 400
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p1, v1}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanelController;->setGridContentVisibility(Z)V

    .line 404
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {p1, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :goto_5
    const/16 p1, 0x20

    .line 406
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->transitionDetail(ZZ)V

    .line 409
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz p1, :cond_c

    .line 410
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->isSettingsPanelExpanding()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 411
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 420
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez p0, :cond_d

    const-string p0, "QPP101"

    .line 421
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public isClosingDetail()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 265
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    move v2, v1

    .line 272
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSDetail;->mCutOutHeight:I

    if-eq v0, v2, :cond_2

    .line 273
    iput v2, p0, Lcom/android/systemui/qs/QSDetail;->mCutOutHeight:I

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setDetailExtendedContainerHeight()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setPanelMargin()V

    goto :goto_0

    .line 278
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSDetail;->mCutOutHeight:I

    if-eqz v0, :cond_2

    .line 279
    iput v1, p0, Lcom/android/systemui/qs/QSDetail;->mCutOutHeight:I

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setDetailExtendedContainerHeight()V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setPanelMargin()V

    .line 285
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/qs/QSDetail;->mNavBarInset:I

    .line 295
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 148
    iput p1, p0, Lcom/android/systemui/qs/QSDetail;->mOrientation:I

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setDetailExtendedContainerHeight()V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setPanelMargin()V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020002

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v0, 0x102001a

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v0, 0x1020019

    .line 164
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->qs_detail_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailButtonsDivider:Landroid/view/View;

    .line 168
    sget v0, Lcom/android/systemui/R$id;->qs_detail_extended_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedContainer:Landroid/view/ViewGroup;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->qs_detail_extended_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedText:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/android/systemui/R$id;->qs_detail_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    .line 173
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->toggle_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 176
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->setPanelMargin()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_detail_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSDetail;->mCornerRoundRadius:I

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailExtendedText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_detail_header_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->sec_qs_detail_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_1

    .line 656
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 657
    new-instance v0, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_detail_action_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailButtonsDivider:Landroid/view/View;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qs_detail_buttons_divider:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAnimStateProvider(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    return-void
.end method

.method public setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V
    .locals 1

    .line 765
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 767
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->getTransitionAnimator()Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 768
    new-instance v0, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->setDetailCallback(Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mKeyguardShowing:Z

    return-void
.end method

.method public setPanelModeController(Lcom/android/systemui/qs/PanelModeController;)V
    .locals 0

    .line 208
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PanelModeController;->addPanelModeChangeListener(Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsExpanded:Z

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 199
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 200
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 201
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSPanelController;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 203
    iput-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 5

    .line 467
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailButtonsDivider:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    .line 512
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/QSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 518
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 519
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 520
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 521
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 522
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 523
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/QSDetail;->updateDetailTitle(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method
