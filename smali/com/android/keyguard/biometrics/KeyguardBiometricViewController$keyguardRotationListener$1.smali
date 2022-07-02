.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$isLockOut$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$clearView(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIconVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$getErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockIcon(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 103
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLockContainerMargin(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    return-void
.end method
