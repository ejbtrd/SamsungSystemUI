.class Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 363
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$200(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "level"

    .line 373
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "status"

    .line 374
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    .line 377
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$402(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    .line 378
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    .line 379
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$600(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->flash_light_turn_off_by_low_battery:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$700(Lcom/android/systemui/qs/tiles/FlashlightTile;Ljava/lang/CharSequence;)V

    .line 381
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_1

    .line 384
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$402(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    goto :goto_1

    .line 368
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 370
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    :cond_4
    :goto_1
    return-void
.end method
