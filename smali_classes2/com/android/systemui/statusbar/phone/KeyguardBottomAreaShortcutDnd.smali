.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
.source "KeyguardBottomAreaShortcutDnd.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V

    .line 19
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;

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
.method public addListener()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->setZenState(I)I

    move-result p0

    const/4 v1, 0x0

    const-string v2, "Keyguard"

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_app_shortcut_dnd_app_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->fg_do_not_disturb_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->fg_do_not_disturb_off:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

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

.method public isPanelIconTransitionNeeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;->updateShortcut()V

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
