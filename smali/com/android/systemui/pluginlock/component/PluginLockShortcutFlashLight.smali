.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "PluginLockShortcutFlashLight.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockShortcutFlashLight"


# instance fields
.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method public static synthetic $r8$lambda$-gF6tbzJS9dAmO4Kc0AKnORjWGk(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->lambda$onFlashlightChanged$2(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gk_nClm3CRcV5rnzBMFxX56sj8c(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->lambda$onFlashlightChanged$1(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fy6ErtTmq4Pr0UIzc9H4wLFWI1Y(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->lambda$onFlashlightChanged$0(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    .line 22
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method private static synthetic lambda$onFlashlightChanged$0(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 0

    .line 37
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onFlashlightChanged$1(Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onFlashlightChanged$2(Landroid/os/Bundle;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutFlashLight"

    const-string v2, "excute()"

    .line 74
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_app_shortcut_flashlight_app_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->fg_flash_on:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->fg_flash_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isEnabled()Z
    .locals 3

    .line 61
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabled [isEnabled] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 2

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFlashlightChanged [enabled] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockShortcutFlashLight"

    invoke-static {v1, p0, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isEnable"

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "get_lockstar_task_shortcut_state"

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "arg"

    const-string v1, "Flashlight"

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extras"

    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    const-class p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFlashlightError()V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public setState(Z)V
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState [state] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockShortcutFlashLight"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method
