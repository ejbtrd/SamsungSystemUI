.class Lcom/android/systemui/qs/SecQSLayoutDetail$2;
.super Landroid/content/BroadcastReceiver;
.source "SecQSLayoutDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQSLayoutDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$2;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSLayoutDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$2;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$100(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    .line 182
    :cond_0
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$2;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$200(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
