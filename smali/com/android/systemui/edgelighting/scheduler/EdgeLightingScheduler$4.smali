.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;
.super Ljava/lang/Object;
.source "EdgeLightingScheduler.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->setController(Landroid/content/Context;)V
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

    .line 169
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "startNotification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$500(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " +isBlockedByPolicy"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->onNotification()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, " +ShowWithTurnOver"

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    .line 189
    :goto_0
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopNotification(Z)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->onNotificationEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stopNotification: end with turnover"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 219
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stop Notification to turn to heads up"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->requestStopService()V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->releaseWakeLock()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopEdgeEffect()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stopNotification not exist. so stop service"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->requestStopService()V

    .line 227
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->releaseWakeLock()V

    .line 231
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 233
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$1000(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    return-void
.end method

.method public updateText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->isUpsideDown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "updateText: restart edge lighting for turn over"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    const/4 p0, 0x0

    return p0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$500(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updateText: skip by Blocking Policy"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$900(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :goto_0
    return v1
.end method
