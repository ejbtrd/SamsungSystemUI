.class Lcom/android/systemui/knox/ContainerMonitor$2;
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

    .line 219
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "com.sec.knox.container.action.containerremovalstarted"

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$400(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/knox/ContainerMonitor;->access$402(Lcom/android/systemui/knox/ContainerMonitor;Z)Z

    .line 227
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x139d

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$500(Lcom/android/systemui/knox/ContainerMonitor;)Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$2;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/knox/ContainerMonitor;->access$100(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/os/UserManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$002(Lcom/android/systemui/knox/ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
