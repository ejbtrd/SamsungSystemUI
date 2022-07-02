.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
.source "KeyguardBottomAreaShortcutFlashLight.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V

    .line 23
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method


# virtual methods
.method public addListener()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public execute()V
    .locals 3

    .line 53
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object v0

    .line 54
    iget v1, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 55
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->flash_light_disabled_by_low_battery:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_app_shortcut_flashlight_app_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/systemui/R$drawable;->fg_flash_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->fg_flash_off:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->fg_flash_on:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->fg_flash_off:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isPanelIconTransitionNeeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;->updateShortcut()V

    return-void
.end method

.method public onFlashlightError()V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method
