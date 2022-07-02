.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->val$this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v0, "Click Title"

    .line 259
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->access$002(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Z)Z

    .line 261
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;Landroid/content/Context;)V

    const-string p0, "QPN102"

    const-string p1, "QPNE0204"

    .line 263
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
