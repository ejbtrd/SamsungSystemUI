.class Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;
.super Ljava/lang/Object;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 3

    .line 915
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_WOF:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 916
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$400(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabledWithBadQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$500(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_finger_print_bad_quality_error_message:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$400(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerBadQualityCounts()V

    .line 920
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->access$602(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z

    return-void
.end method
