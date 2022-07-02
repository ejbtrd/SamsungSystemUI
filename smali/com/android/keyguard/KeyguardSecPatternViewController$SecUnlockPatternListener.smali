.class public Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;
.super Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;
.source "KeyguardSecPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecUnlockPatternListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardPatternViewController<",
        "Lcom/android/keyguard/KeyguardSecPatternView;",
        ">.UnlockPattern",
        "Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    return-void
.end method


# virtual methods
.method protected onPatternChecked(IZIZ)V
    .locals 7

    .line 251
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 253
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "KeyguardSecPatternViewController"

    const-string v6, "!@onPatternChecked matched=%b timeoutMs=%d userId=%d"

    invoke-static {v4, v6, v3}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    if-eqz p2, :cond_4

    .line 260
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 261
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/vibrate/VibrationUtil;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 263
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    invoke-interface {p2, p1, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_c

    .line 265
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$600(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object p2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 269
    invoke-interface {v3, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_4

    :cond_3
    :goto_1
    return-void

    .line 272
    :cond_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$400(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 273
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$500(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/vibrate/VibrationUtil;

    move-result-object p2

    const/16 v0, 0x72

    invoke-virtual {p2, v0, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(II)V

    .line 277
    :cond_5
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    if-eqz p4, :cond_a

    .line 279
    invoke-interface {v3, p1, v1, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 280
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 281
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 282
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/16 p2, 0x8

    if-nez p3, :cond_7

    .line 286
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 287
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_a

    .line 288
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-lez p3, :cond_a

    .line 293
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$900(Lcom/android/keyguard/KeyguardSecPatternViewController;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 294
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1000(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 296
    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p2, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 297
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 298
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p4, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    .line 300
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->notifyKeyguardLockout()V

    .line 302
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    goto :goto_3

    .line 283
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$700(Lcom/android/keyguard/KeyguardSecPatternViewController;I)V

    .line 284
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$800(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    :cond_a
    :goto_3
    if-nez p3, :cond_c

    .line 308
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 310
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    .line 311
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    sget p3, Lcom/android/systemui/R$string;->kg_incorrect_pattern:I

    invoke-static {p2, p3}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1100(Lcom/android/keyguard/KeyguardSecPatternViewController;I)Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_b

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1200(Lcom/android/keyguard/KeyguardSecPatternViewController;)Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 313
    invoke-virtual {p2, p4, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 316
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 321
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "onPatternDetected"

    .line 160
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 167
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDualDarDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 168
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$300(Lcom/android/keyguard/KeyguardSecPatternViewController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDualDarInnerLayerUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "KeyguardSecPatternViewController.DDAR"

    const-string v2, "Pattern detected from DualDAR DO"

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 173
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ge v3, v5, :cond_2

    const-string v3, "!@Password too short!"

    .line 179
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 183
    const-class v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "empty pattern input"

    .line 182
    invoke-static {v3, v4, v0, v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/classifier/FalsingCollector;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 186
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IZIZ)V

    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    new-instance v5, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;

    invoke-direct {v5, p0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V

    .line 193
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDar;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    .line 239
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 240
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    :cond_3
    return-void

    .line 245
    :cond_4
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V

    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternStart()V

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "onPatternStart"

    .line 150
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$200(Lcom/android/keyguard/KeyguardSecPatternViewController;II)V

    return-void
.end method
