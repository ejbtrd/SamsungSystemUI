.class public Lcom/android/keyguard/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardBouncerContainer.java"


# instance fields
.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 27
    iput-object p3, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 32
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x52

    if-eq v2, v3, :cond_3

    const/16 v0, 0x18

    if-eq v2, v0, :cond_2

    const/16 v0, 0x19

    if-eq v2, v0, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v1

    :cond_3
    if-nez v0, :cond_4

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_4
    if-nez v0, :cond_5

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    .line 61
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 64
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7
    if-nez v0, :cond_8

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_8
    return v1
.end method
