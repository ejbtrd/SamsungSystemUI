.class Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewModeChanged(I)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViewModeChanged mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationViewHierarchyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$000(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$002(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;I)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$102(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Z)Z

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$102(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Z)Z

    .line 192
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$200(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p0

    const-string p1, "PluginLockMode"

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews(Ljava/lang/String;)V

    return-void
.end method
