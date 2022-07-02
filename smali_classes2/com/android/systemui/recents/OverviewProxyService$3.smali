.class Lcom/android/systemui/recents/OverviewProxyService$3;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public static synthetic $r8$lambda$D7k0SdZE7Jm1jghiZ8MKES35aak(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$1(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMUd7SrICwXW9JRW-D-lpcN2KRE(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$0(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SXL0Y4LqlnCtirZsikgebICdWrs(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$2(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lK9_FRvhZxCwKpXcG6Mz3PJjpB8(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$3(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$0(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V
    .locals 1

    .line 629
    invoke-interface {p1}, Lcom/android/wm/shell/pip/Pip;->createExternalInterface()Lcom/android/wm/shell/pip/IPip;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_pip"

    .line 627
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$1(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 1

    .line 632
    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->createExternalInterface()Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_split_screen"

    .line 630
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$2(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 1

    .line 635
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->createExternalInterface()Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_one_handed"

    .line 633
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$3(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V
    .locals 1

    .line 640
    invoke-interface {p1}, Lcom/android/wm/shell/startingsurface/StartingSurface;->createExternalInterface()Lcom/android/wm/shell/startingsurface/IStartingWindow;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_starting_window"

    .line 638
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding died of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 671
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null binding of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 664
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "OverviewProxyService"

    .line 606
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2202(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 607
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2400(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 620
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2702(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 622
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2800(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v0

    const-string v1, "extra_window_corner_radius"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2900(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v0

    const-string v1, "extra_supports_window_corners"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3000(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 637
    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/transition/ShellTransitions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/wm/shell/transition/ShellTransitions;->createExternalInterface()Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "extra_shell_shell_transitions"

    .line 636
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3300(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 643
    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->createExternalInterface()Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "smartspace_transition"

    .line 641
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 646
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 648
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;I)I

    const-string v0, "Failed to call onInitialize()"

    .line 649
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3500(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 654
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3600(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 655
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/model/SysUiState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$3800(Lcom/android/systemui/recents/OverviewProxyService;I)V

    .line 657
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3900(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void

    :catch_1
    move-exception p2

    const-string v0, "Lost connection to launcher service"

    .line 613
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2500(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 615
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OverviewProxyService"

    const-string v0, "Service disconnected"

    .line 676
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$902(Lcom/android/systemui/recents/OverviewProxyService;I)I

    return-void
.end method
