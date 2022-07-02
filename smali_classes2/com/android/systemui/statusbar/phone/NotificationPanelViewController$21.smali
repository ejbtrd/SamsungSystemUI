.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 5575
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 5579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v3, "NPVC.onInterceptTouchEvent : ACTION_DOWN "

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5585
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5586
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 5594
    :cond_2
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5596
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "Dozing"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5601
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5602
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5604
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "iconsOnlyInterceptTouchEvent"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5609
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v2, :cond_6

    .line 5611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 5614
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->isInMultiUserSwitch(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5616
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "isInMultiUserSwitch"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5621
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->isKeyguardUserSwitcherShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5623
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "isKeyguardUserSwitcherShowing"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5629
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 5632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5634
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "bouncer showing"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5638
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string/jumbo v1, "panel_open"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 5640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string/jumbo v1, "panel_open_peek"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 5642
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "headsUp Touch"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5647
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isUpwardScrolling()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_a

    .line 5654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    goto :goto_1

    .line 5663
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setUserTouch(Z)V

    goto :goto_2

    .line 5655
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 5657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5659
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setUserTouch(Z)V

    .line 5660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5666
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 5668
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "mMediaPlayerExpanding"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    :cond_d
    return v2

    .line 5674
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5675
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5677
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "!shouldQuickSettingsIntercept"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5682
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5684
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "QsIntercept"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5689
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5690
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 5691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5693
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v4, "faceWidgetClock"

    invoke-virtual {v3, p1, v2, v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_11

    .line 5696
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    :cond_11
    return v0

    .line 5701
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5702
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 5703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5705
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v1, "faceWidget"

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v0

    .line 5710
    :cond_13
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-ne v0, v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_14

    .line 5711
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5713
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "EmergencyButtonAreaTouchEvent"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5718
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5719
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v3, v2, :cond_17

    .line 5722
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isTouchOnItemViewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_15

    .line 5725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 5727
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string/jumbo v0, "pluginLock"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5730
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 5737
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v3, :cond_18

    goto :goto_3

    :cond_18
    move v3, v1

    goto :goto_4

    :cond_19
    :goto_3
    move v3, v2

    :goto_4
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5739
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isTouchOnEmptyArea(FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1b

    .line 5741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    goto :goto_5

    .line 5744
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 5747
    :cond_1b
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5749
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "KeyguardTouchAnimator"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5754
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5755
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "PANEL_HOME_LAUNCHER_TOUCH"

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v2

    .line 5759
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 5588
    :cond_1e
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBlockTouches : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " || mQsFullyExpanded && mQs.disallowPanelTouches(event) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p0, :cond_1f

    if-eqz v0, :cond_1f

    move p0, v2

    goto :goto_7

    :cond_1f
    move p0, v1

    :goto_7
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, v2, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 5765
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v2, "NPVC.onTouch : ACTION_DOWN "

    invoke-virtual {v0, p2, v1, v2, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5770
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 5771
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 5779
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 5780
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 5781
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 5791
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setUserTouch(Z)V

    goto :goto_1

    .line 5782
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 5784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5786
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setUserTouch(Z)V

    .line 5787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onMediaPlayerScroll(Landroid/view/MotionEvent;)V

    .line 5794
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5795
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6

    .line 5796
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "mMediaPlayerExpanding"

    invoke-virtual {p1, p2, v1, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5798
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    return v3

    .line 5801
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5802
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_8

    .line 5803
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "mMediaPlayerScrolling"

    invoke-virtual {p1, p2, v1, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5805
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onMediaPlayerScroll(Landroid/view/MotionEvent;)V

    return v3

    .line 5811
    :cond_9
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CORNER_GESTURE_ENABLED:Z

    if-eqz v0, :cond_a

    .line 5816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5817
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5818
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "MultiWindowEdgeDetector"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5826
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5828
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "mStatusBar.isBouncerShowingScrimmed()"

    invoke-virtual {p0, p2, v1, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1

    .line 5833
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5834
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5836
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "iconsOnlyTouchEvent"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5842
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_d

    .line 5843
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 5844
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 5849
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 5850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    .line 5852
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 5856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5857
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5858
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    move v0, v3

    goto :goto_2

    :cond_12
    move v0, v1

    :goto_2
    if-eqz v0, :cond_13

    .line 5859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5863
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "!shouldQuickSettingsIntercept()"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5867
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5868
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string/jumbo v4, "panel_open_peek"

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 5872
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5873
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 5874
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 5875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_3

    :cond_16
    move v0, v1

    .line 5877
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5879
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "mOnlyAffordanceInThisMotion"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5883
    :cond_17
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 5885
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5887
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "NPVC onTOuch QS_EXPAND"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5891
    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 5892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string/jumbo v4, "panel_open"

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 5893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHorizontalPanelPosition(F)V

    move v0, v3

    .line 5897
    :cond_19
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5898
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v4

    if-ne v4, v3, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardStatusViewController;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    .line 5899
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 5901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v2, "faceWidgetClock"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    .line 5903
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, v3, :cond_1a

    .line 5904
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    :cond_1a
    return p1

    .line 5909
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5910
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v4

    if-ne v4, v3, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardStatusViewController;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1c

    .line 5911
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 5913
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v0, "faceWidget"

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return p1

    .line 5918
    :cond_1c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5919
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5920
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5921
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v5, v3, :cond_1f

    .line 5922
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5923
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouch() event.getAction() : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5924
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_1d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1e

    :cond_1d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5925
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 5926
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 5928
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 5929
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string/jumbo v0, "pluginLock"

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return p1

    .line 5934
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/SecLockIconViewController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/keyguard/LockIconViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v3

    .line 5939
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 5942
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_FACE_WIDGET_MEDIA_OUTPUT_REMOTE_VIEWS:Z

    if-eqz v2, :cond_21

    .line 5943
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleKeyguardEmptySpaceClickForMediaOutput(Landroid/view/MotionEvent;)V

    .line 5946
    :cond_21
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 5949
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v2

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5950
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 5951
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onAnimatorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_4

    :cond_22
    move v2, v1

    :goto_4
    if-nez v2, :cond_23

    .line 5953
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5955
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->cancelIndicationAreaAnim()V

    .line 5959
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string p1, "keyguard animator"

    invoke-virtual {p0, p2, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v3

    .line 5964
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 5965
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_24

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p0

    if-nez p0, :cond_24

    if-eqz p1, :cond_25

    :cond_24
    move v1, v3

    :cond_25
    return v1

    .line 5773
    :cond_26
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlockTouches : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " || mQs.isCustomizing() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 5774
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5773
    invoke-virtual {p1, p2, v1, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addTouchLog(Landroid/view/MotionEvent;ZLjava/lang/String;Z)V

    return v1
.end method
