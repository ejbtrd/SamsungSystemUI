.class public Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;
.super Ljava/lang/Object;
.source "MiniSViewCoverViewAnimator.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;
    }
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# direct methods
.method public static synthetic $r8$lambda$09UNF-WavtBZvCZOabp9QzgY_YQ(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->lambda$startDismissAnimation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4k7xb-WxB9hPcfowqWqwhD3ox68(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->lambda$startToastAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay3TSOT_85Wac0wvuRzayjK966g(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->lambda$startDismissConfirmAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VFxk2qwKeB02UcGpYNX3yORZc-o(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->lambda$startShowConfirmAnimation$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d

    .line 52
    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->ANIMATION_DURATION:I

    .line 56
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 59
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 60
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$0()V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startDismissConfirmAnimation$2()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startShowConfirmAnimation$1()V
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startToastAnimation$3()V
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method


# virtual methods
.method public cancelHideConfirmAnimation()V
    .locals 0

    return-void
.end method

.method public cancelShowConfirmAnimation()V
    .locals 0

    return-void
.end method

.method public initializeSelectedActionView()V
    .locals 0

    return-void
.end method

.method public isHideConfirmAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSafeModeConfirm()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowConfirmAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    return-void
.end method

.method public setListViewLand()V
    .locals 0

    return-void
.end method

.method public setListViewPort()V
    .locals 0

    return-void
.end method

.method public showMainViewLand()V
    .locals 0

    return-void
.end method

.method public showMainViewPort()V
    .locals 0

    return-void
.end method

.method public startDismissAnimation(Z)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setFlagsForForceDismiss(Z)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "power"

    if-ne p1, v1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104054f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    const-wide/16 v1, 0x7d

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public startDismissConfirmAnimation()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getForceDismissState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setFlagsForForceDismiss(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->restoreViewModel()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startDismissSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public startSetSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public startShowAnimation()V
    .locals 0

    return-void
.end method

.method public startShowConfirmAnimation()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startShowSafeModeAnimation()V
    .locals 0

    return-void
.end method

.method public startToastAnimation()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getToastMessage()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
