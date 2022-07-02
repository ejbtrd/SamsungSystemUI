.class Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;
.super Lcom/android/systemui/shared/system/RotationWatcher;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/RotationWatcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onRotationChanged(I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
