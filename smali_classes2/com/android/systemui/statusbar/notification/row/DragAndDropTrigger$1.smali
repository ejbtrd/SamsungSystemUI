.class Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;
.super Ljava/lang/Object;
.source "DragAndDropTrigger.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;->this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    .line 52
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 53
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 54
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;->this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->access$100(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_1
    const/4 p0, 0x0

    .line 62
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return v1

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;->this$0:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->access$000(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
