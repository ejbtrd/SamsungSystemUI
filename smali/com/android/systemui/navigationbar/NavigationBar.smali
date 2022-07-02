.class public Lcom/android/systemui/navigationbar/NavigationBar;
.super Ljava/lang/Object;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;
    }
.end annotation


# instance fields
.field private final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mAllowForceNavBarHandleOpaque:Z

.field private mAppearance:I

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistantAvailable:Z

.field private mAssistantTouchGestureEnabled:Z

.field private final mAutoDim:Ljava/lang/Runnable;

.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mBehavior:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private final mDepthListener:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field public mDisplayId:I

.field private final mEnableLayoutTransitions:Ljava/lang/Runnable;

.field private mForceNavBarHandleOpaque:Z

.field private final mHandler:Landroid/os/Handler;

.field public mHomeBlockedThisTouch:Z

.field private mHomeButtonLongPressDurationMs:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentUserSetup:Z

.field private mIsOnDefaultDisplay:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mLongPressHomeEnabled:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private final mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

.field private mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private mNavigationBarMode:I

.field private mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mOnVariableDurationHomeLongClick:Ljava/lang/Runnable;

.field private mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

.field private mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

.field private mOrientationParams:Landroid/view/WindowManager$LayoutParams;

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

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

.field private final mRotationWatcher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mScreenLifeCycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShowOrientedHandleForImmersiveMode:Z

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingQuickSwitchRotation:I

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

