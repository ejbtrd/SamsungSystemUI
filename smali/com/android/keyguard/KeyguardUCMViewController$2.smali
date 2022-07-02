.class Lcom/android/keyguard/KeyguardUCMViewController$2;
.super Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;
.source "KeyguardUCMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMViewController;->verifyPUKAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public static synthetic $r8$lambda$XoiHxymuCWVH00L3jl9cRvZeK8g(Lcom/android/keyguard/KeyguardUCMViewController$2;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$2;->lambda$onVerifyPukResponse$0(IILandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onVerifyPukResponse$0(IILandroid/os/Bundle;)V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$5100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 816
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 818
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$5200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 819
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2102(Lcom/android/keyguard/KeyguardUCMViewController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$400(Lcom/android/keyguard/KeyguardUCMViewController;)Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, p3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 822
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 823
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 825
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1602(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 826
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$5300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 827
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1002(Z)Z

    return-void
.end method


# virtual methods
.method onVerifyPukResponse(IIILandroid/os/Bundle;)V
    .locals 1

    .line 814
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUCMViewController;->access$5000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/keyguard/KeyguardUCMViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$2;IILandroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
