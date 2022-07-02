.class Lcom/android/keyguard/KeyguardSecUpdateMonitor$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "KeyguardSecUpdateMonitor.java"


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


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "secureState"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecureLockChangedCallback sendResult : secureState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchSecureState(I)V

    return-void
.end method
