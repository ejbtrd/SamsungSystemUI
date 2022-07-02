.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .line 3544
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V
    .locals 0

    .line 3544
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 3547
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "PNW.batteryInfo"

    .line 3548
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.powerMode"

    .line 3549
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaver"

    .line 3550
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedWarning"

    .line 3551
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedTempWarning"

    .line 3552
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedTempWarning"

    .line 3553
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedThermalShutdownWarning"

    .line 3554
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedThermalShutdownWarning"

    .line 3555
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaverConfirmation"

    .line 3556
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverSuggestion"

    .line 3557
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.enableAutoSaver"

    .line 3558
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverNoThanks"

    .line 3559
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissAutoSaverSuggestion"

    .line 3560
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.abnormalPadNoThanks"

    .line 3562
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    .line 3564
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 3568
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    .line 3572
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    .line 3573
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    .line 3577
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 3578
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    .line 3582
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    .line 3583
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 3587
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    const-string v4, "android.permission.DEVICE_POWER"

    move-object v1, p0

    .line 3586
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 3592
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerUI.Notification"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PNW.batteryInfo"

    .line 3594
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3595
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3600(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "PNW.powerMode"

    .line 3596
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 3598
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    if-ne p1, v3, :cond_1

    return-void

    .line 3602
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3700(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 3604
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3800(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "PNW.startSaver"

    .line 3608
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 3609
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1, v4, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3900(Lcom/android/systemui/power/PowerNotificationWarnings;ZZ)V

    .line 3610
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3700(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "PNW.startSaverConfirmation"

    .line 3611
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3612
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3700(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 3613
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4000(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "PNW.dismissedWarning"

    .line 3614
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3615
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto/16 :goto_1

    :cond_5
    const-string v1, "PNW.clickedTempWarning"

    .line 3616
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3617
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4100(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 3618
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4200(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "PNW.dismissedTempWarning"

    .line 3619
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3620
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4100(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "PNW.clickedThermalShutdownWarning"

    .line 3621
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3622
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    .line 3623
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4300(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_8
    const-string v1, "PNW.dismissedThermalShutdownWarning"

    .line 3624
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3625
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissThermalShutdownWarning()V

    goto/16 :goto_1

    :cond_9
    const-string v1, "PNW.autoSaverSuggestion"

    .line 3626
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3627
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4400(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "PNW.dismissAutoSaverSuggestion"

    .line 3628
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3629
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "PNW.enableAutoSaver"

    .line 3630
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3631
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 3632
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4600(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "PNW.autoSaverNoThanks"

    .line 3633
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3634
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 3635
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->suppressAutoBatterySaver(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_d
    const-string p1, "PNW.abnormalPadNoThanks"

    .line 3636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3637
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4700(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_1

    :cond_e
    const-string p1, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    .line 3638
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3639
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto/16 :goto_1

    :cond_f
    const-string p1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 3640
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 3641
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    const-string/jumbo v0, "reason"

    .line 3642
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    .line 3645
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_0

    :cond_10
    const/4 v0, 0x5

    if-ne p2, v0, :cond_11

    .line 3647
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p2, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 3650
    :cond_11
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p2

    if-eq p1, p2, :cond_18

    .line 3651
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateLowBatteryWarning()V

    goto :goto_1

    :cond_12
    const-string p1, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    .line 3655
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3656
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4800(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_1

    :cond_13
    const-string p1, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    .line 3657
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3658
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$4900(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_1

    :cond_14
    const-string p1, "com.sec.factory.app.factorytest.FTA_ON"

    .line 3662
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3663
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$5002(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    const-string p0, "FTA mode ON"

    .line 3664
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_15
    const-string p1, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 3665
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 3666
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$5002(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    const-string p0, "FTA mode OFF"

    .line 3667
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_16
    const-string p1, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    .line 3671
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3672
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$5102(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 3673
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$5200(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    const-string p0, "Automatic test mode ON"

    .line 3674
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_17
    const-string p1, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    .line 3675
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3676
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$5102(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    const-string p0, "Automatic test mode OFF"

    .line 3677
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_1
    return-void
.end method
