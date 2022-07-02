.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SafeUIKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 654
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 655
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 664
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 665
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    :cond_0
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 547
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    .line 683
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 487
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KeyguardViewMediator"

    const-string v1, "PIN lock requested, starting keyguard"

    .line 488
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$102(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 492
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 494
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSimStateChanged(III)V
    .locals 6

    const-string v0, "KeyguardViewMediator"

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",state="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 559
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_1

    .line 562
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onSimSecureStateChanged"

    .line 564
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter p1

    .line 573
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    .line 576
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Landroid/util/SparseIntArray;->append(II)V

    .line 577
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 p1, 0x0

    if-eq p3, v1, :cond_a

    if-eq p3, v3, :cond_8

    if-eq p3, v2, :cond_8

    const/4 v2, 0x5

    if-eq p3, v2, :cond_6

    const/4 v2, 0x6

    if-eq p3, v2, :cond_a

    const/4 p2, 0x7

    if-eq p3, p2, :cond_4

    const-string p0, "KeyguardViewMediator"

    .line 647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unspecific state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 623
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v2

    .line 624
    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "KeyguardViewMediator"

    const-string p3, "PERM_DISABLED and keygaurd isn\'t showing."

    .line 625
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_5
    const-string p1, "KeyguardViewMediator"

    const-string p2, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    .line 629
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 633
    :goto_4
    monitor-exit v2

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 636
    :cond_6
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter p3

    :try_start_3
    const-string p1, "KeyguardViewMediator"

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READY, reset state? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "KeyguardViewMediator"

    const-string v0, "SIM moved to READY when the previously was locked. Reset the state."

    .line 639
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 642
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 644
    :cond_7
    monitor-exit p3

    goto/16 :goto_7

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 609
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v2

    .line 610
    :try_start_4
    iget-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseBooleanArray;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 611
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "KeyguardViewMediator"

    const-string p3, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    .line 612
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_5

    .line 617
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$102(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 618
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 620
    :goto_5
    monitor-exit v2

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 584
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v2

    .line 585
    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 586
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "KeyguardViewMediator"

    const-string v5, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    .line 587
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_6

    .line 592
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    :cond_c
    :goto_6
    if-ne p3, v1, :cond_e

    if-eqz v0, :cond_d

    const-string p1, "KeyguardViewMediator"

    const-string p3, "SIM moved to ABSENT when the previous state was locked. Reset the state."

    .line 599
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 603
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 605
    :cond_e
    monitor-exit v2

    :goto_7
    return-void

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 577
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method public onTrustChanged(I)V
    .locals 2

    .line 672
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    .line 675
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onUserSwitchComplete %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 525
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 5

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onUserSwitching %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 511
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 512
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
