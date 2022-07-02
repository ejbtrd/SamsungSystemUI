.class Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/knox/KnoxStateMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.knox.keyguard.show"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "personaId"

    .line 192
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 193
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "isShown"

    .line 194
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 195
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x138a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x138b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 201
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x138c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.ucs.ucsservice.stateblocked"

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Lcom/android/systemui/knox/UcmMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/knox/UcmMonitor;->getUCMVendor()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UCS_CSNAME"

    .line 206
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "KnoxStateMonitorImpl"

    const-string p2, "com.samsung.ucs.ucsservice.stateblocked intent!"

    .line 208
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x138d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
