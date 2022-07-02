.class Lcom/android/systemui/doze/PluginAODManager$9;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/PluginAODManager;->addNotificationEntryListener()V
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

    .line 709
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 719
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 725
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->removeNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 713
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method
