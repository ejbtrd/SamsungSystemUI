.class Lcom/android/systemui/navigationbar/NavigationBar$2;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$400(Lcom/android/systemui/navigationbar/NavigationBar;)V

    if-eqz p1, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$500(Lcom/android/systemui/navigationbar/NavigationBar;)V

    :cond_0
    return-void
.end method

.method public onHomeRotationEnabled(Z)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setHomeRotationEnabled(Z)V

    return-void
.end method

.method public onNavBarButtonAlphaChanged(FZ)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 406
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 409
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p2}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p2}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1500(Lcom/android/systemui/navigationbar/NavigationBar;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v2

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 412
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundOverrideAlpha(F)V

    :cond_3
    move p0, v2

    goto :goto_1

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    :cond_5
    move p0, p2

    move p2, v2

    :goto_1
    if-eqz v0, :cond_9

    if-nez p2, :cond_7

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x4

    .line 418
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    if-eqz p2, :cond_8

    const/high16 p1, 0x3f800000    # 1.0f

    .line 420
    :cond_8
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    :cond_9
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setSkipOverrideUserLockPrefsOnce()V

    return-void
.end method

.method public onPrioritizedRotation(I)V
    .locals 4

    .line 378
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$700(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "onPrioritizedRotation rotation : %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NavigationBar"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$802(Lcom/android/systemui/navigationbar/NavigationBar;I)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 383
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->access$902(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z

    .line 385
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)V

    return-void
.end method

.method public onToggleRecentApps()V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setSkipOverrideUserLockPrefsOnce()V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method
