.class Lcom/android/systemui/qp/NotificationPermissionController$8;
.super Ljava/lang/Object;
.source "NotificationPermissionController.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qp/NotificationPermissionController;->registerFoldStateListener()V
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

    .line 311
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$8;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFoldStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPermissionController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$8;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$600(Lcom/android/systemui/qp/NotificationPermissionController;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$8;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$8;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$100(Lcom/android/systemui/qp/NotificationPermissionController;)V

    :goto_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
