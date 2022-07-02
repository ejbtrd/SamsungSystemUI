.class Lcom/android/keyguard/KeyguardSecPasswordViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPasswordViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPasswordViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->access$000(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-boolean v0, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 411
    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 413
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
