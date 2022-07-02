.class public Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;
.super Ljava/lang/Object;
.source "PluginFaceWidgetManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/facewidget/PluginFaceWidget$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;",
        "Lcom/android/systemui/plugins/facewidget/PluginFaceWidget$Callback;"
    }
.end annotation


# instance fields
.field private mAppPluginVersion:I

.field private mBootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

.field private mContainerView:Landroid/view/View;

.field private mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

.field private mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field private mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field private mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

.field private mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

.field private mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field private mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

.field private mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

.field private mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginContext:Landroid/content/Context;

.field private mPluginFaceWidgetSidePadding:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

.field private mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mSysuiContext:Landroid/content/Context;

.field private mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

.field private mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;


# direct methods
.method public static synthetic $r8$lambda$1cFK99ctlbhcooJ5Ch1jp-k0nQk(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->lambda$onPluginConnected$1(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 115
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    move-object v1, p2

    .line 116
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    move-object v1, p3

    .line 117
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-object v1, p4

    .line 118
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-object v1, p5

    .line 119
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    move-object v1, p6

    .line 120
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    move-object v1, p7

    .line 121
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    move-object v1, p8

    .line 122
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    move-object v1, p9

    .line 123
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    move-object v1, p10

    .line 124
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    move-object v1, p11

    .line 125
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-object v1, p12

    .line 126
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    move-object v1, p13

    .line 127
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    move-object/from16 v1, p14

    .line 128
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-object/from16 v1, p16

    .line 129
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p17

    .line 130
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    move-object/from16 v1, p18

    .line 131
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mBootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    move-object/from16 v1, p15

    .line 134
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->initPluginModule()V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->registUserSwitchObserver()V

    const-string v0, "PluginFaceWidgetManager"

    const-string v1, "PluginFaceWidgetManager() started"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->stopPluginModule()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->initPluginModule()V

    return-void
.end method

.method private initPluginModule()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method private static synthetic lambda$onPluginConnected$1(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 6

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 222
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V

    return-void
.end method

.method private registUserSwitchObserver()V
    .locals 2

    .line 156
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    const-string p0, "PluginFaceWidgetManager"

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method private stopPluginModule()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method


# virtual methods
.method public applyBlur(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public applyBlur(I)V
    .locals 0

    .line 441
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(I)V

    return-void
.end method

.method public canBeSkipOnWakeAndUnlock()Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 542
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAODClockView(Z)Landroid/view/View;
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->getAODClockView(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAODZigzagPosition()Landroid/graphics/Point;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getZigzagPosition()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getAdaptiveColorResult()[I
    .locals 0

    .line 432
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppPluginVersion()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    return p0
.end method

.method public getDisplayLifeCycle()Lcom/android/systemui/plugins/facewidget/PluginDisplayLifeCycle;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    return-object p0
.end method

.method public getFaceWidgetContainerWrapper()Lcom/android/systemui/facewidget/KeyguardStatusBase;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    return-object p0
.end method

.method public getFaceWidgetSidePadding()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginFaceWidgetSidePadding:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    return-object p0
.end method

.method public getFloatingShortcutRotation()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getHomeCityTimeZoneDeviceProvisionedFromPrefs()Ljava/lang/String;
    .locals 2

    .line 515
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneDeviceProvisioned"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInDisplayFingerprintHeight()I
    .locals 0

    .line 377
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    return p0
.end method

.method public getInDisplayFingerprintImageSize()I
    .locals 0

    .line 372
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result p0

    return p0
.end method

.method public getKeyguardStatusCallback()Lcom/android/systemui/plugins/facewidget/PluginKeyguardStatusCallback;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    return-object p0
.end method

.method public getKeyguardUpdateMonitor()Lcom/android/systemui/plugins/facewidget/PluginKeyguardUpdateMonitor;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method public getKnoxStateMonitor()Lcom/android/systemui/plugins/facewidget/PluginKnoxStateMonitor;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/systemui/plugins/facewidget/PluginLockPatternUtils;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    return-object p0
.end method

.method public getMinTopMargin(IZ)I
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    .line 535
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getMinTopMargin(IZ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .line 490
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050209

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getNotificationControllerCallback()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController$Callback;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    return-object p0
.end method

.method public getNotificationPanelViewHeight()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result p0

    return p0
.end method

.method public getPluginLockManager()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetLockManager;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    return-object p0
.end method

.method public getSystemUIPluginVersion()I
    .locals 0

    const/16 p0, 0x408

    return p0
.end method

.method public getWallpaperUtils()Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    return-object p0
.end method

.method public hasAdaptiveColorResult()Z
    .locals 0

    .line 427
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    const/4 p0, 0x0

    return p0
.end method

.method public isBlurSupported()Z
    .locals 0

    .line 392
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    return p0
.end method

.method public isCMASSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCapturedBlurSupported()Z
    .locals 0

    .line 397
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_CAPTURED_BLUR:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInDisplayFingerprintSupported()Z
    .locals 0

    .line 475
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isInDisplayFingerprintSupported()Z

    move-result p0

    return p0
.end method

.method public isLockScreenDisabled()Z
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->isLockScreenDisabled()Z

    move-result p0

    return p0
.end method

.method public isMultiSimSupported()Z
    .locals 0

    .line 387
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result p0

    return p0
.end method

.method public isNoLockIcon()Z
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldShowLockIcon()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isOpenThemeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPresidentialCMASSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubDisplay()Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isUIBiometricsSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    .line 338
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWiFiOnlyDevice()Z
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onClockPageTransitionEnded()V
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onClockPageTransitionEnded()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 4

    .line 185
    instance-of v0, p1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz v0, :cond_3

    .line 186
    invoke-interface {p1}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    .line 187
    new-instance v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/Plugin;)V

    .line 188
    new-instance v1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v2, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-direct {v1, v2, p1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginConnected() app version = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysui version = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x408

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    .line 193
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->setPluginFaceWidgetCallback(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget$Callback;)V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 197
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of p2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz p2, :cond_0

    .line 200
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v2, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {v3}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getPositionAlgorithm()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->initPlugin(Landroid/content/res/Resources;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;)V

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    new-instance p2, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {v2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getNotificationController()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p2}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;Landroid/content/Context;)V

    .line 203
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    new-instance p2, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v1, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {v2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getClockProvider()Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p2}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/facewidget/PluginClockProvider;

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginClockProvider;)V

    .line 204
    new-instance p1, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class p2, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {v1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getFaceWidgetSidePadding()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginFaceWidgetSidePadding:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    .line 207
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->provideParent()Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->attachFaceWidgetContainer(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 208
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getContainerView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mContainerView:Landroid/view/View;

    .line 209
    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getContentsContainers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;Landroid/view/View;Ljava/util/List;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->refreshFacewidget()V

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->updateFaceWidgetArea()V

    .line 216
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1}, Lcom/android/systemui/doze/PluginAODManager;->acceptConnectionConsumers()V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {p2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->getAODStateProvider()Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setPluginAODStateProvider(Lcom/android/systemui/plugins/facewidget/PluginAODStateProvider;)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getMediaDataListener()Lcom/android/systemui/media/MediaDataManager$Listener;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    .line 220
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->getMediaEntries()Ljava/util/LinkedHashMap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 221
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 222
    new-instance p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_3
    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    .line 229
    instance-of p1, p1, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p1, :cond_3

    const-string p1, "PluginFaceWidgetManager"

    const-string v0, "onPluginDisconnected()"

    .line 230
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/systemui/shared/plugins/PluginManager;

    .line 233
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/shared/plugins/PluginManager;->isValidClassLoader(Ljava/lang/ClassLoader;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    invoke-interface {p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onClassLoaderDiscarded()V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;Landroid/view/View;Ljava/util/List;)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V

    .line 242
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz v1, :cond_1

    .line 243
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->initPlugin(Landroid/content/res/Resources;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetPositionAlgorithm;)V

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;Landroid/content/Context;)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->initPlugin(Lcom/android/systemui/plugins/facewidget/PluginClockProvider;)V

    .line 247
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginFaceWidgetSidePadding:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    .line 248
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->refreshFacewidget()V

    .line 252
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    const/4 p1, 0x0

    .line 253
    iput p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    .line 255
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getMediaDataListener()Lcom/android/systemui/media/MediaDataManager$Listener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaDataManager;->removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    :cond_3
    return-void
.end method

.method public putHomeCityTimeZoneDeviceProvisionedToPrefs(Ljava/lang/String;)V
    .locals 1

    .line 510
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneDeviceProvisioned"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putHomeCityTimeZoneSetToPrefs(Ljava/lang/String;)V
    .locals 1

    .line 520
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneSet"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 470
    invoke-static/range {p1 .. p6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 452
    invoke-static {p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 458
    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNPVController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNPVController() controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public shouldEnableKeyguardScreenRotation()Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public updateAnimateScreenOff()V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public updateFaceWidgetArea()V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFaceWidgetArea()V

    :cond_0
    return-void
.end method

.method public updateNIOShortcutFingerPrintVisibility(Z)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNIOShortcutFingerPrintVisibility(Z)V

    :cond_0
    return-void
.end method
