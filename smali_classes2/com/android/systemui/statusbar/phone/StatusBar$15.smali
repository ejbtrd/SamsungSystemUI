.class Lcom/android/systemui/statusbar/phone/StatusBar$15;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$deferred:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$willAnimateOnKeyguard:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZZ)V
    .locals 0

    .line 3656
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$runnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$dismissShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$deferred:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$willAnimateOnKeyguard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .line 3659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3661
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3665
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 3667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 3670
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$dismissShade:Z

    const/4 v1, 0x0

    const-string v2, "StatusBar"

    if-eqz v0, :cond_4

    .line 3671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v3, :cond_3

    .line 3672
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->needsCollapsePanelWithNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "collapsePanel with no animation"

    .line 3673
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    goto :goto_1

    .line 3676
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZ)V

    goto :goto_1

    .line 3684
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$15$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3686
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3687
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3694
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$deferred:Z

    if-eqz v0, :cond_6

    const-string p0, "ignored deferred"

    .line 3696
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3699
    :cond_6
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$deferred:Z

    return p0
.end method

.method public willRunAnimationOnKeyguard()Z
    .locals 0

    .line 3704
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->val$willAnimateOnKeyguard:Z

    return p0
.end method
