.class Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;
.super Ljava/lang/Object;
.source "SubscreenParentDetailItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    return-void
.end method
