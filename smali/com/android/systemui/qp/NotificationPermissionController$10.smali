.class Lcom/android/systemui/qp/NotificationPermissionController$10;
.super Ljava/lang/Object;
.source "NotificationPermissionController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/android/systemui/qp/NotificationPermissionController;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$10;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$10;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$700(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController$10;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {v0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$800(Lcom/android/systemui/qp/NotificationPermissionController;)I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController$10;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {v0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$802(Lcom/android/systemui/qp/NotificationPermissionController;I)I

    .line 445
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$10;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$200(Lcom/android/systemui/qp/NotificationPermissionController;Z)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
