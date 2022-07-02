.class Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;
.super Ljava/lang/Object;
.source "MultiSIMController.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController$9;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController$9;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 0

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDeregistered sSemImsRegistragionListener phoneId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->val$phoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiSIMController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRegistered sSemImsRegistragionListener phoneId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/ims/SemImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiSIMController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9$1;->this$1:Lcom/android/systemui/settings/multisim/MultiSIMController$9;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
