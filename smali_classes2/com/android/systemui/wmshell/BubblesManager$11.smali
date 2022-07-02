.class Lcom/android/systemui/wmshell/BubblesManager$11;
.super Landroid/content/BroadcastReceiver;
.source "BubblesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/BubblesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$11;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Bubbles"

    if-eqz v0, :cond_3

    const-string/jumbo p1, "reason"

    const/4 v0, 0x0

    .line 645
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "Dismiss bubble because MW disabled"

    .line 647
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$11;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-static {p1}, Lcom/android/systemui/wmshell/BubblesManager;->access$000(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/Bubbles;->updateBubbleVisibilty()V

    .line 650
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$11;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-static {p0}, Lcom/android/systemui/wmshell/BubblesManager;->access$100(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p0

    .line 651
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 652
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    goto :goto_0

    :cond_3
    const-string p2, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 656
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Dismiss all bubbles - reason : PIN mode detected."

    .line 658
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$11;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-static {p0}, Lcom/android/systemui/wmshell/BubblesManager;->access$000(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/Bubbles;->dismissAllBubbles()V

    :cond_4
    return-void
.end method
