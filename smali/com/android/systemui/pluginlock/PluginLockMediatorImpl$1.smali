.class Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PluginLockMediatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackDropViewShowing(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onBackDropViewShowing(ZZ)V

    return-void
.end method

.method public bridge synthetic onBiometricLockoutChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    return-void
.end method

.method public bridge synthetic onDlsViewModeChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDlsViewModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDualDARInnerLockscreenRequirementChanged(I)V

    return-void
.end method

.method public bridge synthetic onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onDualDarInnerLockScreenStateChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onEmergencyStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    return-void
.end method

.method public bridge synthetic onFaceWidgetFullscreenModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onFaceWidgetFullscreenModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onFailedUnlockAttemptChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onFailedUnlockAttemptChanged()V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onLocaleChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLockDisabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onLockDisabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onLockModeChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onLockModeChanged()V

    return-void
.end method

.method public bridge synthetic onNotifyKeyguardLockout()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onNotifyKeyguardLockout()V

    return-void
.end method

.method public bridge synthetic onOccluded(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onOccluded(Z)V

    return-void
.end method

.method public bridge synthetic onOfflineStateChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onOfflineStateChanged()V

    return-void
.end method

.method public bridge synthetic onOwnerInfoChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onOwnerInfoChanged()V

    return-void
.end method

.method public bridge synthetic onPackageAdded(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPackageChanged(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageDataCleared(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onRemoteLockInfoChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onRemoteLockInfoChanged()V

    return-void
.end method

.method public bridge synthetic onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public bridge synthetic onSimulationFailToUnlock(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onSimulationFailToUnlock(I)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedGoingToSleep why :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isWindowSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    :cond_0
    const/4 v0, 0x4

    const-string v1, "action"

    if-ne p1, v0, :cond_1

    .line 1201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "lid_switch"

    .line 1202
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$300(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v0

    .line 1207
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$400(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$402(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)Z

    .line 1209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action_lock_style_changed"

    .line 1210
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$400(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1212
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$500(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    .line 1220
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onStartedGoingToSleep(IZ)V

    :cond_3
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSystemDialogsShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onSystemDialogsShowing()V

    return-void
.end method

.method public bridge synthetic onTableModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onTableModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onUnlocking()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUnlocking()V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$002(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)Z

    .line 1175
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateCoverState, mViewMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$100(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1177
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$100(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 1178
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "cover_closed"

    .line 1179
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUpdateFaceWidgetMediaOutputRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onUpdateFaceWidgetRemoteViews(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onUpdateFaceWidgetRemoteViews(Landroid/content/Intent;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$600(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$600(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitchComplete(I)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$600(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->access$600(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitching(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onWallpaperTypeChanged(IZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorCallback;->onWallpaperTypeChanged(IZZ)V

    return-void
.end method
