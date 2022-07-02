.class Lcom/android/keyguard/SecLockIconViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecLockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SecLockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 329
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 330
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p2}, Lcom/android/keyguard/SecLockIconViewController;->access$300(Lcom/android/keyguard/SecLockIconViewController;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 331
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p2, p1}, Lcom/android/keyguard/SecLockIconViewController;->access$302(Lcom/android/keyguard/SecLockIconViewController;Z)Z

    .line 332
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    .line 344
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, v0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 345
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, v0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 354
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    :cond_1
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$2;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/SecLockIconViewController;->access$400(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    return-void
.end method
