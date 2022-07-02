.class public Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "SecStatusBarKnoxMediator.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDoubleTapCount:I

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public static synthetic $r8$lambda$5_BsGJjq2proT3zjBcV2_1I5t20(Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 62
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 63
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private animateHide(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    .line 279
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x4

    .line 280
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private animateShow(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    .line 268
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 269
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private executeKnoxCustomDoubleTapScreenOff(Z)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SecStatusBarKnoxMediator"

    if-eqz p1, :cond_2

    .line 298
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    if-ne p1, v2, :cond_1

    .line 300
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo p0, "setKnoxCustomDoubleTapScreenOff: posting delayed message"

    .line 302
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    const-string/jumbo p1, "setKnoxCustomDoubleTapScreenOff: going to sleep"

    .line 304
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 305
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "setKnoxCustomDoubleTapScreenOff: not tapped"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private isFirstTimeDoubleTapCount()Z
    .locals 0

    .line 294
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mDoubleTapCount:I

    return-void
.end method


# virtual methods
.method public onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 321
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 322
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    const-string v2, "SecStatusBarKnoxMediator"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onBarInterceptTouchEvent()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->isFirstTimeDoubleTapCount()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 328
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    const-string/jumbo p1, "setKnoxCustomDoubleTapScreenOff: ACTION_UP"

    .line 335
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v4

    .line 338
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->executeKnoxCustomDoubleTapScreenOff(Z)V

    return-void
.end method

.method public onUpdateQuickPanelButtonUsers()V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecStatusBarKnoxMediator"

    const-string/jumbo v1, "onUpdateQuickPanelButtonUsers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQuickStatusBarHeader()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    :cond_1
    return-void
.end method

.method public onUpdateQuickPanelButtons()V
    .locals 2

    .line 79
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecStatusBarKnoxMediator"

    const-string/jumbo v1, "onUpdateQuickPanelButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController;->refreshBarKnox()V

    :cond_1
    return-void
.end method

.method public onUpdateStatusBarHidden()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const-string v1, "SecStatusBarKnoxMediator"

    if-eqz v0, :cond_6

    .line 109
    :try_start_0
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 112
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isShadeLockedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-class v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->makeExpandedInvisibleForKnox()V

    .line 115
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox and Collapsed panel"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox..."

    .line 119
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onUpdateStatusBarHidden() Visibility of StatusBarView is VISIBLE by Knox."

    .line 123
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setRestrictedVisibleByKnox(Z)V

    goto :goto_1

    .line 128
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "onUpdateStatusBarHidden() PhoneStatusBarView is null !"

    .line 129
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 132
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setRestrictedVisibleByKnox(Z)V

    goto :goto_2

    .line 135
    :cond_5
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string/jumbo p0, "onUpdateStatusBarHidden() KeyguardStatusBarView is null !"

    .line 136
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed Applying policy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    :cond_6
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string/jumbo p0, "onUpdateStatusBarHidden() but, mStatusBar is null.."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public onUpdateStatusBarIcons()V
    .locals 7

    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    const-string v1, "SecStatusBarKnoxMediator"

    if-eqz v0, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateStatusBarIcons() mStatusBar is null ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v2, :cond_2

    return-void

    .line 159
    :cond_2
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isStatusBarIconsEnabled()Z

    move-result v2

    .line 161
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    const-string/jumbo v4, "onUpdateStatusBarIcons() show:"

    if-eqz v3, :cond_5

    .line 162
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$id;->system_icons:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", phoneSystemIcons:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_4

    .line 166
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_1

    .line 168
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    .line 171
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$id;->system_icons:I

    .line 173
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_6

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lockSystemIcons:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v2, :cond_7

    .line 178
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_2

    .line 180
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onUpdateStatusBarText()V
    .locals 9

    .line 195
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->DEBUG:Z

    const-string v2, "SecStatusBarKnoxMediator"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "onUpdateStatusBarText()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v1, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->qs_knox_custom_statusbar_viewstub:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$id;->qs_knox_custom_statusbar_text:I

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_4

    return-void

    .line 220
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ", barTextView:"

    const/4 v7, 0x0

    if-nez v5, :cond_6

    .line 221
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->getStatusBarTextSize()I

    move-result v5

    int-to-float v5, v5

    const/4 v8, 0x1

    .line 222
    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v5}, Lcom/android/systemui/knox/KnoxStateMonitor;->getStatusBarTextStyle()I

    move-result v5

    .line 225
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 228
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v0

    if-lez v0, :cond_5

    .line 230
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 231
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 232
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0xa

    .line 233
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 234
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x6c

    .line 237
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 238
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 239
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    int-to-float v0, v0

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 242
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdateStatusBarText(VISIBLE) barTextString:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", barScrollWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 246
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 248
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpdateStatusBarText(GONE) barTextString:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 250
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void
.end method
