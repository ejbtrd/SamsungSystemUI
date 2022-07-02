.class Lcom/android/systemui/util/DesktopManager$1;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public static synthetic $r8$lambda$5mmOf4sLpY_0Q09V_J7WYos9GNI(Lcom/android/systemui/util/DesktopManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager$1;->lambda$onServiceConnected$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "SystemUIDesktop is died"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "DesktopManager"

    const-string/jumbo v0, "onBindingDied"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    const-string/jumbo v0, "onBindingDied-Unbind"

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/util/DesktopManager;->access$500(Lcom/android/systemui/util/DesktopManager;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onBindingDied-Reconnect"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$600(Lcom/android/systemui/util/DesktopManager;)V

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$400(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 132
    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onBindingDied()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DesktopManager"

    const-string/jumbo v0, "onServiceConnected"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p2}, Lcom/android/internal/desktop/IDesktopBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/desktop/IDesktopBar;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/util/DesktopManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/util/DesktopManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/DesktopManager$1;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 94
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p2}, Lcom/android/systemui/util/DesktopManager;->access$100(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBarCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->setDesktopBarCallback(Lcom/android/internal/desktop/IDesktopBarCallback;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$200(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->notifyExitKeyguardAnimationIfNeeded()V

    .line 97
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->notifySimStateInitInfo()V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLock()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyRemoteLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$400(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 105
    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceConnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DesktopManager"

    const-string/jumbo v0, "onServiceDisconnected"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/util/DesktopManager;->access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;

    .line 113
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$1;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$400(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 114
    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
