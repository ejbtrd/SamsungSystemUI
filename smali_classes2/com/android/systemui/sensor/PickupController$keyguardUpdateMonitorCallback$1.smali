.class public final Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PickupController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensor/PickupController;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0, p1}, Lcom/android/systemui/sensor/PickupController;->access$setPhoneState$p(Lcom/android/systemui/sensor/PickupController;I)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4

    const-string v0, "PickupController"

    const-string/jumbo v1, "onStartedGoingToSleep() "

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    goto :goto_1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->access$getHandler$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v2}, Lcom/android/systemui/sensor/PickupController;->access$getRegisterRunnable$p(Lcom/android/systemui/sensor/PickupController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->access$getHandler$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$getRegisterRunnable$p(Lcom/android/systemui/sensor/PickupController;)Ljava/lang/Runnable;

    move-result-object p0

    if-ne p1, v0, :cond_1

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1388

    :goto_0
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    const-string v0, "PickupController"

    const-string/jumbo v1, "onStartedWakingUp() "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$getHandler$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->access$getRegisterRunnable$p(Lcom/android/systemui/sensor/PickupController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$getHandler$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$getRegisterRunnable$p(Lcom/android/systemui/sensor/PickupController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$unRegisterSensor(Lcom/android/systemui/sensor/PickupController;)V

    :cond_1
    :goto_0
    return-void
.end method
