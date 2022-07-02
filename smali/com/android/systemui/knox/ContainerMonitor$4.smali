.class Lcom/android/systemui/knox/ContainerMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "ContainerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/knox/ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/knox/ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/knox/ContainerMonitor;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "ContainerMonitor"

    if-nez p2, :cond_1

    .line 262
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    .line 263
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "policyChangedBundle"

    .line 269
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " onReceive RCP_POLICY_CHANGED bundle is null "

    .line 271
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 276
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_5

    .line 278
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    .line 279
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "personaId"

    const/4 v1, -0x1

    .line 287
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "syncerList"

    .line 288
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "policyName"

    .line 289
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq v0, v1, :cond_8

    if-eqz v2, :cond_8

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const-string p2, "Notifications"

    .line 298
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 299
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$600(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 300
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$700(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 301
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$800(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 302
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$900(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 303
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x1391

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$4;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Notification RCP policy is updated"

    .line 305
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " syncerList = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " policyName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method
