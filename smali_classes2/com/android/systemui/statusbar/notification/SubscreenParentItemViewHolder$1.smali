.class Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;
.super Ljava/lang/Object;
.source "SubscreenParentItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->setClearAllOngoingRunnable(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initItemViewTranslationX()V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
