.class Lcom/android/systemui/settings/multisim/MultiSIMController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    const-string v0, "MultiSIMController"

    const-string/jumbo v1, "onSubscriptionsChanged: "

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$1;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
