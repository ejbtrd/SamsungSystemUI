.class Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;JJ)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$400(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$502(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_carrier_lock_too_many_failed_attempts:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    return-void
.end method
