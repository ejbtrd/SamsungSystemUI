.class Lcom/android/systemui/doze/PluginAODManager$3;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateExpandLockedShadePanel() sbn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public clickNotification(Ljava/lang/String;)V
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickNotification() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "statusbar"

    .line 221
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 222
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    const/4 v3, 0x1

    .line 224
    invoke-static {p1, v0, p0, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    if-eqz v2, :cond_0

    .line 227
    :try_start_0
    invoke-interface {v2, p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    goto :goto_0

    :cond_0
    const-string p0, "can\'t get STATUS_BAR_SERVICE"

    .line 229
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getNotificationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationIcon() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestActiveNotifications()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 205
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->updateActiveNotifications(Ljava/util/List;)V

    return-void
.end method

.method public requestVisibleNotifications()V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "requestVisibleNotifications()"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    const-string v0, "AOD_REQUEST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method

.method public showSubScreenNotification(Ljava/lang/String;)V
    .locals 3

    .line 239
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    const-class v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->access$602(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object v0

    const-string v1, "PluginAODManager"

    if-eqz v0, :cond_1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSubScreenNotification() show detail - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "showSubScreenNotification() : no SubScreenNotificationController"

    .line 247
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
