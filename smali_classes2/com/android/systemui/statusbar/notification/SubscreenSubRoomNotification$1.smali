.class Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SubscreenSubRoomNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V
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

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 113
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 114
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$012(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I

    .line 115
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 116
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    :goto_1
    invoke-static {p3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$202(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    :goto_2
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->access$302(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I

    return-void
.end method
