.class Lcom/android/systemui/statusbar/phone/StatusBar$16;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$B5kPVtT8y9K3CoHtd9aMGvVW3TY(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;->lambda$onReceive$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$fDeVjGY9UyadiAOIwa9gpA0n7hM(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;->lambda$onReceive$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fQGgbovU6dLs4nuFZMbVzYC-Vaw(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 3710
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 3742
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/Bubbles;->collapseStack()V

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 2

    .line 3737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3738
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setNotTouchable(Z)V

    .line 3740
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/Bubbles;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3744
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3745
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method private synthetic lambda$onReceive$3()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "Clear all notifications and count major view number from aecmonitor"

    .line 3767
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x94

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 3770
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications()V

    .line 3771
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3772
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "StatusBar#onReceive"

    .line 3713
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3715
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 3716
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3717
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3718
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3719
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3721
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3722
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->collapseStack()V

    .line 3724
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "reason"

    .line 3726
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo p2, "recentapps"

    .line 3727
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    .line 3730
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 3733
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3736
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 3759
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3760
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->showDeviceMonitoringDialog()V

    goto :goto_0

    :cond_5
    const-string v0, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    .line 3762
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3763
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3764
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 3766
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3775
    :cond_7
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_HOME_HUB_TILE_LIST:Z

    if-eqz v0, :cond_9

    const-string v0, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3776
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "home_hub_mode"

    .line 3777
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 3778
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onHomeHubModeChanged(Z)V

    .line 3780
    :cond_8
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_HOME_HUB:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3781
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->onHomeHubModeChanged()V

    .line 3785
    :cond_9
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
