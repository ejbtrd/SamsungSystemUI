.class Lcom/android/systemui/power/PowerNotificationWarnings$24;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .line 2707
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2710
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2400(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2711
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2712
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2714
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2715
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2716
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2502(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 2719
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2720
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$24;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method
