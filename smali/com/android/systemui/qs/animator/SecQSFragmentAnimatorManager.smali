.class public Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "SecQSFragmentAnimatorManager.java"

# interfaces
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# instance fields
.field private mExpandAnimator:Lcom/android/systemui/qs/animator/QsExpandAnimator;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenAnimator:Lcom/android/systemui/qs/animator/QsOpenAnimator;

.field private mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    check-cast p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mExpandAnimator:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 45
    check-cast p2, Lcom/android/systemui/qs/animator/QsOpenAnimator;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mOpenAnimator:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 46
    check-cast p3, Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 48
    sget-object p1, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    new-instance p2, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V

    const-string p0, "QSFragmentAnimator"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method

.method private getAnimationState()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SecQSFragmentAnimatorManager ============================================= "

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mQsExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mQsFullyExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mPanelExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mPanelExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mIsExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mQsExpandImmediate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "============================================================== "

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->gatherState()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->gatherState()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public destroyQSViews()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "destroyQSViews"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->destroyQSViews()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->getAnimationState()Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "Quick Panel Animation State =============================================== "

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 254
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "=========================================================================== "

    .line 256
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->getAnimationState()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionAnimator()Lcom/android/systemui/qs/animator/QsTransitionAnimator;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPanelClosed()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "onPanelClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelClosed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPanelOpened()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "onPanelOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelOpened()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRtlChanged()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "onRtlChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onRtlChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string v1, "onStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFullyExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setFullyExpanded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHeadsUpTouchHelper(Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHeadsUpTouchHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setHeadsUpTouchHelper(Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setHeadsUpTouchHelper(Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setOverscrolling(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPanelExpanding(Z)V
    .locals 1

    .line 212
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelExpanding(Z)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelExpanding(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQSClipBound(II)V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQSClipBound(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setQs"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQsExpandImmediate(Z)V
    .locals 1

    .line 232
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpandImmediate(Z)V

    .line 233
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpandImmediate(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQsExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpanded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQsExpansionPosition(F)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQsExpansionPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQsExpansionPosition(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAnimators()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAnimators"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->updateAnimators()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePanelExpanded(Z)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePanelExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->updatePanelExpanded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
