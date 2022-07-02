.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateLayout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 334
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    return-void
.end method
