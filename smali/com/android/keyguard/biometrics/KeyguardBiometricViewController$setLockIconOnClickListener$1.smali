.class final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->setLockIconOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isLandscape(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 391
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIcon(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getDebugCount$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$setDebugCount$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;I)V

    .line 397
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getDebugCount$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 398
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->enableSecurityDebug()V

    :cond_1
    return-void
.end method
