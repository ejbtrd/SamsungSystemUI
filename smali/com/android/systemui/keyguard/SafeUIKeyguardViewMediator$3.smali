.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;
.super Ljava/lang/Object;
.source "SafeUIKeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


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

    .line 687
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 820
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2802(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBouncerPromptReason()I
    .locals 5

    .line 790
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 791
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 792
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 794
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 795
    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 796
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v2, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-nez p0, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_3

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    if-eqz v2, :cond_4

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz v1, :cond_5

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    if-eqz v2, :cond_6

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    if-eqz v2, :cond_7

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    if-eqz v2, :cond_8

    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    return v3
.end method

.method public isScreenOn()Z
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p0

    return p0
.end method

.method public keyguardDone(ZI)V
    .locals 0

    .line 696
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "KeyguardViewMediator"

    const-string p2, "keyguardDone"

    .line 699
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 1

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 705
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 706
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 707
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 2

    const-string p1, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    .line 717
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "KeyguardViewMediator"

    const-string v0, "keyguardDonePending"

    .line 718
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 720
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2002(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 725
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2102(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 726
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2202(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 727
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 728
    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 729
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xd

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardGone()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 736
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardGone"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 739
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 740
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$102(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 774
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    .line 775
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCancelClicked()V
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onCancelClicked()V

    return-void
.end method

.method public playTrustedSound()V
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    .line 745
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2002(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)Z

    .line 748
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 750
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public resetKeyguard()V
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    return-void
.end method

.method public resetKeyguardDismissAction()V
    .locals 0

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->userActivity()V

    return-void
.end method