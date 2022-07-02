.class public Lcom/android/systemui/qs/animator/QsTransitionAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "QsTransitionAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/animator/SecQSAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;,
        Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private mContext:Landroid/content/Context;

.field private mCustomHideAnimSet:Landroid/animation/AnimatorSet;

.field private mCustomHideAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomShowAnimSet:Landroid/animation/AnimatorSet;

.field private mCustomShowAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizer:Landroid/view/View;

.field private mCustomizerActiveTiles:Landroid/view/View;

.field private mCustomizerAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizerAvailableTiles:Landroid/view/View;

.field private mCustomizerBottomButtons:Landroid/view/View;

.field mCustomizerCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;

.field private mCustomizerContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizerPanelSummary:Landroid/view/View;

.field private mDetailAnimListener:Landroid/animation/Animator$AnimatorListener;

.field mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

.field private mDetailContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailHideAnimSet:Landroid/animation/AnimatorSet;

.field private mDetailHideAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailShowAnimSet:Landroid/animation/AnimatorSet;

.field private mDetailShowAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailView:Landroid/view/View;

.field private mDetailViewContainer:Landroid/view/View;

.field private mDetailYDiff:I

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderClock:Landroid/view/View;

.field private mHeaderDateButtonContainer:Landroid/view/View;

.field private final mLazyExpandAnimator:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelAnimListener:Landroid/animation/Animator$AnimatorListener;

.field private final mPanelContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpanded:Z

.field private mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

.field private mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

.field private mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

.field private mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

.field private mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelYDiff:I

.field private mQsFullyExpanded:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

