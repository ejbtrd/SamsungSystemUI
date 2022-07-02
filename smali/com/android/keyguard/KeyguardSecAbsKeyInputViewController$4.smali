.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecAbsKeyInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attempt:I

.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;JJ)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 458
    iget-object p2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->attemptRemainingBeforeWipe:I

    .line 459
    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 488
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 493
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 494
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 495
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 498
    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 500
    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 502
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->resetState()V

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$2000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1900(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$2000(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1900(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 463
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p2, v0

    .line 464
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 467
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->attemptRemainingBeforeWipe:I

    if-lez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$302(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)I

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->attempt:I

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->attemptRemainingBeforeWipe:I

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 475
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 473
    invoke-virtual {v0, v1, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1700(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 477
    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 481
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 483
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$1800(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    return-void
.end method
