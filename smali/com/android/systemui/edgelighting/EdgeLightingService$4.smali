.class Lcom/android/systemui/edgelighting/EdgeLightingService$4;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;->createSchedulerIfNotExist()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final LOCKSCREEN_NOTI_DISABLED:I

.field final LOCKSCREEN_NOTI_ENALBED:I

.field final LOCKSCREEN_NOTI_ICON_ONLY:I

.field final LOCKSCREEN_NOTI_ICON_WITH_TEXT:I

.field final LOCKSCREEN_PRIVATE_NOTI_HIDE:I

.field final LOCKSCREEN_PRIVATE_NOTI_SHOW:I

.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 1

    .line 560
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 562
    iput p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_PRIVATE_NOTI_SHOW:I

    const/4 v0, 0x0

    .line 563
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_PRIVATE_NOTI_HIDE:I

    .line 564
    iput p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_NOTI_ENALBED:I

    .line 565
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_NOTI_DISABLED:I

    .line 566
    iput p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_NOTI_ICON_ONLY:I

    .line 567
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->LOCKSCREEN_NOTI_ICON_WITH_TEXT:I

    return-void
.end method


# virtual methods
.method public getShowConditionSetting()I
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingShowCondition(Landroid/content/ContentResolver;)I

    move-result p0

    return p0
.end method

.method public getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1200(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    return-object p0
.end method

.method public isKeyguardHideContent()Z
    .locals 3

    .line 584
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isKeyguardLocked()Z
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1000(Lcom/android/systemui/edgelighting/EdgeLightingService;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardNotiOn()Z
    .locals 3

    .line 594
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isNotificationBarExpanded()Z
    .locals 1

    .line 610
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const-class v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSanitized(ILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$900(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$900(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isNeedToSanitized(ILjava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$1100(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isUIControllerExist()Z
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestStopService()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 644
    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object p0

    const-string/jumbo v2, "requestStopService"

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    .line 643
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendClickEvent(Ljava/lang/String;)V
    .locals 1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$900(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$900(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->sendClickEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 656
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remote exception "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendContextLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
