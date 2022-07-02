.class Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "SubscreenSubRoomNotificaitonTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;II)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeEscapeVelocity(F)F
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$300(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$400(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$000(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)Z

    move-result p0

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 58
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isShownGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object v0

    .line 63
    :goto_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 68
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->canViewBeDismissed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$200(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    if-eqz p2, :cond_2

    const-string p0, "QPN101"

    goto :goto_1

    :cond_2
    const-string p0, "QPN100"

    :goto_1
    const-string p1, "QPNE0202"

    const-string p2, "from"

    const-string/jumbo v0, "swipe"

    .line 74
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method
