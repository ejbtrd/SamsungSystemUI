.class Lcom/android/systemui/doze/PluginAODManager$7;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubRoom() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/subscreen/SubScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/subscreen/SubScreenManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;

    move-result-object p0

    return-object p0

    .line 403
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2000(Lcom/android/systemui/doze/PluginAODManager;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperUtils()Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;

    move-result-object p0

    return-object p0
.end method

.method public isUserUnlocked()Z
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "isUserUnlocked() "

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method public onClockPageClicked()V
    .locals 4

    .line 384
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 385
    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_SUB_SCREEN_SIGNAL_INFO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PluginAODManager"

    const-string v1, "onClockPageClicked() "

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$1800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    const-class v2, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    invoke-static {v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->access$1802(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$1800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "onClockPageClicked() showSignalInfo"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->showSignalInfo()V

    :cond_1
    return-void
.end method

.method public setEnableDLS(Z)V
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnableDLS() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperState(II)V

    return-void
.end method

.method public shouldControlScreenOff()Z
    .locals 2

    .line 427
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$2300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldControlScreenOff() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
