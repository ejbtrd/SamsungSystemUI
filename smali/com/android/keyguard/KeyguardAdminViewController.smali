.class public Lcom/android/keyguard/KeyguardAdminViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "KeyguardAdminViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardInputViewController<",
        "Lcom/android/keyguard/KeyguardAdminView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAdminView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardAdminView;

    sget p1, Lcom/android/systemui/R$id;->keyguard_admin_lock_help_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/widget/SystemUITextView;

    .line 30
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLicenseExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    sget p1, Lcom/android/systemui/R$string;->kg_knox_license_expired:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    const-string p0, "KeyguardAdminView"

    const-string v0, "onPause()"

    .line 44
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const-string p0, "KeyguardAdminView"

    const-string p1, "onResume()"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 1

    const-string p0, "KeyguardAdminView"

    const-string/jumbo v0, "reset()"

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
