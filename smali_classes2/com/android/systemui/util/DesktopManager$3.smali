.class Lcom/android/systemui/util/DesktopManager$3;
.super Lcom/android/internal/desktop/IDesktopBarCallback$Stub;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Lcom/android/internal/desktop/IDesktopBarCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDismissKeyguard()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1100(Lcom/android/systemui/util/DesktopManager;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyFaceRunningStateChanged(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyLockout()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestFingerprintAuth(Z)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x50000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showBouncer()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showControls()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showGlobalActionDialog()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$3;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
