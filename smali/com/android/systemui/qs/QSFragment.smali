.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# instance fields
.field private mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mExpandAnimating:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mIsHeightAniamtorRunning:Z

.field private mIsNavBarRotationOn:Z

.field private mIsNeeded:Z

.field private mLastHeaderTranslation:F

.field private mLastKeyguardAndExpanded:Z

.field private mLastQSExpansion:F

.field private mLastViewHeight:I

.field private mLayoutDirection:I

.field private mListening:Z

.field private mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mOrientation:I

.field private mPanelModeController:Lcom/android/systemui/qs/PanelModeController;

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSButton:Lcom/android/systemui/qs/buttons/QSButtonView;

.field private mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

.field private mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

.field private mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

.field private mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field protected mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field private final mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private final mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mQsDisabled:Z

.field mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsFullyExpanded:Z

.field private final mQsMediaHost:Lcom/android/systemui/media/MediaHost;

.field private mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private mQuickQsOffsetHeight:I

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mRotationLocked:Z

.field private mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

.field private mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowCollapsedOnKeyguard:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTmpLocation:[I

.field private mTransitioningToFullShade:Z

.field private mTranslateWhileExpanding:Z


# direct methods
.method public static synthetic $r8$lambda$3zvw7bVBDhwh3GV3GSYsq-B3ULI(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$1(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$SU_vwOjIqGCZqnW_U4x6TV7pczk(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTvt7moPVBPdCeAzjAAkQwspBis(Lcom/android/systemui/qs/QSFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUchIneYDy4TM4RTrUBsxshgISw(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->lambda$onViewCreated$3()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/qs/PanelModeController;)V
    .locals 3

    move-object v0, p0

    move-object v1, p5

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v2, -0x40800000    # -1.0f

    .line 109
    iput v2, v0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 129
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    const/4 v2, 0x1

    .line 173
    iput v2, v0, Lcom/android/systemui/qs/QSFragment;->mOrientation:I

    .line 1005
    new-instance v2, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1021
    new-instance v2, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    move-object v2, p1

    .line 210
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move-object v2, p2

    .line 211
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 212
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v2, p6

    .line 213
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    move-object v2, p7

    .line 214
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    move-object v2, p8

    .line 215
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    move-object v2, p10

    .line 216
    iput-object v2, v0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-interface {p5, v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    .line 218
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    move-object v1, p11

    .line 219
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object v1, p12

    .line 220
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v1, p9

    .line 221
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p4

    .line 222
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p13

    .line 223
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v1, p14

    .line 226
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p15

    .line 227
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v1, 0x0

    .line 228
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSFragment;->mIsNeeded:Z

    move-object/from16 v1, p16

    .line 232
    iput-object v1, v0, Lcom/android/systemui/qs/QSFragment;->mPanelModeController:Lcom/android/systemui/qs/PanelModeController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSFragment;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/plugins/qs/QS$HeightListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private fixPortraitForCustomizerIfNeeded()V
    .locals 3

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLocked:Z

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsNavBarRotationOn:Z

    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsNeeded:Z

    .line 1051
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLocked:Z

    if-nez v1, :cond_0

    const-string v1, "QS"

    const-string v2, "preventing auto rotation temporarily to keep screen in portrait mode"

    .line 1052
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedByEdit(Z)V

    .line 1055
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsNavBarRotationOn:Z

    if-eqz v0, :cond_1

    .line 1056
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarRotateSuggestion(Z)V

    :cond_1
    return-void
.end method

.method private freePortraitForCustomizerIfNeeded()V
    .locals 3

    .line 1062
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsNeeded:Z

    if-eqz v0, :cond_2

    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "QS"

    const-string v2, "Updating rotation lock to it\'s original state"

    .line 1064
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedByEdit(Z)V

    .line 1067
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsNavBarRotationOn:Z

    if-eqz v0, :cond_1

    .line 1068
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarRotateSuggestion(Z)V

    .line 1070
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mIsNeeded:Z

    :cond_2
    return-void
.end method

.method private getTotalBottomMargin(Landroid/view/View;)F
    .locals 3

    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 900
    instance-of v1, p1, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    return p0
.end method

.method private headerWillBeAnimating()Z
    .locals 2

    .line 909
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isKeyguardState()Z
    .locals 1

    .line 628
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;IIII)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {p1}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->onQsScrollingChanged()V

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    if-eqz p0, :cond_0

    .line 275
    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/qs/QS$ScrollListener;->onQsPanelScrollChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p7, p9

    sub-int/2addr p3, p5

    if-eq p7, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 371
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$3()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->requestAnimatorUpdate()V

    return-void
.end method

.method private pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V
    .locals 3

    .line 874
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 877
    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->getTotalBottomMargin(Landroid/view/View;)F

    move-result p0

    sub-float/2addr p1, p0

    .line 879
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    .line 880
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    .line 881
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p0

    if-eqz p3, :cond_0

    .line 886
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 890
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 892
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private setKeyguardShowing(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 687
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 690
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->setOnKeyguard(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 698
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz p0, :cond_1

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->setKeyguardShowing(Z)V

    :cond_1
    return-void
.end method

.method private updateMediaPositions()V
    .locals 4

    .line 861
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 863
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mTmpLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 865
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 866
    invoke-virtual {v3}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 867
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    .line 869
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQqsMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSFragment;->pinToBottom(FLcom/android/systemui/media/MediaHost;Z)V

    :cond_0
    return-void
.end method

.method private updateQsBounds()V
    .locals 5

    .line 848
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 853
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 854
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 855
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 854
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateQsState()V
    .locals 8

    .line 597
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 599
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v0

    .line 602
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v6, 0x4

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 606
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_6

    :cond_5
    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V

    .line 608
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 609
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v5, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_8

    :cond_7
    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v6

    .line 608
    :goto_5
    invoke-interface {v4, v5}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 613
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :cond_b
    :goto_6
    invoke-interface {v4, v1}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v1, :cond_c

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v2, v6

    :goto_7
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_d

    .line 618
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQsExpanded(Z)V

    .line 620
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_e

    .line 621
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/bar/BarController;->setExpanded(Z)V

    :cond_e
    return-void
.end method

.method private updateShowCollapsedOnKeyguard()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 633
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eq v0, v1, :cond_2

    .line 634
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 637
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->setShowCollapsedOnKeyguard(Z)V

    if-nez v0, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public animateHeaderSlidingOut()V
    .locals 3

    .line 916
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 920
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 921
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 922
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 923
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 924
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 936
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 1

    .line 576
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 582
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    .line 583
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 584
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    .line 585
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->disable(IIZ)V

    .line 586
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 588
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mQSButton:Lcom/android/systemui/qs/buttons/QSButtonView;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/buttons/QSButtonView;->disable(IIZ)V

    .line 590
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz p3, :cond_3

    .line 591
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/bar/BarController;->disable(IIZ)V

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QSFragemnt state :: "

    .line 1093
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mHeader  visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mQSPanel visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelController;->getView()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mQsExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mQsFullyExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsFullyExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mStackScrollOverscrolling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastQsExpansion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mQsDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mListening = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isKeyguardState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isShowingDetail() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isShowingDetail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isCustomizing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->gatherState()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "QS"

    .line 1103
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getAnimatorManager()Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
    .locals 0

    .line 1076
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    return-object p0
.end method

.method public getBarController()Lcom/android/systemui/qs/bar/BarController;
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    return-object p0
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 981
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 982
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 983
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 985
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object p0
.end method

.method public getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public getQsExpandedFraction()F
    .locals 1

    .line 538
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getDesiredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    return-object p0
.end method

.method public hideImmediately()V
    .locals 1

    .line 1001
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1002
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public initLasExpansionHeight()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 404
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0

    .line 457
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method public isFullyCollapsed()Z
    .locals 1

    .line 528
    iget p0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

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

.method isListening()Z
    .locals 0

    .line 452
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

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

.method public notifyCustomizeChanged()V
    .locals 5

    .line 951
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 952
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v0

    .line 953
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 955
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->fixPortraitForCustomizerIfNeeded()V

    goto :goto_1

    .line 958
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->freePortraitForCustomizerIfNeeded()V

    .line 961
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-interface {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 962
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 965
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    if-eqz p0, :cond_4

    .line 966
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 476
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 482
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onRtlChanged()V

    .line 489
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->initLasExpansionHeight()V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mOrientation:I

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 239
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 240
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 239
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 242
    sget p1, Lcom/android/systemui/R$layout;->qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 409
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    .line 416
    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelModeController:Lcom/android/systemui/qs/PanelModeController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PanelModeController;->onDestroy()V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->removeCallback()V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->destroyQSViews()V

    .line 431
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    .line 434
    sget-object p0, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    const-string v0, "QSFragment"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/PanelScreenShotLogger;->removeLogProvider(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 440
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 1032
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1033
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setKeyguardShowing(Z)V

    .line 1034
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    .line 1035
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v2, :cond_1

    .line 1036
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onStateChanged(I)V

    .line 1039
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-ne p1, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetail;->setKeyguardShowing(Z)V

    .line 1042
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImplController;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsComponentFactory:Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/dagger/QSFragmentComponent;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 249
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 251
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsAnimationStateProvider()Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    .line 254
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 257
    sget v1, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 258
    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 262
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 278
    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetail;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetail;->setAnimStateProvider(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V

    .line 282
    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    sget v2, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanelController;->setHeaderContainer(Landroid/view/ViewGroup;)V

    .line 284
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 286
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailDisplayer;->setQsPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    .line 288
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    .line 289
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 291
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 296
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSButtonViewController()Lcom/android/systemui/qs/buttons/QSButtonViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    .line 297
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->getView()Lcom/android/systemui/qs/buttons/QSButtonView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSButton:Lcom/android/systemui/qs/buttons/QSButtonView;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mPanelModeController:Lcom/android/systemui/qs/PanelModeController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetail;->setPanelModeController(Lcom/android/systemui/qs/PanelModeController;)V

    .line 306
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCinemaCompany()Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    .line 309
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 311
    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/bar/BarController;->setQS(Lcom/android/systemui/plugins/qs/QS;)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    new-instance v2, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/bar/BarController;->setCallback(Lcom/android/systemui/qs/bar/BarController$BarItemCallback;)V

    .line 339
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 340
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setQs(Lcom/android/systemui/qs/QSFragment;)V

    const-string v1, "expanded"

    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v2, "listening"

    .line 344
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 348
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 353
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 356
    new-instance v2, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsExpandAnimator()Lcom/android/systemui/qs/animator/QsExpandAnimator;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsOpenAnimator()Lcom/android/systemui/qs/animator/QsOpenAnimator;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/QSFragmentComponent;->getQsTransitionAnimator()Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;-><init>(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 357
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    if-eqz p2, :cond_1

    .line 358
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 360
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updatePanelExpanded(Z)V

    .line 362
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSDetail;->setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V

    .line 363
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V

    .line 366
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    .line 367
    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 374
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    new-instance p2, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setUsingHorizontalLayoutChangeListener(Ljava/lang/Runnable;)V

    .line 383
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {p1}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->onViewCreated()V

    .line 387
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->updateAvailableTileImage()V

    .line 391
    :cond_2
    sget-object p1, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    const-string p2, "QSFragment"

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/PanelScreenShotLogger;->removeLogProvider(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/util/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method

.method public setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 533
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 552
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    .line 554
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 941
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExpanded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 672
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->setListening(ZZ)V

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->setExpanded(Z)V

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetail;->setQsExpanded(Z)V

    return-void
.end method

.method public setFancyClipping(IIIZ)V
    .locals 2

    .line 500
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_4

    .line 502
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQSClipBound(II)V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsOffsetHeight:I

    if-ge v0, p1, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQsMinExpansionHeight()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mIsHeightAniamtorRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 508
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isUpwardScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 512
    :goto_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpandImmediate:Z

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getDesiredHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQsMinExpansionHeight()I

    move-result p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 518
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 522
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSContainerImpl;->setFancyClipping(IIIZ)V

    :cond_5
    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 728
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 570
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setIsHeightAnimationRunning(Z)V
    .locals 0

    .line 1111
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mIsHeightAniamtorRunning:Z

    return-void
.end method

.method public setIsPanelExpandAnimating(Z)V
    .locals 0

    .line 1121
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mExpandAnimating:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 713
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 714
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->setListening(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSPanelController;->setListening(ZZ)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSButtonViewController:Lcom/android/systemui/qs/buttons/QSButtonViewController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->setListening(ZZ)V

    .line 720
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 706
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 707
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpandImmediate(Z)V
    .locals 0

    .line 1126
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpandImmediate:Z

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 10

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQSExpansion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 759
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    .line 760
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mTranslateWhileExpanding:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const v3, 0x3dcccccd    # 0.1f

    :goto_1
    sub-float v5, p1, v4

    mul-float/2addr v3, v5

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardState()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v7

    .line 763
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->headerWillBeAnimating()Z

    move-result v8

    if-nez v8, :cond_4

    .line 764
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v5, :cond_3

    .line 766
    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    goto :goto_3

    :cond_3
    move v9, v0

    .line 764
    :goto_3
    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 769
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 770
    iget v9, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v9, p1, v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    if-ne v9, v5, :cond_5

    iget v9, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    if-ne v9, v8, :cond_5

    iget v9, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    cmpl-float v9, v9, v0

    if-nez v9, :cond_5

    return-void

    .line 776
    :cond_5
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    .line 777
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 778
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    .line 779
    iput v8, p0, Lcom/android/systemui/qs/QSFragment;->mLastViewHeight:I

    cmpl-float v0, p1, v4

    if-nez v0, :cond_6

    move v0, v6

    goto :goto_4

    :cond_6
    move v0, v7

    :goto_4
    cmpl-float v8, p1, v2

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    .line 784
    :goto_5
    iget-boolean v8, p0, Lcom/android/systemui/qs/QSFragment;->mQsFullyExpanded:Z

    if-eq v8, v0, :cond_a

    .line 785
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQsFullyExpanded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v1, :cond_8

    .line 787
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setFullyExpanded(Z)V

    .line 789
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v1, :cond_9

    .line 790
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/BarController;->setQsFullyExpanded(Z)V

    .line 792
    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsFullyExpanded:Z

    .line 795
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v8

    sub-int/2addr v1, v8

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 796
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v1, v8

    int-to-float v8, v1

    mul-float/2addr v3, v8

    .line 798
    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v9, :cond_b

    .line 800
    invoke-virtual {v9, p1}, Lcom/android/systemui/qs/bar/BarController;->setExpandedPosition(F)V

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_b

    cmpg-float v2, p1, v4

    if-gez v2, :cond_b

    .line 802
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    mul-float/2addr v8, p1

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/qs/bar/BarController;->setQsExpansionHeight(I)V

    :cond_b
    if-gez v1, :cond_c

    .line 808
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->initLasExpansionHeight()V

    return-void

    .line 812
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1, v7, p1, v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setExpansion(ZFF)V

    cmpg-float v1, p1, v4

    if-gez v1, :cond_d

    float-to-double v1, p1

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v1, v8

    if-lez v1, :cond_d

    .line 814
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 815
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    .line 818
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    move v4, p1

    :goto_6
    invoke-interface {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 819
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setRevealExpansion(F)V

    .line 820
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(FF)V

    .line 821
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(FF)V

    if-eqz v6, :cond_f

    .line 826
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p2, v7}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 828
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    if-nez v0, :cond_10

    .line 832
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 833
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 834
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 836
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsBounds()V

    .line 839
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSCinema:Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;

    invoke-interface {p2, p1}, Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;->setPosition(F)V

    .line 841
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz p2, :cond_11

    .line 842
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQsExpansionPosition(F)V

    .line 844
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateMediaPositions()V

    return-void
.end method

.method public setQuickQsOffsetHeight(I)V
    .locals 0

    .line 1086
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsOffsetHeight:I

    return-void
.end method

.method public setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    return-void
.end method

.method public setStackScrollLayoutController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method

.method public setTransitionToFullShadeAmount(FZ)V
    .locals 0

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 742
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    if-eq p1, p2, :cond_1

    .line 743
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mTransitioningToFullShade:Z

    .line 744
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateShowCollapsedOnKeyguard()V

    .line 745
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method

.method public setTranslateWhileExpanding(Z)V
    .locals 0

    .line 733
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mTranslateWhileExpanding:Z

    return-void
.end method
