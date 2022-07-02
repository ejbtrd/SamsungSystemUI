.class Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 293
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 296
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Z

    move-result v0

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "KeyguardViewMediator"

    if-eqz v1, :cond_0

    const-string p1, "penInsert"

    .line 301
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "isBoot"

    .line 302
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 303
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PEN_INSERT intent is received. penInsert="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  isBoot="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    if-nez p2, :cond_7

    if-nez v0, :cond_7

    .line 306
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 307
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isScreenOffMemoRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 308
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPenHasDetachmentOption()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 309
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 313
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, p2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateFMMLock(IZ)Z

    .line 315
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result p1

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_FMM_LOCKED is received isFMMLock : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 318
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 321
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x44d

    if-eqz v1, :cond_3

    .line 322
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v6, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 323
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p2, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateFMMLock(IZ)Z

    .line 324
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFMMLock()Z

    move-result p2

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_FMM_UNLOCKED is received isFMMLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    if-nez v0, :cond_2

    .line 329
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V

    .line 333
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_2

    .line 337
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, p2, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateCarrierLock(IZ)Z

    .line 339
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCarrierLock()Z

    move-result p1

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_CARRIER_LOCK_SUBSCRIBE is received isCarrierLock : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 342
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 345
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 346
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v6, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 347
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p2, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->updateCarrierLock(IZ)Z

    .line 348
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCarrierLock()Z

    move-result p2

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CARRIER_LOCK_CANCEL is received isCarrierLock : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_6

    .line 351
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    .line 352
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 351
    invoke-virtual {p2, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    if-eqz p1, :cond_7

    if-nez v0, :cond_5

    .line 355
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    goto :goto_1

    .line 357
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->resetStateLocked()V

    .line 359
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_2

    :cond_6
    const-string p0, "Carrier Lock is enabled"

    .line 362
    invoke-static {v5, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
