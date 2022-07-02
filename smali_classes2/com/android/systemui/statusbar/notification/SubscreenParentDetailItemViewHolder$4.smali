.class Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$4;
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

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->cleanWaitLayout()V

    return-void
.end method
