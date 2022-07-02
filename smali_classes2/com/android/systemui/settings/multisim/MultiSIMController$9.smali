.class Lcom/android/systemui/settings/multisim/MultiSIMController$9;
.super Ljava/lang/Object;
.source "MultiSIMController.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;->createSemImsManager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnected mImsManager, phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1300(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1300(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController$9;)V

    aput-object v2, v0, v1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1400(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1300(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsManager;->registerImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnected mImsManager, phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1400(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1300(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsManager;->unregisterImsRegistrationListener(Lcom/samsung/android/ims/SemImsRegistrationListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1400(Lcom/android/systemui/settings/multisim/MultiSIMController;)[Lcom/samsung/android/ims/SemImsManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    const/4 v1, 0x0

    aput-object v1, v0, p0

    return-void
.end method
