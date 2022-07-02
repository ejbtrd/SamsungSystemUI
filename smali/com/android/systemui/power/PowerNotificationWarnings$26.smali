.class Lcom/android/systemui/power/PowerNotificationWarnings$26;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showUsbDamageProtectionAlertDialog()V
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

    .line 2804
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2807
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2702(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2809
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2200(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2810
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2200(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    .line 2813
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2814
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$2300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 2816
    :cond_1
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
