.class Lcom/android/systemui/power/PowerNotificationWarnings$11;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V
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

    .line 2141
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 2143
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1002(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2144
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 2145
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2148
    :cond_0
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
