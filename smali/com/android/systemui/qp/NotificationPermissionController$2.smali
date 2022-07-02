.class Lcom/android/systemui/qp/NotificationPermissionController$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 120
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NotificationPermissionController"

    if-eqz v0, :cond_1

    const-string/jumbo p1, "reason"

    .line 124
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive : reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string p2, "homekey"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "NOTIFICATION_CHANNEL_FIRST_CREATED"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "pkg"

    .line 133
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const-string/jumbo v3, "uid"

    .line 134
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive NOTIFICATION_CHANNEL_FIRST_CREATED, pkg = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object v1, v1, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {v1, v0, p2}, Lcom/android/systemui/qp/NotificationPermissionController;->access$400(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {v1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    iget-object v4, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    iget-object v4, v4, Lcom/android/systemui/qp/NotificationPermissionController;->mAppName:Ljava/lang/String;

    const-string v5, "appName"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p1}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController$2;->this$0:Lcom/android/systemui/qp/NotificationPermissionController;

    invoke-static {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
