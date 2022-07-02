.class Lcom/android/systemui/qp/NotificationPermissionController$7;
.super Ljava/lang/Object;
.source "NotificationPermissionController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qp/NotificationPermissionController;->showPopup(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qp/NotificationPermissionController;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iput-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Click Positive button pkg -"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationPermissionController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object p1, p1, Lcom/android/systemui/qp/NotificationPermissionController;->mNm:Landroid/app/INotificationManager;

    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$pkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$uid:I

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : registerTaskStackListener - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";on"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "299"

    const-string p2, "NSTE0026"

    const-string/jumbo v0, "settings"

    .line 258
    invoke-static {p1, p2, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
