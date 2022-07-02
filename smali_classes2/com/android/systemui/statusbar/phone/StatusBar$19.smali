.class Lcom/android/systemui/statusbar/phone/StatusBar$19;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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
.method public static synthetic $r8$lambda$BAHajFbAIVeVyG-Q8hqF4Fzbzu8(Lcom/android/systemui/statusbar/phone/StatusBar$19;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19;->lambda$onFinishedGoingToSleep$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rcS1k771SuxkJRnNQKfrCak2ikE(Lcom/android/systemui/statusbar/phone/StatusBar$19;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19;->lambda$onFinishedGoingToSleep$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4944
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$0()V
    .locals 1

    .line 4962
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$1()V
    .locals 0

    .line 4970
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onEmergencyActionLaunchGestureDetected()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 3

    .line 4947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 4948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4951
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2702(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 4953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 4957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4958
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$19$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$19;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4965
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$19$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4972
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 5041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 5042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 5043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 5044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 5046
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    .line 5045
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->launchCamera(ZI)V

    .line 5047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5049
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5053
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5056
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 4

    const-string v0, "StatusBar#onStartedGoingToSleep"

    .line 4978
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4979
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    .line 4980
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 4981
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpGoingToSleep()V

    .line 4982
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4983
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setFullyAwake(Z)V

    .line 4984
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setFullyAwake(Z)V

    .line 4985
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onStartedGoingToSleep()V

    .line 4989
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4990
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 4993
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4995
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    .line 4996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 5000
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    const-string v0, "StatusBar#onStartedWakingUp"

    .line 5007
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 5008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 5009
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 5010
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5011
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 5013
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 5014
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 5015
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    .line 5019
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    .line 5020
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 5021
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onStartedWakingUp()V

    .line 5025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffLightRevealAnimationPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5026
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    .line 5029
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 5031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 5032
    invoke-interface {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5034
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate5GEffectAnimation(Z)V

    :cond_2
    return-void
.end method
