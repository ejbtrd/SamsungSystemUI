.class Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 235
    sget-object p1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :goto_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 212
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 214
    :cond_0
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_GUIDE_POPUP:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    .line 215
    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    .line 216
    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricHelp(msgId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpString : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyguardFingerprintGuidePopup"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    .line 220
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    .line 224
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$702(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    .line 204
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$502(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    if-nez p1, :cond_1

    const-string p1, "KeyguardFingerprintGuidePopup"

    const-string/jumbo v0, "set text preview - onKeyguardBouncerChanged"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$302(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    if-eqz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    .line 250
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Lcom/android/systemui/shared/system/RotationWatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->enable()V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Lcom/android/systemui/shared/system/RotationWatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->disable()V

    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 142
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    return-void
.end method
