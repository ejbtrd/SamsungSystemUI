.class Lcom/android/systemui/qp/NotificationPermissionController$1;
.super Landroid/os/Handler;
.source "NotificationPermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qp/NotificationPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qp/NotificationPermissionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Looper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$1;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$1;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0, v1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$200(Lcom/android/systemui/qp/NotificationPermissionController;Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$1;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$100(Lcom/android/systemui/qp/NotificationPermissionController;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$1;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$000(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
