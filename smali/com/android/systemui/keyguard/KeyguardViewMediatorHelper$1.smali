.class Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "KeyguardViewMediatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemoteLockType()I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRemoteLockState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enableLock = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Ljava/lang/Object;)V

    return-void
.end method

.method public checkRemoteLockPassword([B)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
