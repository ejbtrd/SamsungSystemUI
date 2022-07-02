.class Lcom/android/systemui/doze/PluginAODManager$4;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


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

    .line 276
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v1}, Lcom/android/systemui/doze/PluginAODManager;->shouldShowAODNotifications()Z

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnAod()Z

    move-result v2

    .line 289
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 290
    invoke-static {v3}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/facewidget/FaceWidgetNotificationController;->isMusicFaceWidgetOn()Z

    move-result v3

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 299
    iget-object v7, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 300
    invoke-static {v7}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    move-result-object v7

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/systemui/facewidget/FaceWidgetNotificationController;->isFaceWidgetMusicNotification(Ljava/lang/String;)Z

    move-result v7

    .line 302
    iget-object v8, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v8}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    move v7, v10

    :goto_1
    if-eqz v7, :cond_5

    const/4 v11, 0x2

    goto :goto_2

    :cond_5
    move v11, v1

    :goto_2
    if-eqz v7, :cond_6

    .line 312
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAmbient()Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v9

    goto :goto_3

    :cond_6
    move v7, v10

    :goto_3
    if-eqz v7, :cond_7

    const/4 v11, 0x3

    :cond_7
    if-eqz v7, :cond_8

    .line 315
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getLockscreenVisibilityOverride()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    goto :goto_4

    :cond_8
    move v9, v10

    :goto_4
    if-eqz v9, :cond_9

    const/4 v11, 0x4

    :cond_9
    if-eqz v1, :cond_a

    if-nez v9, :cond_a

    .line 318
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v9, :cond_0

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNotificationInfoUpdated() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PluginAODManager"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v6, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/systemui/doze/PluginAODManager;->access$1100(Lcom/android/systemui/doze/PluginAODManager;Ljava/lang/String;Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    goto/16 :goto_0

    .line 326
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_c

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationInfoUpdated$ don\'t show - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/AODDumpLog;->d(Ljava/lang/String;)V

    .line 329
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateVisibleNotifications(Ljava/util/List;I)V

    return-void
.end method

.method public onNotificationTypeChanged(I)V
    .locals 0

    return-void
.end method
