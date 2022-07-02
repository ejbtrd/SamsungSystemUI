.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;->val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    return-void
.end method
