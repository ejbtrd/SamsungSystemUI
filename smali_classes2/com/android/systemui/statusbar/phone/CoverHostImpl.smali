.class public Lcom/android/systemui/statusbar/phone/CoverHostImpl;
.super Ljava/lang/Object;
.source "CoverHostImpl.java"

# interfaces
.implements Lcom/android/systemui/cover/CoverHost;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field private mIsCoverAppCovered:Z

.field private mIsCoverClosed:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/util/CoverUtil;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/util/CoverUtil;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 80
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 82
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 83
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 84
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 85
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 86
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 87
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 88
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setCoverHost(Lcom/android/systemui/cover/CoverHost;)V

    .line 90
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 91
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-void
.end method

.method private dismissKeyguardForCover()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 252
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v0, 0x0

    .line 256
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 255
    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    const-string p0, "CoverHostImpl"

    const-string/jumbo v0, "updateCoverWindow: keyguard dismissed by cover"

    .line 257
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCoverWindow()V
    .locals 4

    const-string v0, "CoverHostImpl"

    const-string/jumbo v1, "updateCoverWindow: START"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindowInternal()V

    .line 219
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 227
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    goto :goto_1

    .line 220
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_3

    .line 222
    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    .line 224
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    :goto_1
    const-string/jumbo p0, "updateCoverWindow: END"

    .line 231
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCoverWindowInternal()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setCoverState(ZZI)V

    const/4 v1, 0x0

    .line 239
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 244
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setCoverState(Z)V

    return-void
.end method

.method private updateKeyguardLock()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CoverHostImpl"

    const-string v0, "Don\'t need to update doKeyguardLaterLocked by desktopMode"

    .line 267
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_3

    .line 277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->cancelLockWhenCoverIsOpened()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getCoverType()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    :goto_0
    return p0
.end method

.method public isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCoverClosed()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    return p0
.end method

.method public isNeedScrimAnimation()Z
    .locals 2

    .line 206
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->getCoverType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    const-string v0, "CoverHostImpl"

    const-string v1, "isNeedScrimAnimation false"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onCameraLaunchGestureDetected()Z
    .locals 11

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 160
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 162
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 161
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v2

    const-string v3, "isSecure"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 170
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    move-object v7, v0

    const-string v0, "isQuickLaunchMode"

    .line 172
    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.android.systemui.camera_launch_source"

    const-string/jumbo v1, "power_double_tap"

    .line 173
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10200000

    .line 175
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const/high16 v0, 0x34010000

    .line 178
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v8, 0xc000000

    const/4 v9, 0x0

    .line 185
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 184
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "CoverHostImpl"

    const-string/jumbo v2, "make pending intent for cover toast."

    .line 186
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const-string v1, ""

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/doze/PluginAODManager;->showCoverToast(Landroid/app/PendingIntent;ZLjava/lang/String;)V

    return v4

    :cond_2
    return v1
.end method

.method public onCoverAppCovered(Z)I
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-eq p1, v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCoverAppCovered: covered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverHostImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 101
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SAFEMODE:Z

    if-eqz v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 106
    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "CoverHostImpl"

    const-string/jumbo v4, "updateCoverState: attach = %s, cover closed = %s, type = %d"

    .line 109
    invoke-static {v1, v4, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 113
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isCoverUiWithWallpaper(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 119
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onCoverSwitchStateChanged(Z)V

    .line 121
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    goto :goto_0

    .line 125
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-eq v1, v0, :cond_5

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onCoverSwitchStateChanged(Z)V

    .line 128
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateKeyguardLock()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    .line 133
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-nez v0, :cond_5

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->dismissKeyguardForCover()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 137
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    .line 144
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/CoverUtil;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method
