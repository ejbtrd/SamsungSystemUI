.class public Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;
.super Ljava/lang/Object;
.source "SideCoverViewAnimator.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;
    }
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# direct methods
.method public static synthetic $r8$lambda$Mpfji0wKvZUKRcOhRdp8fMByiqY(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->lambda$startShowConfirmAnimation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$at1t4UJS5CkglSPQKwLLea7QdTs(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->lambda$startToastAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$n7M1PlhIfhThBt8CMPNoT0t0TXQ(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->lambda$startDismissAnimation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$v9N4Snwqem49F6CNhWoiwcVnNno(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->lambda$startDismissConfirmAnimation$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d

    .line 53
    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->ANIMATION_DURATION:I

    .line 58
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 61
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 62
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 63
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$0()V
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startDismissConfirmAnimation$2()V
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startShowConfirmAnimation$1()V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method private synthetic lambda$startToastAnimation$3()V
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

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

.method public setCallback(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

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

    .line 77
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setFlagsForForceDismiss(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    const-wide/16 v1, 0x7d

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public startDismissConfirmAnimation()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getForceDismissState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setFlagsForForceDismiss(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->restoreViewModel()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

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

    .line 94
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

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

    .line 184
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getToastMessage()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->COVER_NOTI_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getSelectedActionViewModel()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setColumn(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getAdapter()Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getListView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 194
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 195
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 196
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->getListView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/globalactions/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
