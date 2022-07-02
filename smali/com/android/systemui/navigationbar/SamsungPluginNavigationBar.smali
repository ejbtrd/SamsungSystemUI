.class public Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;
.super Ljava/lang/Object;
.source "SamsungPluginNavigationBar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;


# static fields
.field private static FORCE_SHOW_NAVIGATION_BAR:I = 0x800000


# instance fields
.field mActivityOptionsWrapper:Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;

.field mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

.field private mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mIsKeyguardShowing:Z

.field mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field mNavBarStoreAdapter:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

.field mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;

.field mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field mTaskStackAdpater:Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarView;Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;Lcom/android/systemui/navigationbar/TaskStackAdapter;Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar$1;-><init>(Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    .line 64
    iput-object p4, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 65
    iput-object p5, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavBarStoreAdapter:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    .line 66
    iput-object p6, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mTaskStackAdpater:Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;

    .line 67
    iput-object p7, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mActivityOptionsWrapper:Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;

    .line 69
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 70
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 71
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mIsKeyguardShowing:Z

    return p1
.end method


# virtual methods
.method public forceSetBackGesture(Z)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->forceSetBackGesture(Z)V

    return-void
.end method

.method public getActivityOptionsWrapper()Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mActivityOptionsWrapper:Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;

    return-object p0
.end method

.method public getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    return-object p0
.end method

.method public getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getDefaultColorProvider()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getDefaultLayoutProviderContainer()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0
.end method

.method public getDisabledFlags()I
    .locals 1

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_DISABLED1:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;

    return-object p0
.end method

.method public getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavBarStoreAdapter:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    return-object p0
.end method

.method public getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mTaskStackAdpater:Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;

    return-object p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mIsKeyguardShowing:Z

    return p0
.end method

.method public registerKeyguardStateCallback()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resetScheduleAutoHide()V
    .locals 0

    .line 202
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetScheduleAutoHide()V

    return-void
.end method

.method public setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;)V

    if-eqz p2, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateNavigationBarColor()V

    :cond_0
    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIconsAndHints()V

    return-void
.end method

.method public setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
    .locals 2

    .line 133
    :try_start_0
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_0

    .line 138
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget v1, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    or-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 140
    :cond_0
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget v1, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    const-string/jumbo p2, "window"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 144
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->setIconThemeAlpha(F)V

    return-void
.end method

.method public setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V

    return-void
.end method

.method public setRotationLockAtAngle(ZI)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p1, 0x8ef

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    return-void
.end method

.method public unregisterKeyguardStateCallback()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateOpaqueColor(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateOpaqueColor(I)V

    return-void
.end method