.field private final mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field private final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field private mTransientShown:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$-2dOL7JH8PTcwu4od8_x9VF3EiQ(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$1ikVut1IKywCdr39DwIhxxpGYBw(Lcom/android/systemui/navigationbar/NavigationBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2NyIRHPIvAhFRiIyK7keDxd83RU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$51uSrByCGmAv1mf5SuHfy8PrEF4(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$57P4EYjTmWpaqBJPIG1lCPB_CAQ(Lcom/android/systemui/navigationbar/NavigationBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onVerticalChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BivWj4Ks96oGJaimvchICf5H4YE(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$onLongPressRecents$6(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GMUrRGBTIpUp-9f8LwOrFGf5HW8(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPyc8leQZCHqPWbDVB3bTeaa9y4(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IJ8n67jK2SaOovl5IoUoNpdsAns(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J0Eup4yr5Un7SiVZkodFWTR5yRU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K7I0ugGK4L7biKOJxfyYbDfOVmU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LCNaADsgtD7BEqiJjLxeEA3aoT0(Lcom/android/systemui/navigationbar/NavigationBar;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$onHomeTouch$5(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lc81b84naHtaxRAuqpMeFxBuvqs(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OcmCtezrb1TMZIWstpDMuzD1K-0(Ljava/lang/Long;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$createView$3(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OzlSAu2d_aTly9QCM473olbOeX4(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$initSecondaryHomeHandleForRotation$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SgxIBUBj_3hUjZ4QyQB1Bu-OclU(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onImeSwitcherClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2khzvKue7NVudfy9B8kqnm8JdU(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$h1tdKzbIORPPk7SyQu-hJ3_4vdc(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
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
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p29

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 261
    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    .line 263
    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    .line 289
    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v4, -0x1

    .line 310
    iput v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    .line 333
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 355
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 444
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    .line 454
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    .line 455
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Ljava/lang/Runnable;

    .line 457
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Ljava/lang/Runnable;

    .line 465
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$4;

    new-instance v5, Landroid/os/Handler;

    .line 466
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/navigationbar/NavigationBar$4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 473
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 491
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 507
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    .line 1938
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1945
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRotationWatcher:Ljava/util/function/Consumer;

    .line 1951
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 1966
    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBar$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/NavigationBar$9;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, p1

    .line 554
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    move-object v4, p2

    .line 555
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    move-object v4, p4

    .line 556
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v4, p5

    .line 557
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v4, p6

    .line 558
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v4, p11

    .line 559
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v4, p7

    .line 560
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v4, p3

    .line 561
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v4, p12

    .line 562
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v4, p18

    .line 563
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v4, p19

    .line 564
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v4, p20

    .line 565
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object v4, p8

    .line 566
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 567
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 568
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    move-object/from16 v4, p13

    .line 569
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v4, p14

    .line 570
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v4, p15

    .line 571
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v4, p16

    .line 572
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v4, p17

    .line 573
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v4, p22

    .line 574
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v4, p23

    .line 575
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    move-object/from16 v4, p24

    .line 576
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    move-object/from16 v4, p25

    .line 577
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v4, p26

    .line 578
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v4, p21

    .line 579
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 580
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenLifeCycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v4, p27

    .line 583
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 585
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_0

    .line 586
    const-class v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v4, p28

    .line 587
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 589
    :cond_0
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz v4, :cond_1

    .line 590
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenLifeCycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 592
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 593
    invoke-virtual {v2, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isTransientShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Ldagger/Lazy;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)I
    .locals 0

    .line 202
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAllowForceNavBarHandleOpaque:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/navigationbar/NavigationBar;)Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/navigationbar/NavigationBar;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->clearTransient()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/store/NavBarStore;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAssistantEntrypoints()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/navigationbar/NavigationBar;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/navigationbar/NavigationBar;I)I
    .locals 0

    .line 202
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/navigationbar/NavigationBar;Z)Z
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    return p1
.end method

.method private allowSystemGestureIgnoringBarVisibility()Z
    .locals 1

    .line 1871
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private applySecondaryHomeHandleDrawable(I)V
    .locals 2

    .line 1046
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1048
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->setHomeHandleRect(Landroid/graphics/Rect;)V

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static barMode(ZI)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 1318
    :cond_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p0, :cond_1

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x6

    const/4 v1, 0x6

    if-ne p0, v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_3

    return v1

    :cond_3
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private canShowSecondaryHandle()Z
    .locals 2

    .line 1942
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkBarModes()V
    .locals 1

    .line 1859
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 1860
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_0

    .line 1862
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :goto_0
    return-void
.end method

.method private clearTransient()V
    .locals 1

    .line 1282
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 1284
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private deltaRotation(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private getCutoutHeight()I
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1032
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    .line 1035
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 1036
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleTransientChanged()V
    .locals 2

    .line 1289
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onTransientStateChanged(Z)V

    .line 1291
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result v0

    .line 1292
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateBarMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p0, :cond_1

    .line 1293
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarModeChanged(I)V

    :cond_1
    return-void
.end method

.method private initSecondaryHomeHandleForRotation()V
    .locals 8

    .line 918
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 920
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_GESTURE_HINT:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 922
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 921
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 928
    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    .line 929
    sget v1, Lcom/android/systemui/R$id;->secondary_home_handle:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)F

    .line 932
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    const v6, 0x20000138

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryHomeHandle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 942
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 945
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 960
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isTransientShown()Z
    .locals 0

    .line 1854
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    return p0
.end method

.method private static synthetic lambda$createView$3(Ljava/lang/Long;)Z
    .locals 4

    .line 670
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initSecondaryHomeHandleForRotation$4()V
    .locals 3

    .line 947
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 950
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->computeHomeHandleViewBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 954
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    .line 955
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 956
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 957
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setAutoDim(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 456
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/Integer;)V
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->needsReorient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1947
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onHomeTouch$5(Ljava/lang/Long;)V
    .locals 3

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$onLongPressRecents$6(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Ljava/lang/Boolean;
    .locals 0

    .line 1660
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private loggingAttributesChanged(IIZ)V
    .locals 2

    .line 2036
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p0, :cond_6

    .line 2037
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSystemBarAttributesChanged() -"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", appearance:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string p1, " ("

    .line 2041
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x1

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string p1, "APPEARANCE_OPAQUE_STATUS_BARS "

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2042
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    const-string p1, "APPEARANCE_OPAQUE_NAVIGATION_BARS "

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 2043
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_2

    const-string p1, "APPEARANCE_LOW_PROFILE_BARS "

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 2044
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_3

    const-string p1, "APPEARANCE_LIGHT_STATUS_BARS "

    goto :goto_3

    :cond_3
    move-object p1, v0

    .line 2045
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_4

    const-string v0, "APPEARANCE_LIGHT_NAVIGATION_BARS "

    .line 2046
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 2049
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", navbarColorManagedByIme:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private notifyNavigationBarScreenOn()V
    .locals 0

    .line 1439
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 0

    .line 1684
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1685
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 1686
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1685
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1690
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 1691
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1692
    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 1693
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onImeSwitcherClick(Landroid/view/View;)V
    .locals 1

    .line 1564
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    return-void
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .locals 2

    .line 1569
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->home:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 2

    .line 1573
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .locals 9

    const/4 v0, 0x0

    .line 1593
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 1594
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 1595
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1598
    :try_start_1
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_3

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    .line 1599
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isAccessControlEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1604
    iget-wide v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v5, v2, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 1636
    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1638
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    .line 1607
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 1608
    sget p2, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p2, :cond_1

    .line 1609
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    goto :goto_0

    .line 1610
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p2

    .line 1611
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v0

    .line 1617
    :goto_1
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLastLockToAppLongPress:J

    goto :goto_3

    .line 1620
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v5, p2, :cond_4

    move p2, v4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1636
    :try_start_4
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1638
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v4

    .line 1627
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, p3, :cond_7

    .line 1628
    sget p1, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p1, :cond_6

    .line 1629
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressRecents()Z

    move-result p0

    goto :goto_2

    .line 1630
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1631
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 1630
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onHomeLongClick(Landroid/view/View;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return p0

    :cond_7
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    .line 1643
    :try_start_6
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/16 p0, 0x80

    .line 1644
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 1645
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v4

    :catchall_0
    move-exception p0

    .line 1640
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NavigationBar"

    const-string p2, "Unable to reach activity manager"

    .line 1649
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return v0
.end method

.method private onLongPressRecents()Z
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRecentsOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 1658
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;

    .line 1659
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 1661
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v0, 0x10f

    const/16 v1, 0x11e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onLongPressRecents(Landroid/view/View;)Z
    .locals 2

    const-string v0, "NavigationBar"

    const-string v1, "onLongPressRecents() - Recents button long clicked"

    .line 1671
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->onLongPressRecents()V

    .line 1677
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/4 p0, 0x0

    const/16 v0, 0x80

    .line 1678
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 1679
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1511
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_0

    .line 1512
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 1

    .line 1555
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1556
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 1559
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1560
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1541
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_0

    .line 1543
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1545
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1547
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1548
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onVerticalChanged(Z)V
    .locals 0

    .line 1507
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private orientSecondaryHomeHandle()V
    .locals 7

    .line 965
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 969
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda22;

    .line 970
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 975
    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/navigationbar/NavigationBar;->deltaRotation(II)I

    move-result v0

    .line 976
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    if-eq v2, v1, :cond_2

    if-ne v0, v1, :cond_3

    .line 978
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secondary nav delta rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 985
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v2, :cond_4

    .line 986
    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->setDeltaRotation(I)V

    :cond_4
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_5

    move v1, v4

    move v5, v1

    goto :goto_0

    .line 991
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 992
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v5, :cond_6

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getCutoutHeight()I

    move-result v6

    sub-int/2addr v1, v6

    :cond_6
    if-eqz v5, :cond_7

    .line 996
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->samsung_hint_view_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    .line 997
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    goto :goto_0

    .line 1002
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    if-nez v5, :cond_9

    .line 1003
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    return-void

    .line 1006
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1007
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_a

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$dimen;->samsung_hint_view_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 1009
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 1013
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_b

    const/16 v2, 0x50

    goto :goto_1

    :cond_b
    if-ne v0, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 v2, 0x5

    .line 1015
    :goto_1
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1016
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1017
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1018
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_d

    .line 1020
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->applySecondaryHomeHandleDrawable(I)V

    .line 1022
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 973
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :goto_3
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    .line 1446
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1449
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    .line 1450
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1452
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    .line 1454
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    .line 1455
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1456
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1457
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 1459
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    .line 1460
    new-instance v2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1463
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1465
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1467
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method

.method private reconfigureHomeLongClick()V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_4

    .line 1064
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1067
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 1073
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1075
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private refreshLayout(I)V
    .locals 0

    .line 1401
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutDirection(I)V

    return-void
.end method

.method private registerAction(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1747
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->register(I)V

    goto :goto_0

    .line 1749
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->unregister(I)V

    :goto_0
    return-void
.end method

.method private removeSecondaryHomeHandle()V
    .locals 2

    .line 810
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;)V

    .line 812
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    return-void
.end method

.method private repositionNavigationBar()V
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1414
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 860
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 862
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private resetSecondaryHandle()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1056
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1059
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setAccessibilityFloatingMenuModeIfNeeded()V
    .locals 3

    .line 1719
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const/4 v1, -0x2

    const-string v2, "accessibility_button_mode"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method private setDisabled2Flags(I)V
    .locals 0

    .line 1373
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onDisable2FlagChanged(I)V

    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateAccessibilityTitle()V
    .locals 3

    .line 1994
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1996
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1997
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->samsung_nav_bar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1998
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAssistantEntrypoints()V
    .locals 6

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    const/4 v1, -0x2

    .line 1794
    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1797
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    .line 1798
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1799
    invoke-interface {v4}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v4

    const-string v5, "assist_long_press_home_enabled"

    .line 1797
    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1802
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    .line 1803
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 1804
    invoke-interface {v4}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v4

    const-string v5, "assist_touch_gesture_enabled"

    .line 1802
    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantTouchGestureEnabled:Z

    .line 1805
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantTouchGestureEnabled:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 1809
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 1807
    :goto_3
    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "NavigationBar"

    const-string v1, "Unable to send assistant availability data to launcher"

    .line 1811
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    return-void
.end method

.method private updateBarMode(I)Z
    .locals 4

    .line 1299
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    if-eq v0, p1, :cond_2

    .line 1300
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 1301
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1302
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_TRANSITION_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITION_MODE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 1303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 1302
    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 1306
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p0, :cond_1

    .line 1307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private updateScreenPinningGestures()V
    .locals 5

    .line 1420
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v1

    .line 1422
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 1424
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1426
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    goto :goto_0

    .line 1427
    :cond_0
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    .line 1425
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1428
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1430
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1431
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1434
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 1435
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez p0, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    invoke-virtual {v2, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    return-void
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 1

    .line 1272
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1275
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1278
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->clearTransient()V

    return-void
.end method

.method public checkNavBarModes()V
    .locals 5

    .line 1878
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1880
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v3

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 601
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 611
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 612
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 613
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->samsung_nav_bar:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 614
    iput-boolean v1, v6, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    goto :goto_0

    .line 616
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 618
    :goto_0
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x3

    .line 619
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x0

    .line 620
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavigationBar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {v6, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 623
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 625
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->navigation_bar_window:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 627
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 629
    sget v5, Lcom/android/systemui/R$layout;->samsung_navigation_bar:I

    goto :goto_1

    .line 630
    :cond_1
    sget v5, Lcom/android/systemui/R$layout;->navigation_bar:I

    .line 627
    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 632
    invoke-virtual {v4, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 633
    sget v5, Lcom/android/systemui/R$id;->navigation_bar_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_2

    .line 636
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v7, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVIGATIONBAR_CREATED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v8}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v9, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v10, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    .line 637
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v8

    .line 638
    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v8

    .line 636
    invoke-interface {v5, p0, v7, v8}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityTitle()V

    .line 643
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/WindowManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5, v3, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 645
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    .line 647
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 648
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/AssistManager;

    const/4 v5, -0x2

    .line 649
    invoke-virtual {v3, v5}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantAvailable:Z

    .line 650
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "assistant"

    .line 652
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    const/4 v7, -0x1

    .line 651
    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 654
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "assist_long_press_home_enabled"

    .line 655
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 654
    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 657
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "assist_touch_gesture_enabled"

    .line 658
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 657
    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 660
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$bool;->allow_force_nav_bar_handle_opaque:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAllowForceNavBarHandleOpaque:Z

    const-string/jumbo v3, "systemui"

    const-string v5, "nav_bar_handle_force_opaque"

    .line 662
    invoke-static {v3, v5, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mForceNavBarHandleOpaque:Z

    const-wide/16 v5, 0x0

    const-string v1, "home_button_long_press_duration_ms"

    .line 666
    invoke-static {v3, v1, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda23;

    .line 670
    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    .line 671
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    .line 672
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 671
    invoke-static {v3, v5, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAssistantEntrypoints()V

    if-eqz p1, :cond_5

    const-string v1, "disabled_state"

    .line 676
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const-string v1, "disabled2_state"

    .line 677
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    const-string v1, "appearance"

    .line 678
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const-string v1, "behavior"

    .line 679
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const-string/jumbo v1, "transient_state"

    .line 680
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-eqz v0, :cond_5

    const-string v0, "icon_hints"

    .line 682
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    .line 683
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    .line 689
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 691
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsCurrentUserSetup:Z

    .line 692
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 693
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->addListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V

    .line 695
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->setAccessibilityFloatingMenuModeIfNeeded()V

    return-object v4
.end method

.method public destroyView()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 703
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 702
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->removeListener(Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUserSetupListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDepthListener:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->removeListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V

    .line 712
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 4

    .line 1336
    iget p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    .line 1340
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_1

    .line 1341
    iget-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE1:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE2:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    .line 1344
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 1341
    invoke-interface {p4, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    const/high16 p4, 0x3600000

    and-int/2addr p4, p2

    .line 1352
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    if-eq p4, v0, :cond_2

    .line 1353
    iput p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    .line 1354
    iget-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p4, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(I)V

    .line 1355
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    if-eqz p1, :cond_2

    .line 1357
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/AssistManager;->setDisabledFlags(I)V

    .line 1362
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x10

    .line 1364
    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    if-eq p1, p2, :cond_3

    .line 1365
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setDisabled2Flags(I)V

    :cond_3
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 3

    .line 1915
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1c0

    add-long/2addr p1, v1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar (displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickSwitchRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHomeButtonLongPressDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLongPressHomeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistantTouchGestureEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistantTouchGestureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNavigationBarWindowState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    .line 1098
    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNavigationBarMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 1100
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    const-string v1, "mNavigationBarView"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 1102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public finishBarAnimations()V
    .locals 0

    .line 1935
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    return-void
.end method

.method public getA11yButtonState([Z)I
    .locals 8

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    .line 1763
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1765
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x0

    .line 1766
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    .line 1768
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1769
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v2

    :goto_0
    const/16 v6, 0x10

    if-ltz v3, :cond_1

    .line 1770
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1771
    iget v7, v7, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v7, :cond_0

    if-eq v7, v6, :cond_0

    move v5, v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1778
    aput-boolean v5, p1, v2

    .line 1783
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;->getCurrentAccessibilityButtonMode()I

    move-result p0

    if-ne p0, v4, :cond_3

    return v2

    :cond_3
    if-lt v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    const/4 p0, 0x2

    if-lt v1, p0, :cond_5

    const/16 v2, 0x20

    :cond_5
    or-int p0, v6, v2

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;
    .locals 0

    .line 1931
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method getNavigationIconHints()I
    .locals 0

    .line 1989
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    return p0
.end method

.method public getView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    return-object p0
.end method

.method public isNavBarWindowVisible()Z
    .locals 0

    .line 1867
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .locals 4

    .line 2024
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-nez v0, :cond_0

    return-void

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "notifyRequestedGameToolsWin visible : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2028
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_0

    .line 2030
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHideImmediately()V

    :goto_0
    return-void
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    const/high16 v0, 0x400000

    .line 1380
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 1381
    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 3

    .line 1387
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne v0, p1, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "notifySamsungPayInfo displayId : %d, visible: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyPayInfo(ZI)V

    .line 1390
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_SPAY_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_SHOWING:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1392
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_WIDTH:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1393
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p2

    .line 1394
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p2

    .line 1390
    invoke-interface {p1, p0, v0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAccessibilityButtonModeChanged(I)V
    .locals 0

    .line 1911
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 885
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 886
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    if-eq v1, v2, :cond_1

    .line 892
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLocale:Ljava/util/Locale;

    .line 893
    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLayoutDirection:I

    .line 894
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->refreshLayout(I)V

    .line 896
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityTitle()V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavbarLayout()V

    .line 904
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar()V

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 907
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    if-eq p1, v0, :cond_2

    .line 908
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    .line 909
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    .line 912
    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_3

    .line 913
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAssistantEntrypoints()V

    :cond_3
    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 1523
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->shouldDisableNavbarGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1526
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1527
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;->NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/navigationbar/NavigationBar$NavBarActionEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1528
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x5

    const-string v1, "invocation_type"

    .line 1529
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1533
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1534
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->abortCurrentGesture()V

    const/4 p0, 0x1

    return p0
.end method

.method onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1472
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 1478
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1499
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1500
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    .line 1480
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    .line 1481
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    .line 1482
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_3

    .line 1483
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1484
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NavigationBar"

    const-string p2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    .line 1485
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeBlockedThisTouch:Z

    return v0

    .line 1491
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    if-eqz p1, :cond_4

    .line 1492
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressDurationMs:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_0
    return p2
.end method

.method public onNavigationModeChanged(I)V
    .locals 2

    .line 1886
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1888
    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 1889
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1891
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1892
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundOverrideAlpha(F)V

    .line 1895
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1896
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1897
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->removeSecondaryHomeHandle()V

    .line 1899
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->initSecondaryHomeHandleForRotation()V

    .line 1901
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    .line 1902
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->setAccessibilityFloatingMenuModeIfNeeded()V

    .line 1904
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->canShowSecondaryHandle()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1905
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :cond_4
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->setButtonState(ZZ)V

    .line 1208
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRecentsAnimationRunning(Z)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 7

    .line 1173
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1176
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 1177
    invoke-static {v2}, Lcom/android/systemui/navigationbar/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v2

    .line 1178
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1179
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object v3

    .line 1180
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/RotationButtonController;->getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;

    move-result-object v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 1183
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRotationProposal proposedRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", winRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isValid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mNavBarWindowState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    .line 1186
    invoke-static {v6}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", rotateSuggestionsDisabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isRotateButtonVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-interface {v4}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavigationBar"

    .line 1183
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1196
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 1195
    invoke-interface {v0, p0, v2, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 1200
    :cond_3
    invoke-virtual {v3, p1, v1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotationProposal(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 867
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    const-string v1, "disabled_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    const-string v1, "disabled2_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 869
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const-string v1, "appearance"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    const-string v1, "behavior"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    const-string/jumbo v1, "transient_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 872
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    .line 874
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    .line 875
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    const-string v1, "icon_hints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0

    .line 1229
    iget p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 1233
    iget p6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    if-eq p6, p2, :cond_2

    .line 1234
    sget-boolean p3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p3, :cond_1

    .line 1235
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/navigationbar/NavigationBar;->loggingAttributesChanged(IIZ)V

    .line 1237
    :cond_1
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    .line 1238
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateBarMode(I)Z

    move-result p3

    .line 1240
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p1, :cond_3

    .line 1241
    iget p6, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    invoke-virtual {p1, p2, p3, p6, p4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    .line 1244
    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    if-eq p1, p5, :cond_4

    .line 1245
    iput p5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    .line 1246
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, p5}, Lcom/android/systemui/navigationbar/NavigationBarView;->setBehavior(I)V

    const/4 p1, -0x1

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    .line 1250
    :cond_4
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_5

    .line 1251
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p2, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance p3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {p3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 1252
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p3

    .line 1251
    invoke-interface {p1, p0, p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 718
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(I)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowVisible(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setBehavior(I)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 731
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSplitScreenOptional:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    invoke-direct {v3, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mPipOptional:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;

    invoke-direct {v3, v2}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 736
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->prepareNavigationBarView()V

    .line 737
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    if-eqz v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 741
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_SHOW_A11Y_SWIPE_UP_TIP_POPUP:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 744
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 743
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 747
    :cond_3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    const-string v1, "android.intent.action.USER_SWITCHED"

    if-eqz v0, :cond_4

    .line 748
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenLifeCycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 750
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 752
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 751
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 754
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 755
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 758
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 757
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 760
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->notifyNavigationBarScreenOn()V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 v0, -0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    .line 766
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_5

    .line 767
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 768
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRotationWatcher:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_6

    .line 773
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotationLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 774
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_6

    .line 775
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    goto :goto_2

    .line 778
    :cond_5
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    .line 780
    :cond_6
    :goto_2
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setDisabled2Flags(I)V

    .line 782
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->initSecondaryHomeHandleForRotation()V

    .line 787
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_7

    .line 788
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_3

    .line 789
    :cond_7
    new-instance p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 791
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 792
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/BatteryController;

    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 793
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    .line 794
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 800
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_8

    .line 801
    const-class p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_4

    .line 802
    :cond_8
    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    const-class v2, Landroid/view/IWindowManager;

    .line 803
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    .line 804
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->restoreAppearanceAndTransientState()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 820
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->destroy()V

    .line 821
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 822
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 823
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 824
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->removeSecondaryHomeHandle()V

    .line 828
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz p1, :cond_1

    .line 829
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenLifeCycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 832
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 833
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/navigationbar/RotationButtonController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    .line 834
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 836
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setListener(Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;)V

    .line 838
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V

    .line 839
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 841
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 842
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 843
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 844
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->resetButtonListener(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 847
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 848
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOnVariableDurationHomeLongClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEnableLayoutTransitions:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 851
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    return-void
.end method

.method public restoreAppearanceAndTransientState()V
    .locals 4

    .line 1213
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->barMode(ZI)I

    move-result v0

    .line 1214
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarMode:I

    .line 1215
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz v1, :cond_0

    .line 1217
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v1, :cond_1

    .line 1220
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    :cond_1
    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 1

    .line 1846
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V

    .line 1850
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 1

    .line 1110
    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1114
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    if-eqz p4, :cond_3

    if-eq p4, p3, :cond_3

    if-eq p4, p1, :cond_3

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    and-int/lit8 p2, v0, -0x2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_2

    or-int/lit8 p2, v0, 0x1

    :goto_1
    if-eqz p5, :cond_4

    or-int/2addr p1, p2

    goto :goto_2

    :cond_4
    and-int/lit8 p1, p2, -0x3

    :goto_2
    if-ne p1, v0, :cond_5

    return-void

    .line 1136
    :cond_5
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    .line 1137
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_6

    .line 1138
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p3, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance p4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {p4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object p5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_ICON_HINT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p4

    .line 1138
    invoke-interface {p2, p0, p3, p4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 1141
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 1142
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkBarModes()V

    const/4 p1, -0x1

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 4

    .line 1830
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz p1, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1833
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    .line 1832
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 1834
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1835
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_LIGHTBAR_CONTROLLER:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1837
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 1838
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    .line 1839
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 1835
    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setWindowState(III)V
    .locals 1

    .line 1149
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    iget p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    if-eq p2, p3, :cond_4

    .line 1152
    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarWindowState:I

    const/4 p2, -0x1

    .line 1153
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1154
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    .line 1155
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    if-eq p1, p2, :cond_1

    .line 1157
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    .line 1160
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    .line 1162
    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_WINDOW_STATE_SHOWING:Lcom/android/systemui/navigationbar/store/EventType;

    goto :goto_1

    .line 1163
    :cond_2
    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_WINDOW_STATE_HIDDEN:Lcom/android/systemui/navigationbar/store/EventType;

    .line 1165
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {p3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p0, p1, p3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 1167
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setWindowVisible(Z)V

    :cond_4
    return-void
.end method

.method public setWindowTouchable(Z)V
    .locals 3

    .line 2003
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_DISABLE_TOUCH:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_2

    .line 2004
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2006
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 2008
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2009
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    goto :goto_0

    .line 2011
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2012
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const/16 v1, 0x80

    const/4 v2, 0x1

    .line 2013
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    const/16 v1, 0x100

    .line 2014
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    const/high16 v1, 0x1000000

    .line 2015
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 2016
    invoke-virtual {p1, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2018
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showTransient(I[I)V
    .locals 1

    .line 1258
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1261
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 1264
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    if-nez p2, :cond_2

    .line 1265
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 1266
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->handleTransientChanged()V

    :cond_2
    return-void
.end method

.method public touchAutoDim()V
    .locals 3

    .line 1821
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setAutoDim(Z)V

    .line 1822
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 0

    .line 1927
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 6

    .line 1699
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [Z

    .line 1703
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getA11yButtonState([Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 1707
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1709
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_3

    .line 1710
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavbarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_UPDATE_A11Y_SERVICE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CLICKABLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1711
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_LONG_CLICKABLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 1712
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 1710
    invoke-interface {v2, p0, v3, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 1715
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method public updateSystemUiStateFlags(I)V
    .locals 6

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1728
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->getA11yButtonState([Z)I

    move-result p1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x20

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1733
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v4

    .line 1734
    invoke-virtual {v4, v3, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v3

    const/4 v4, 0x2

    .line 1735
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->isNavBarWindowVisible()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v3

    const/high16 v4, 0x40000

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    move v1, v2

    .line 1736
    :cond_3
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 1739
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->allowSystemGestureIgnoringBarVisibility()Z

    move-result v3

    .line 1738
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    .line 1740
    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    const/16 v1, 0xb

    .line 1741
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->registerAction(ZI)V

    const/16 v0, 0xc

    .line 1742
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->registerAction(ZI)V

    return-void
.end method
