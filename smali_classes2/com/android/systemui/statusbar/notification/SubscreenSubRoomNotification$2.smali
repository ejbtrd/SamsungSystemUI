.class Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;
.super Ljava/lang/Object;
.source "SubscreenSubRoomNotification.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isSwipeRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$400(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$600(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->updateFooterViewVisibility()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    :cond_1
    return-void

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setNotificationInfoArray(Ljava/util/ArrayList;)V

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 383
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$700(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->updateGroupData()V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$700(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 386
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$600(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->updataDataChanged()V

    :goto_0
    return-void
.end method

.method public onNotificationTypeChanged(I)V
    .locals 0

    return-void
.end method
