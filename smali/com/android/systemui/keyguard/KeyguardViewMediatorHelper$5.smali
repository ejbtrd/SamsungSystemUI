.class Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "KeyguardViewMediatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDPMPasswordChanged()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "received DevicePolicyManager.ACTION_DEVICE_POLICY_MANAGER_PASSWORD_CHANGED!!"

    .line 421
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    .line 428
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDoKeyguard(I)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "received EnterpriseDeviceManager.ACTION_DO_KEYGUARD_INTERNAL!!"

    .line 414
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onEnableUCMLock()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "received onEnableUCMLock!!"

    .line 434
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Bundle;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    :goto_0
    return-void
.end method

.method public onUpdateAdminLock()V
    .locals 3

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "received onUpdateAdminLock!!"

    .line 444
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isAdminLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "force_show"

    .line 448
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/os/Bundle;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->KEYGUARD_DONE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->HIDE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->HIDE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->setHiding(Z)V

    .line 462
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    :goto_0
    return-void
.end method
