.class Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;
.super Ljava/lang/Object;
.source "DragAndDropTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->releaseDragAndDropTrigger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

.field final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;->this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;->this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string/jumbo v1, "noti"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->runDragAndDrop(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
