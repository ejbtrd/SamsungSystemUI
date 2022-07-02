.class Lcom/android/systemui/power/PowerNotificationWarnings$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1190
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 1195
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_0

    .line 1197
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$502(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 1200
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 1201
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateLowBatteryWarning()V

    .line 1204
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.sm.action.ACTION_ACTIVE_TILE_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_type"

    const-string v1, "power_mode"

    .line 1208
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "PowerUI.Notification"

    const-string v0, "Error"

    .line 1213
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
