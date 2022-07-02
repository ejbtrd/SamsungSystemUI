.class public Lcom/android/systemui/controller/ScreenControllerImpl;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    }
.end annotation


# instance fields
.field private final mBrightnessHandler:Landroid/os/Handler;

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private final mScreenCaptureHandler:Landroid/os/Handler;

.field private mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

.field private mTryCount:I

.field private mWinodwManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    .line 39
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/controller/ScreenControllerImpl;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/controller/ScreenControllerImpl;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/controller/ScreenControllerImpl;->hasUtteranceWindow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    return-object p1
.end method

.method private hasUtteranceWindow()Z
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const-string v1, "ScreenControllerImpl"

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    .line 368
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const-string v0, "mWMS was null"

    .line 369
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 374
    :try_start_0
    invoke-interface {p0}, Landroid/view/IWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object p0

    .line 375
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    const-string v3, "com.samsung.android.bixby.agent/com.samsung.android.bixby.agent.mainui.lightweight.LightWeightWindow"

    .line 376
    iget-object v2, v2, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "Fail to check windows by RemoteException"

    .line 381
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-string p0, "mWMS is null"

    .line 387
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "desktopmode"

    .line 357
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 p1, 0x65

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    .line 394
    new-instance v0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    .line 395
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "ScreenControllerImpl"

    const-string p1, "Another screenshot is doing."

    .line 397
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 132
    const-class p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    .line 133
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 134
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 136
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBrightnessSlider()Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 138
    invoke-virtual {p3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_1

    return v0

    :cond_1
    const-string v2, "max"

    .line 154
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 162
    :cond_4
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result v2

    sub-int/2addr p2, v2

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    goto :goto_2

    :catch_0
    return v0

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 158
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    sub-int/2addr p1, p2

    .line 170
    :goto_2
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-static {p1, p2, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 171
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-ne p1, p2, :cond_7

    return v0

    :cond_7
    const-string/jumbo p2, "statusbar"

    .line 176
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 175
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 179
    :try_start_1
    invoke-interface {p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "ScreenControllerImpl"

    const-string v2, "expand panel RemoteException "

    .line 182
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/controller/ScreenControllerImpl$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/controller/ScreenControllerImpl$1;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/widget/SeekBar;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/controller/ScreenControllerImpl$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$2;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/internal/statusbar/IStatusBarService;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method private setBrightnessNlg(ZLjava/lang/String;Landroid/content/Context;)I
    .locals 4

    .line 234
    const-class p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isCoverClosed()Z

    move-result p3

    const-string v0, "ScreenControllerImpl"

    if-eqz p3, :cond_0

    const-string/jumbo p0, "setBrightness - Cover is closed so return"

    .line 235
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 243
    :cond_0
    const-class p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p3

    const/4 v1, -0x1

    if-eqz p3, :cond_a

    .line 244
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 245
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 247
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBrightnessSlider()Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 249
    invoke-virtual {p3}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v2

    :goto_0
    if-nez p3, :cond_2

    return v1

    :cond_2
    const-string v3, "max"

    .line 265
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 273
    :cond_5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result v3

    sub-int/2addr p2, v3

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    goto :goto_2

    :catch_0
    return v1

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 269
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_2

    .line 270
    :cond_7
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    sub-int/2addr p1, p2

    .line 281
    :goto_2
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-ne p1, p2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const-string/jumbo p2, "statusbar"

    .line 287
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 286
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 290
    :try_start_1
    invoke-interface {p2, v2}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "expand panel RemoteException "

    .line 293
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/controller/ScreenControllerImpl$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/controller/ScreenControllerImpl$3;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/widget/SeekBar;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    iget-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/controller/ScreenControllerImpl$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$4;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/internal/statusbar/IStatusBarService;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0

    :cond_a
    return v1
.end method


# virtual methods
.method public SetDisplayBrightness(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetDisplayBrightness level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public SetDisplayBrightnessNlg(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetDisplayBrightness level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightnessNlg(ZLjava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public goHomeScreen(Landroid/content/Context;)V
    .locals 2

    .line 87
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.HOME"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goToNotiSettings(Landroid/content/Context;)Z
    .locals 2

    .line 406
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    .line 407
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public makeDisplayBrighter(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayBrighter level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public makeDisplayBrighterNlg(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayBrighter level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightnessNlg(ZLjava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public makeDisplayDarker(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayDarker level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public makeDisplayDarkerNlg(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayDarker level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightnessNlg(ZLjava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public pressBackKey(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x3e8

    .line 96
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 97
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/controller/ScreenControllerImpl;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "ScreenControllerImpl"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "send backkey to Dex."

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, v0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v15, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x48

    const/4 v14, 0x0

    const/16 v16, 0x2

    move-object v2, v15

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    move-object/from16 v0, p0

    .line 101
    iget-object v0, v0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v15, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "send backkey to Phone."

    .line 104
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, v0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    :goto_0
    return-void
.end method

.method public shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "shareScreenShot."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public takeScreenShot(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "takeScreenShot."

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public takeScreenShotUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "takeScreenShotUri."

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x0

    return-object p0
.end method
