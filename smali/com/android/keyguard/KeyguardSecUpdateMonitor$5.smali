.class Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;
.super Ljava/lang/Object;
.source "KeyguardSecUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setupLocked()V
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

    .line 1635
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceRunningStateChanged(Z)V
    .locals 1

    const-string v0, "KeyguardFace"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "updateFaceListeningState"

    .line 1645
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stopListeningForFace"

    .line 1648
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    :goto_0
    return-void
.end method

.method public onLockout()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onLockout()"

    .line 1638
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "KeyguardFingerPrint"

    const-string v1, "onServiceDisconnected"

    .line 1655
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$402(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Z)Z

    return-void
.end method
