.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$802(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 359
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAvailabilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 357
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setTorchMode(Z)V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 368
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 371
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchModeChanged("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback at : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 376
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->setCameraAvailable(Z)V

    .line 345
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->setTorchMode(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setFlashLightAvailable(I)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setFlashLightEnabled(I)V

    .line 348
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.flashlight.action.FLASHLIGHT_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->setCameraAvailable(Z)V

    .line 336
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->setTorchMode(Z)V

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setFlashLightAvailable(I)V

    :cond_0
    return-void
.end method
