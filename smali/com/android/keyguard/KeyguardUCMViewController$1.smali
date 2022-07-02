.class Lcom/android/keyguard/KeyguardUCMViewController$1;
.super Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
.source "KeyguardUCMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMViewController;->verifyPINAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public static synthetic $r8$lambda$wRXFsJZ7UZdbVzBUtN1lXfdxoBM(Lcom/android/keyguard/KeyguardUCMViewController$1;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$1;->lambda$onVerifyPinResponse$0(IILandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onVerifyPinResponse$0(IILandroid/os/Bundle;)V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPINAndUnlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "mUnlockProgressDialog != null"

    .line 589
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2102(Lcom/android/keyguard/KeyguardUCMViewController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$400(Lcom/android/keyguard/KeyguardUCMViewController;)Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 594
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 595
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 597
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1102(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 598
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 599
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1002(Z)Z

    return-void
.end method


# virtual methods
.method onVerifyPinResponse(IIILandroid/os/Bundle;)V
    .locals 1

    .line 585
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1900(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$1;IILandroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
