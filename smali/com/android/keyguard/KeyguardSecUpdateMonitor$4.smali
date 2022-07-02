.class Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;
.super Ljava/lang/Object;
.source "KeyguardSecUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

.field final userId:I


# direct methods
.method public static synthetic $r8$lambda$xfCoBDPkrcYKDTtz7mORQJ6NswE(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->lambda$run$0(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->userId:I

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mBiometricLockoutResetRunnable()"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$300(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/keyguard/KeyguardSecUpdateMonitor$4$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCallback(Ljava/util/function/Consumer;)V

    .line 393
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/DesktopManager;->notifyBiometricLockoutChanged(ZI)V

    .line 395
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method
