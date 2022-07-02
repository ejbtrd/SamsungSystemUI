.class Lcom/android/systemui/util/DesktopManager$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Looper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_7

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_6

    const/high16 v1, 0x30000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 p1, 0x60000

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_DEX_SUPPORT:Z

    if-eqz p1, :cond_8

    .line 169
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$1000(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;->start()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->requestFingerprintAuth(Z)V

    goto :goto_0

    .line 158
    :cond_3
    const-class p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    goto :goto_0

    .line 153
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0, v2}, Lcom/android/systemui/util/DesktopManager;->access$900(Lcom/android/systemui/util/DesktopManager;Z)V

    goto :goto_0

    .line 147
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$800(Lcom/android/systemui/util/DesktopManager;)V

    goto :goto_0

    .line 141
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$2;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$700(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->showBouncer()V

    :cond_8
    :goto_0
    return-void
.end method
