.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricSourceType;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->$r8$lambda$NpEZxudWptWCiMQyQs7__5MJyhM(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V

    return-void
.end method
