.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;->val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->access$000(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setRecyclerViewItemSelectKey(Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->hideGroupNotification()V

    return-void
.end method
