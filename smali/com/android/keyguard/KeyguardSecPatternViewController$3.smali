.class Lcom/android/keyguard/KeyguardSecPatternViewController$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attempt:I

.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJ)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 632
    iget-object p2, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->attemptRemainingBeforeWipe:I

    .line 634
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 635
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    .line 634
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "handleAttemptLockout onFinish"

    .line 666
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1402(Lcom/android/keyguard/KeyguardSecPatternViewController;I)I

    .line 672
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 673
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 674
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 675
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1900(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2000(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2200(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2100(Lcom/android/keyguard/KeyguardSecPatternViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2200(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$2100(Lcom/android/keyguard/KeyguardSecPatternViewController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 639
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p2, v0

    .line 640
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 643
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->attemptRemainingBeforeWipe:I

    if-lez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1402(Lcom/android/keyguard/KeyguardSecPatternViewController;I)I

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->attempt:I

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->attemptRemainingBeforeWipe:I

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1600(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 652
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 649
    invoke-virtual {v0, v1, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1700(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 656
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 654
    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 659
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    .line 661
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1800(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    return-void
.end method
