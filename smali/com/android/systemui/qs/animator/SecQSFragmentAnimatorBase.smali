.class public abstract Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.super Ljava/lang/Object;
.source "SecQSFragmentAnimatorBase.java"


# instance fields
.field TAG:Ljava/lang/String;

.field protected mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field protected mIsExpanding:Z

.field protected mPanelExpanded:Z

.field protected mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field protected mQs:Lcom/android/systemui/plugins/qs/QS;

.field protected mQsExpandImmediate:Z

.field protected mQsExpanded:Z

.field protected mQsFullyExpanded:Z

.field protected mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecQSFragmentAnimatorBase"

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsExpanding:Z

    return-void
.end method


# virtual methods
.method public abstract destroyQSViews()V
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected isThereNoView()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPanelClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    return-void
.end method

.method public onPanelOpened()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    return-void
.end method

.method public setHeadsUpTouchHelper(Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method public setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    return-void
.end method

.method public setPanelExpanding(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsExpanding:Z

    return-void
.end method

.method public setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public setQSClipBound(II)V
    .locals 0

    return-void
.end method

.method public abstract setQs(Lcom/android/systemui/plugins/qs/QS;)V
.end method

.method public setQsExpandImmediate(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    return-void
.end method

.method public setQsExpansionPosition(F)V
    .locals 0

    return-void
.end method

.method public abstract updateAnimators()V
.end method

.method public updatePanelExpanded(Z)V
    .locals 0

    return-void
.end method
