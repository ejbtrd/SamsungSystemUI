.class Lcom/android/systemui/settings/multisim/MultiSIMController$8;
.super Landroid/content/BroadcastReceiver;
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

    .line 391
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive() - action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "onReceive() - subId = "

    const-string/jumbo v3, "subscription"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 408
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x3e8

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 412
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 418
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 422
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 423
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 426
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 429
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$000(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 433
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1000(Lcom/android/systemui/settings/multisim/MultiSIMController;Z)V

    const-string/jumbo p1, "ss"

    .line 434
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "READY"

    .line 435
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "LOADED"

    .line 436
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 437
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1100(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    goto :goto_0

    :cond_9
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p1, "state"

    .line 444
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    .line 446
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move v4, v1

    :cond_b
    iput-boolean v4, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    goto :goto_0

    :cond_c
    const-string p2, "com.samsung.android.softsim.ServiceStatus"

    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 450
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$1200(Lcom/android/systemui/settings/multisim/MultiSIMController;)I

    move-result p2

    if-ne p2, v1, :cond_d

    move v4, v1

    :cond_d
    iput-boolean v4, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 452
    :cond_e
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$8;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    return-void
.end method
