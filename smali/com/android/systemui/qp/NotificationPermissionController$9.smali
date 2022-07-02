.class Lcom/android/systemui/qp/NotificationPermissionController$9;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
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
.method constructor <init>(Lcom/android/systemui/qp/NotificationPermissionController;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 393
    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object p2, p2, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Resume pkg = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", prev topPackage = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object p3, p3, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationPermissionController"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p2}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iput-object p1, p2, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    const/4 v0, -0x1

    .line 404
    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/qp/NotificationPermissionController;->access$700(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, p4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 405
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 406
    iget-object p4, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p4}, Lcom/android/systemui/qp/NotificationPermissionController;->access$700(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/android/systemui/qp/NotificationPermissionController;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 408
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get a activity infomation "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p2, p1, v0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$400(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 411
    iget-object p2, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p2}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 413
    iget-object p4, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object p4, p4, Lcom/android/systemui/qp/NotificationPermissionController;->mAppName:Ljava/lang/String;

    const-string v1, "appName"

    invoke-virtual {p2, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "pkg"

    .line 414
    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 415
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 417
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$9;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p2, 0x320

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
