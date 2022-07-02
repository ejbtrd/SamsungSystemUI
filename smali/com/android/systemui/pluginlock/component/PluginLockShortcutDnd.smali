.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "PluginLockShortcutDnd.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockShortcutDnd"


# instance fields
.field private mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public static synthetic $r8$lambda$D7o4fNFNzLQXrVIED2i3tnPonRY(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->lambda$onZenChanged$1(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJE1H0VRcDmjE221KWF4QFPKheE(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->lambda$onZenChanged$0(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGFkaIdR_MhJJzKuI7Lrz7RGmeI(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->lambda$onZenChanged$2(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    .line 21
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 22
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onZenChanged$0(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 0

    .line 36
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onZenChanged$1(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onZenChanged$2(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setZenState(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public excute()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutDnd"

    const-string v2, "excute"

    .line 61
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->setZenState(I)I

    move-result p0

    const/4 v1, 0x0

    const-string v2, "Keyguard"

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_app_shortcut_dnd_app_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->fg_do_not_disturb_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConditionsChanged([Landroid/service/notification/Condition;)V

    return-void
.end method

.method public bridge synthetic onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method public bridge synthetic onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method public bridge synthetic onEffectsSupressorChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    return-void
.end method

.method public bridge synthetic onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method public bridge synthetic onNextAlarmChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    return-void
.end method

.method public bridge synthetic onZenAvailableChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onZenChanged [zen] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutDnd"

    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->isEnabled()Z

    move-result p0

    const-string v0, "isEnable"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "get_lockstar_task_shortcut_state"

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "arg"

    const-string v1, "Dnd"

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extras"

    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setState(Z)V
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState [state] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutDnd"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v0, 0x0

    const-string v1, "Keyguard"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
