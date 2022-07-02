.class Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$3;
.super Ljava/lang/Object;
.source "SubscreenParentDetailItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;-><init>(Landroid/view/View;)V
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

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->removeNotification()V

    const-string p0, "QPN102"

    const-string p1, "QPNE0202"

    const-string v0, "from"

    const-string v1, "button"

    .line 93
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
