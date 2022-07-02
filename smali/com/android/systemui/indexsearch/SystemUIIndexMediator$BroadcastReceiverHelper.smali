.class Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIIndexMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiverHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Landroid/content/Context;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, p0, p1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->access$000(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    :cond_0
    return-void
.end method
