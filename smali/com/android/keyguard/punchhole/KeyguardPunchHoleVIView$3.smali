.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPunchHoleVIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 152
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    goto :goto_0

    .line 178
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    :goto_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/systemui/shared/system/RotationWatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->enable()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/systemui/shared/system/RotationWatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->disable()V

    :cond_1
    :goto_0
    return-void
.end method
