.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    .line 1503
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOrientationChangeRequired(Z)V
    .locals 0

    .line 1507
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)V

    return-void
.end method

.method public onScreenTimeoutChanged(J)V
    .locals 2

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScreenTimeoutChanged timeOut : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object v0

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLockTimeOutValue:J

    .line 1514
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViewModeChanged mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1521
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->updateBiometricRecognition(Z)V

    .line 1522
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method public updateBiometricRecognition(Z)V
    .locals 4

    .line 1539
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1543
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchDlsBiometricMode(Z)V

    return-void
.end method

.method public updateOverlayUserTimeout(Z)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mUserScreenTimeOut:Z

    .line 1534
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public updateWindowSecureState(Z)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mSecuredWindow:Z

    .line 1528
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method
