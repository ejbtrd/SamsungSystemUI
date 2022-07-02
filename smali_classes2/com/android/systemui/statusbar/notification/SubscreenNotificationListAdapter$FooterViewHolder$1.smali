.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method public static synthetic $r8$lambda$nTg2_rXHv1EH0OrhZR1gqjbFZ7Y(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->deleteAllNotifications()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->performDismissAllAnimations(Ljava/lang/Runnable;)V

    const-string p0, "QPN100"

    const-string p1, "QPNE0201"

    const-string v0, "from"

    const-string v1, "all"

    .line 185
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
