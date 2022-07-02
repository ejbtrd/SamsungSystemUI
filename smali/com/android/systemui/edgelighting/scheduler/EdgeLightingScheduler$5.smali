.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;
.super Ljava/lang/Object;
.source "EdgeLightingScheduler.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->initTurnOverEdgeLighting(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdle()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopEdgeEffect()V

    :cond_0
    return-void
.end method

.method public onTurnOver(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getShowConditionSetting()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 259
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTurnOver: calling not available with screen on setting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$1100(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 266
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTurnOver: noti info empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object v1

    const/16 v2, 0x1770

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->extendLightingDuration(IZ)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    if-eqz p1, :cond_4

    .line 272
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    if-eqz p1, :cond_4

    .line 276
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTurnRight(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 287
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopEdgeEffect()V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 292
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTurnRight: noti info empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTurnRight: keyguard + screenon"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    if-eqz p1, :cond_4

    .line 301
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    if-eqz p1, :cond_4

    .line 305
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    :cond_4
    :goto_0
    return-void
.end method