.field private mSystemIcons:Landroid/view/View;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$TdamT-2CoWqphikMIIXRxkMR_kY(Lcom/android/systemui/qs/animator/QsTransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->lambda$transitionCustomizer$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFk-Z6wpoODjtSpl5-nWrwU3Fno(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->lambda$closeCustomizerQuickly$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;",
            "Lcom/android/systemui/qs/bar/BarController;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimators:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimators:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 184
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 204
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$4;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 226
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    .line 228
    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->setQsAnimator(Lcom/android/systemui/qs/animator/SecQSAnimator;)V

    .line 229
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLazyExpandAnimator:Ldagger/Lazy;

    .line 230
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Ldagger/Lazy;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLazyExpandAnimator:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    return p0
.end method

.method private clearCustomizerView()V
    .locals 3

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "clearCustomizerView"

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 587
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 588
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;->hideCustomizerAnimEnd()V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerOpening(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerShowing(Z)V

    .line 594
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {p0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerClosing(Z)V

    return-void
.end method

.method private clearDetailView()V
    .locals 2

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "clearDetailView"

    .line 567
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setTriggeredExpand(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailOpening(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailShowing(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailClosing(Z)V

    .line 577
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {p0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setPanelOpenAnimating(Z)V

    return-void
.end method

.method private closeCustomizerQuickly()V
    .locals 7

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 522
    instance-of v5, v1, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/android/systemui/R$id;->page_indicator_container:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 525
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 528
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 535
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 539
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 540
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private closeDetailQuickly()V
    .locals 4

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 491
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 492
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 493
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 494
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 499
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 500
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 501
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 502
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    .line 506
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailClosing(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelYDiff:I

    .line 236
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailYDiff:I

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->updateAnimators()V

    return-void
.end method

.method private synthetic lambda$closeCustomizerQuickly$1()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    return-void
.end method

.method private synthetic lambda$transitionCustomizer$0(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 424
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanelForCustomizer(Z)V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showCustomizer(Z)V

    return-void
.end method

.method private makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 546
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p4, v2, v3

    .line 547
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    aput-object p4, p0, v3

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v1, [F

    int-to-float p5, p5

    aput p5, v0, v3

    .line 548
    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    aput-object p4, p0, v1

    .line 546
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p1, p3

    .line 550
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 551
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private restorePanelView()V
    .locals 2

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SecQsTransitionAnimator"

    const-string/jumbo v1, "restorePanelView"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 560
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 561
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private showCustomizer(Z)V
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 512
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 514
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method private showDetail(Z)V
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 465
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isTriggeredExpanding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailYDiff:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailYDiff:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 466
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 467
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 469
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 470
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void
.end method

.method private showDetailInstantly()V
    .locals 3

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 477
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 481
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailOpening(Z)V

    .line 485
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailShowing(Z)V

    return-void
.end method

.method private showQsPanelForCustomizer(Z)V
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 447
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 457
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 458
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void
.end method

.method private showQsPanelForDetail(Z)V
    .locals 3

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 434
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v2}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isTriggeredExpanding()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelYDiff:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelYDiff:I

    neg-int v2, v2

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 441
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p1, :cond_4

    const/high16 p1, 0x40000

    goto :goto_3

    :cond_4
    const/high16 p1, 0x60000

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 252
    sget v1, Lcom/android/systemui/R$id;->leftLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderClock:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->rightLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSystemIcons:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->quick_qs_date_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderClock:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBarItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 260
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v0, 0x0

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_detail_extended_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailViewContainer:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->sec_qs_customize:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizer:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_available_page_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerAvailableTiles:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_active_page_tile_layout_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerActiveTiles:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_edit_summary_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerPanelSummary:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_customize_panel_header_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerBottomButtons:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerAvailableTiles:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerActiveTiles:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerPanelSummary:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerBottomButtons:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyQSViews()V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 658
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 663
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 664
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderClock:Landroid/view/View;

    .line 665
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHeaderDateButtonContainer:Landroid/view/View;

    .line 666
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 667
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailViewContainer:Landroid/view/View;

    .line 668
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizer:Landroid/view/View;

    .line 669
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerAvailableTiles:Landroid/view/View;

    .line 670
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerActiveTiles:Landroid/view/View;

    .line 671
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerPanelSummary:Landroid/view/View;

    .line 672
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerBottomButtons:Landroid/view/View;

    .line 673
    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SecQSsTransitionAnimator ============================================= "

    .line 679
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, " mPanelContents "

    .line 680
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " visibility = "

    const-string v4, " translationY = "

    const-string v5, " : alpha = "

    const-string v6, "  "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, " mDetailContents "

    .line 684
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, " mCustomizerContents "

    .line 688
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string p0, "============================================================== "

    .line 692
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onPanelClosed()V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    .line 620
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_3

    .line 622
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 607
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onStateChanged(I)V

    .line 608
    iget p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 609
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    :cond_2
    return-void
.end method

.method public setAnimaStateCallback(Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    return-void
.end method

.method public setCustomizerCallback(Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;

    return-void
.end method

.method public setDetailCallback(Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsFullyExpanded:Z

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    if-nez p1, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->destroyQSViews()V

    return-void

    .line 648
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 649
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->init()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 628
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpanded(Z)V

    .line 629
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    if-nez p1, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->restorePanelView()V

    :cond_0
    return-void
.end method

.method public transitionCustomizer(Z)V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionCustomizer show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerOpening(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerShowing(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerClosing(Z)V

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    if-nez v0, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->closeCustomizerQuickly()V

    return-void

    .line 423
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;Z)V

    if-eqz p1, :cond_3

    const-wide/16 p0, 0x96

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x0

    :goto_1
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public transitionDetail(ZZ)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionDetail show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " triggeredExpand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailOpening(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {v0, p2}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setTriggeredExpand(Z)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailShowing(Z)V

    .line 392
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailClosing(Z)V

    .line 393
    iget-boolean p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    if-nez p2, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->closeDetailQuickly()V

    return-void

    .line 399
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->isSettingsPanelExpanding()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showDetailInstantly()V

    goto :goto_1

    .line 402
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {p2}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isTriggeredExpanding()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    xor-int/lit8 p2, p1, 0x1

    .line 403
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanelForDetail(Z)V

    .line 404
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showDetail(Z)V

    :goto_1
    return-void
.end method

.method public updateAnimators()V
    .locals 10

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e2e147b    # 0.17f

    invoke-direct {v7, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->updateView()V

    .line 296
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 299
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    const/16 v2, 0x172

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForDetail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForDetail:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 308
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForDetail:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForDetail:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 313
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 316
    instance-of v0, v1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_3

    .line 317
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    const/16 v2, 0x172

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 322
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSystemIcons:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimatorsForCustomizer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelShowAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 330
    instance-of v0, v1, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/android/systemui/R$id;->page_indicator_container:I

    if-ne v0, v2, :cond_5

    goto :goto_4

    .line 334
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 331
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    const/16 v2, 0x172

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 336
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mSystemIcons:Landroid/view/View;

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimSetForCustomizer:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelHideAnimatorsForCustomizer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 340
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 343
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    const/16 v2, 0x170

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 352
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 357
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimSet:Landroid/animation/AnimatorSet;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 360
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimators:Ljava/util/ArrayList;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 362
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomShowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimSet:Landroid/animation/AnimatorSet;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomizerContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 371
    iget-object v9, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimators:Ljava/util/ArrayList;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->makeTransitionAnimator(Landroid/view/View;IIFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 373
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mCustomHideAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public updatePanelExpanded(Z)V
    .locals 0

    .line 636
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    return-void
.end method
