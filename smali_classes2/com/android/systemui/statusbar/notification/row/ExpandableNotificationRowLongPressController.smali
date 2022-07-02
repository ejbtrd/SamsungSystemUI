.class public Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowLongPressController.java"


# instance fields
.field private mDragAndDropTrigger:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

.field private mGutTrigger:Lcom/android/systemui/statusbar/notification/row/GutTrigger;


# direct methods
.method public static synthetic $r8$lambda$DHfqRGBssNxBm-dPmtEfnP1KN1w(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->lambda$bind$0(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/GutTrigger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mDragAndDropTrigger:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mGutTrigger:Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    return-void
.end method

.method private isActivity(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    if-nez v0, :cond_2

    return p1

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    return p0
.end method

.method private isHeadsUpPinned(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$bind$0(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 3

    .line 35
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->isHeadsUpPinned(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->isActivity(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mDragAndDropTrigger:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->releaseHeadsUpDragAndDropTrigger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;II)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mGutTrigger:Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/GutTrigger;->releaseGutTrigger(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    :goto_0
    return v1
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    return-void
.end method

.method public checkFinalTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->resetLongPress()V

    :cond_2
    return-void
.end method

.method public releaseLongPress(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;II)V
    .locals 0

    .line 65
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->isHeadsUpPinned(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->isActivity(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mDragAndDropTrigger:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->releaseDragAndDropTrigger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method public resetLongPress()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;->mDragAndDropTrigger:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->cancelTrigger()V

    return-void
.end method
