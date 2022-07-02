.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public static synthetic $r8$lambda$jZ7xAHeI23uISMmlvmjrG_l5IxQ(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->lambda$onFragmentViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$wElbGibZK5HlIend0XefMod10UQ(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->lambda$onFragmentViewCreated$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 5202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFragmentViewCreated$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    .line 5225
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->initLasExpansionHeight()V

    .line 5227
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;->onQsHeightChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentViewCreated$1(Ljava/lang/Boolean;)V
    .locals 4

    .line 5231
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5232
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v0, 0x168

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;JJ)V

    .line 5234
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->animateNextTopPaddingChange()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 5205
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 5206
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 5207
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 5208
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 5209
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 5210
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setTranslateWhileExpanding(Z)V

    .line 5213
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5230
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 5237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setQS(Lcom/android/systemui/plugins/qs/QS;)V

    .line 5238
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsContainer(Landroid/view/ViewGroup;)V

    .line 5239
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QS;->setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V

    .line 5240
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 5243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController;

    .line 5244
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/BarController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/qs/bar/BarController;->getMediaPlayer()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 5245
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->addVisibilityListener(Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;)V

    .line 5249
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getAnimatorManager()Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 5250
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 5251
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setHeadsUpTouchHelper(Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;)V

    .line 5252
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 5253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSFragment;->setStackScrollLayoutController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 5262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 5263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    :cond_0
    return-void
.end method
