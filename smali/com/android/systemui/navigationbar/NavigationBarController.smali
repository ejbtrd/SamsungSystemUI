.class public Lcom/android/systemui/navigationbar/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationBarController"


# instance fields
.field private final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsTablet:Z

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

.field private mNavMode:I

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/NavigationBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private final mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field private final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field private final mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$eCLFWqxEyx7Ep_fem0hWsrbcP5Q(Lcom/android/systemui/navigationbar/NavigationBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->lambda$onNavigationModeChanged$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p14

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 152
    new-instance v5, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 189
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    move-object v6, p2

    .line 190
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mWindowManager:Landroid/view/WindowManager;

    move-object v6, p3

    .line 191
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAssistManagerLazy:Ldagger/Lazy;

    move-object v6, p4

    .line 192
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v6, p5

    .line 193
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v6, p6

    .line 194
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v6, p7

    .line 195
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 196
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 197
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v6, p10

    .line 198
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    move-object/from16 v6, p11

    .line 199
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v6, p12

    .line 200
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v6, p13

    .line 201
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 202
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v6, p15

    .line 203
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v6, p16

    .line 204
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v6, p17

    .line 205
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v6, p18

    .line 206
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v6, p19

    .line 207
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v6, p20

    .line 208
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v6, p21

    .line 209
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v6, p22

    .line 210
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v6, p24

    .line 211
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v6, p23

    .line 212
    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    .line 213
    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 214
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v4, p26

    .line 215
    invoke-interface {v4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-object/from16 v4, p25

    .line 217
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    .line 218
    invoke-virtual {v3, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    .line 219
    invoke-virtual {v3, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 220
    new-instance v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-direct {v3, p8}, Lcom/android/systemui/navigationbar/TaskbarDelegate;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->isTablet(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    move-object/from16 v1, p27

    .line 222
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p28

    .line 224
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 226
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    .line 227
    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v1, p29

    .line 228
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 230
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz v1, :cond_1

    move-object/from16 v1, p30

    .line 231
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    :cond_1
    return-void
.end method

.method private isTablet(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 540
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 541
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 543
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 544
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isThreeButtonTaskbarEnabled()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->isThreeButtonTaskbarFlagEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isThreeButtonTaskbarFlagEnabled()Z
    .locals 1

    const-string p0, "persist.debug.taskbar_three_button"

    const/4 v0, 0x0

    .line 536
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onNavigationModeChanged$0(I)V
    .locals 1

    .line 275
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    if-eq p1, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->updateNavbarForTaskbar()Z

    :cond_0
    const/4 p1, 0x0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-nez v0, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recreateNavigationBar(I)V
    .locals 2

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method


# virtual methods
.method public checkNavBarModes(I)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :cond_0
    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 34
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->isThreeButtonTaskbarEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 381
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v4

    .line 384
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getFlags()I

    move-result v7

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    .line 385
    :goto_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    const-string v7, "Skip createNavigationBar displayId="

    if-eqz v6, :cond_5

    .line 389
    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDexDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 394
    :cond_5
    sget-boolean v6, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    .line 395
    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCoverDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 400
    :cond_6
    :try_start_0
    invoke-interface {v4, v2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v5, :cond_8

    .line 409
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    goto :goto_3

    .line 410
    :cond_8
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :goto_3
    move-object v5, v3

    .line 411
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar;

    move-object v4, v3

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAssistManagerLazy:Ldagger/Lazy;

    iget-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v12, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v13, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v14, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    iget-object v15, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v33, v1

    invoke-direct/range {v4 .. v33}, Lcom/android/systemui/navigationbar/NavigationBar;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    .line 440
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, p2

    .line 442
    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->createView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 443
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBarController$1;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/android/systemui/navigationbar/NavigationBarController$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 405
    :catch_0
    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBarController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get WindowManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 5

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->updateNavbarForTaskbar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 358
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-nez p1, :cond_1

    .line 359
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public disableAnimationsDuringHide(IJ)V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 505
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->disableAnimationsDuringHide(J)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 550
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    if-lez p1, :cond_0

    .line 552
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 554
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishBarAnimations(I)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->finishBarAnimations()V

    :cond_0
    return-void
.end method

.method public getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 1

    .line 527
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    return-object p0
.end method

.method public getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    .line 238
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->isTablet(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->updateNavbarForTaskbar()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 245
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CONFIGURATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 247
    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 246
    invoke-interface {v0, p0, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_CAN_MOVE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 250
    invoke-interface {v0, p0, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 257
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->recreateNavigationBar(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onDisplayReady(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->isTablet(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 2

    .line 268
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 272
    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    .line 273
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeNavigationBar(I)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 464
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->destroyView()V

    .line 465
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationBarLumaSamplingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setWindowTouchable(Z)V
    .locals 0

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setWindowTouchable(Z)V

    :cond_0
    return-void
.end method

.method public touchAutoDim(I)V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->touchAutoDim()V

    :cond_0
    return-void
.end method

.method public transitionTo(IIZ)V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 497
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->transitionTo(IZ)V

    :cond_0
    return-void
.end method

.method public updateNavbarForTaskbar()Z
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->isThreeButtonTaskbarFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavMode:I

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
