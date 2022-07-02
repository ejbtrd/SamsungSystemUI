.class Lcom/android/systemui/knox/ContainerMonitor$3;
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

    .line 235
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.sec.knox.container.action.launchinfo"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ContainerMonitor"

    const-string v0, "onReceive() : Received INTENT_ACTION_LAUNCH_INFO"

    .line 242
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, -0x1

    const-string/jumbo v0, "userId"

    .line 244
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 246
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$600(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 247
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$700(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 248
    iget-object p2, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x1390

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 249
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$3;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
