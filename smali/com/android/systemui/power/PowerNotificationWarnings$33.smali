.class Lcom/android/systemui/power/PowerNotificationWarnings$33;
.super Landroid/os/Handler;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Looper;)V
    .locals 0

    .line 3478
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$33;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 3481
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const-string p0, "PowerUI.Notification"

    const-string p1, "This case is abnormal!!"

    .line 3495
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3492
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$33;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3400(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    goto :goto_0

    .line 3489
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$33;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3300(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3400(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    goto :goto_0

    .line 3486
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$33;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3200(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    goto :goto_0

    .line 3483
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$33;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$3200(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    :goto_0
    return-void
.end method
