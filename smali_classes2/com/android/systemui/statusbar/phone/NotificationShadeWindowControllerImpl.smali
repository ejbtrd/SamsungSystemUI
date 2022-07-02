.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
    }
.end annotation


# static fields
.field private static BLUR_AMOUNT:F

.field private static final DEBUG:Z

.field private static final DEFAULT_DISPLAY_TIMEOUT:I


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mBouncerContainer:Landroid/widget/FrameLayout;

.field private mBouncerLp:Landroid/view/WindowManager$LayoutParams;

.field private mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mCachedLightStatusBar:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mConfigurationChanged:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentConfiguration:Landroid/content/res/Configuration;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mFaceAuthDisplayBrightness:F

.field private final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field private final mForceOpenTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private mIsExpanded:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardMaxRefreshRate:F

.field private final mKeyguardPreferredRefreshRate:F

.field private mKeyguardScreenRotation:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationShadeView:Landroid/view/ViewGroup;

.field private mOldState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

.field private mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenBrightnessDoze:F

.field private mScrimsVisibilityListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$99Jua44GCog6G7UGRx1GAhAXuzo(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$apply$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$H7-MkmmnmbShrkl44n-MLPzkC9w(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setScreenOrientation(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$S5tg0n5zyuYgDXmZEyYkZy1pYXI(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$apply$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$aztTIflRYuUbHWd4HMDTZMRjQrE(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$setNotificationShadeView$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbsHEMUd1EYbOdctLsyQbYSXmUw(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyguardVisibleMonitor"

    const/4 v1, 0x3

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->DEBUG:Z

    .line 179
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigDefLcdOnTimeOut"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    .line 221
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isOpticalFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3d8f5c29    # 0.07f

    goto :goto_0

    :cond_0
    const v0, 0x3e0ccccd    # 0.1375f

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->BLUR_AMOUNT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ldagger/Lazy;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Landroid/app/IActivityManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p16

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 161
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mOldState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v2, 0x0

    .line 163
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mIsExpanded:Z

    .line 166
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 199
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHandler:Landroid/os/Handler;

    const/high16 v3, -0x40800000    # -1.0f

    .line 225
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    .line 1065
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    .line 1315
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 1502
    new-instance v5, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    .line 1722
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCachedLightStatusBar:Z

    move-object/from16 v5, p1

    .line 257
    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    .line 258
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v6, p3

    .line 259
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v6, p14

    .line 260
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v6, p15

    .line 261
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 262
    invoke-interface/range {p11 .. p11}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardScreenRotationAllowed()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isLockScreenRotationAllowed()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    move-object/from16 v6, p4

    .line 264
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 265
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result v6

    iput v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 266
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v6, p7

    .line 267
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v6, p8

    .line 268
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v6, p9

    .line 269
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v6, p12

    .line 270
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v6, p18

    .line 271
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v6, p19

    .line 272
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 273
    const-class v6, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p10

    invoke-virtual {v8, v6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    move-object/from16 v6, p13

    .line 274
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    .line 277
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v8, v6

    iput-wide v8, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    .line 278
    move-object/from16 v6, p5

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 279
    invoke-interface {v6, v4, v7}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    move-object/from16 v4, p6

    .line 281
    invoke-interface {v4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    .line 284
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v6, v4, v3

    if-lez v6, :cond_2

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 288
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v11

    sub-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_1

    .line 289
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 295
    :cond_2
    :goto_2
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_keyguardMaxRefreshRate:I

    .line 301
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getUserActivityTimeout()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    const-string/jumbo v4, "powersaving_switch"

    .line 307
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "psm_switch"

    .line 308
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "emergency_mode"

    .line 309
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "low_power"

    .line 310
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface/range {p11 .. p11}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardScreenRotationAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "lock_screen_allow_rotation"

    .line 314
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 317
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {v4, v6, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 322
    :cond_4
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 335
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 336
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginLockListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V

    .line 339
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    if-nez v1, :cond_5

    .line 340
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;

    move-object/from16 v3, p11

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 358
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    xor-int/2addr v0, v7

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->updateUserActivityTimeout(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setScreenOrientation(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Landroid/os/PowerManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isLockScreenRotationAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 547
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 553
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-eqz p1, :cond_2

    .line 554
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 556
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 548
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScreenOrientationNoSensor:Z

    if-nez p1, :cond_4

    .line 549
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 551
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_2
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 3

    .line 787
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 788
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 789
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 790
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 792
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 794
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 795
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 797
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 798
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 799
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 800
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 801
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 803
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 804
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyWindowSecured(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 809
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applySplitTouchableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 812
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    if-eqz v0, :cond_2

    .line 813
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyHideInformationMirroringFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 817
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyAODFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    if-eq v0, v1, :cond_5

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 825
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    const-string v2, "IActivityManager#setHasTopUi"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->submit(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 833
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    goto :goto_0

    .line 835
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 845
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    .line 847
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 849
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyBouncer(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_7
    return-void
.end method

.method private applyAODFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 4

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 1340
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_1

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/doze/PluginAODManager;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    .line 1346
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "debug.sysui.disable.presentation_only"

    .line 1347
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1348
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :cond_3
    return-void
.end method

.method private applyBouncer(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 9

    .line 1630
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    const-string v1, "background"

    const/4 v2, -0x1

    const v3, -0x20001

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverAppShowing:Z

    if-nez v5, :cond_8

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_9

    .line 1643
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 1644
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1645
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1647
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 1648
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$color;->bouncer_background_color_no_blur_white_bg:I

    .line 1649
    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 1648
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1651
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$color;->bouncer_background_color_occluded_no_blur_white_bg:I

    .line 1654
    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 1653
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$color;->bouncer_background_color_occluded:I

    .line 1657
    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 1656
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1660
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1661
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    .line 1662
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1663
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-eqz v5, :cond_4

    and-int/2addr v2, v3

    .line 1664
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_4
    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    .line 1666
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz v4, :cond_5

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1671
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1672
    sget v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->BLUR_AMOUNT:F

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1675
    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1677
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_2

    .line 1679
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v5, 0x2710

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    move-wide v3, v5

    .line 1680
    :cond_7
    iput-wide v3, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1681
    iget-wide v2, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1684
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    if-nez v0, :cond_9

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-eqz p1, :cond_9

    .line 1685
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_4

    .line 1631
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1632
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1633
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v3

    .line 1634
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x3

    .line 1635
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x0

    .line 1636
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1637
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    if-nez v0, :cond_9

    .line 1640
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1689
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_a

    .line 1691
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x500

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1694
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-eqz p1, :cond_c

    .line 1695
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result p1

    .line 1696
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    or-int/lit8 p1, p1, 0x10

    goto :goto_5

    :cond_b
    and-int/lit8 p1, p1, -0x11

    .line 1701
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1704
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_e

    const/high16 v0, 0x8000000

    if-ne p1, v0, :cond_d

    .line 1706
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    return-void

    .line 1710
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bouncer LP changed!!! = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBar-Window"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 877
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    if-eqz p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 704
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 708
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 5

    .line 561
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 562
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-nez v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 567
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffAnimationPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 569
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 570
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 583
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    .line 584
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 571
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 572
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    const/high16 v4, 0x20000

    if-eqz v3, :cond_7

    or-int p1, v1, v4

    .line 573
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 576
    :cond_7
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 577
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 579
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 587
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 591
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez v0, :cond_2

    .line 595
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 598
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_2
    :goto_1
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 885
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyHideInformationMirroringFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 1750
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsHideInformationMirroring:Z

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 1751
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    .line 1753
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_0
    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 749
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceUserActivity:Z

    if-nez p1, :cond_0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 755
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 5

    .line 498
    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 500
    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    if-nez v3, :cond_3

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 501
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    .line 502
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 503
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 508
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4

    .line 510
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 513
    :goto_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mUiMode:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_7

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_5

    .line 516
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 519
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 520
    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    if-ne v0, v2, :cond_8

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_8

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    if-nez p1, :cond_8

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    .line 522
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 523
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 524
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 525
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    goto :goto_6

    .line 527
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 528
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 530
    :goto_6
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    float-to-long p0, p0

    const-string v0, "display_set_preferred_refresh_rate"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_9

    .line 532
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    if-ne v0, v2, :cond_b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    if-nez v0, :cond_b

    move v1, v2

    .line 536
    :cond_b
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-nez p1, :cond_d

    if-eqz v1, :cond_c

    goto :goto_7

    .line 539
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    goto :goto_8

    .line 537
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 541
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    float-to-long p0, p0

    const-string v0, "display_max_refresh_rate"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_e
    :goto_9
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 869
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-eqz p1, :cond_0

    .line 870
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 872
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    .line 889
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    if-eqz p1, :cond_0

    .line 890
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 892
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applySplitTouchableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 1567
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarSplitTouchable:Z

    if-eqz p1, :cond_0

    .line 1568
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1570
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    const/4 v0, 0x0

    .line 761
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 762
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 764
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 5

    .line 713
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_5

    .line 716
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mUserScreenTimeOut:Z

    if-eqz v0, :cond_0

    .line 718
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 719
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_2

    .line 721
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    const-wide/16 v1, 0x2710

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    .line 723
    :goto_0
    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 725
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    .line 727
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 728
    :cond_3
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 729
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 731
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    .line 733
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 735
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_2

    .line 741
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 743
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :goto_2
    return-void
.end method

.method private applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    .line 606
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->DEBUG:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Z)Z

    move-result v0

    .line 607
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    if-eqz p1, :cond_1

    .line 608
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_0

    .line 609
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 615
    :cond_1
    const-class p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancel(Z)V

    if-eqz v0, :cond_2

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-eqz p1, :cond_3

    .line 622
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private applyWindowSecured(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    .line 771
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mSecuredWindow:Z

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 780
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 782
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private static getInt(Z)I
    .locals 0

    return p0
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z
    .locals 0

    .line 630
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-nez p0, :cond_2

    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    if-nez p0, :cond_2

    :cond_0
    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-gtz p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Z)Z
    .locals 11

    .line 640
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    .line 641
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 645
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isChangeHeight()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 646
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 649
    :cond_0
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-eqz v3, :cond_1

    .line 653
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_1
    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "KeyguardVisibleMonitor"

    const/4 v8, 0x1

    if-eqz p2, :cond_2

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/Object;

    .line 662
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    xor-int/2addr v10, v8

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    .line 663
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v3

    const/4 v0, 0x6

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    .line 664
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x7

    iget v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/16 v0, 0x8

    iget v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/16 v0, 0x9

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/16 v0, 0xa

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    .line 665
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/16 v0, 0xb

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const/16 v0, 0xc

    iget-boolean v10, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverAppShowing:Z

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    const-string v0, "isExpanded=%s\n!forceCollapsed=%d, keyguardShown=%d, panelVisible=%d, fadingAway=%d, bouncer=%d, headsUp=%d, scrims=%d, blur=%d, launchingActivity=%d, forceInvisible=%d, viewCover=%d, coverApp=%d"

    .line 659
    invoke-static {v7, v0, v9}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverAppShowing:Z

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverType:I

    .line 670
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isClearSideViewCoverType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 672
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-nez v0, :cond_5

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverType:I

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v8

    :goto_2
    if-eqz p2, :cond_6

    if-eq v0, v1, :cond_6

    new-array p2, v3, [Ljava/lang/Object;

    .line 678
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p2, v2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v8

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverAppShowing:Z

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v6

    iget v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    xor-int/2addr v1, v8

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v4

    const-string v1, "isExpanded=%s\nviewCoverShowing=%d, !coverAppShowing=%d, coverType=%d, !dozing=%d"

    .line 677
    invoke-static {v7, v1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v1, v0

    .line 683
    :cond_7
    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_DISABLE_DEX_KEYGUARD_SERVICE:Z

    if-nez p2, :cond_8

    .line 684
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_8

    const-class p2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p2}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "isExpanded=false\nStandalone=true"

    .line 685
    invoke-static {v7, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 691
    :cond_8
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mOldState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mIsExpanded:Z

    if-eq p2, v1, :cond_9

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isExpanded: %s -> %s\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mOldState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    .line 693
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mIsExpanded:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v8

    .line 692
    invoke-static {v7, p2, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mOldState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :catch_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mIsExpanded:Z

    return v1
.end method

.method private isLockScreenRotationAllowed()Z
    .locals 1

    .line 1420
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    if-nez v0, :cond_1

    .line 1421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 1422
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1424
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$apply$2()V
    .locals 2

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationShadeWindowController"

    const-string v1, "Failed to call setHasTopUi"

    .line 830
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$apply$3()V
    .locals 3

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationShadeWindowController"

    const-string v2, "Failed to call setHasTopUi"

    .line 839
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "lock_screen_allow_rotation"

    .line 168
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isLockScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardScreenRotation:Z

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 174
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->userActivityTimeoutChanged(Z)V

    return-void
.end method

.method private synthetic lambda$setNotificationShadeView$1(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 463
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v1, 0x1

    .line 464
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    .line 465
    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "KeyguardVisibleMonitor"

    const-string/jumbo p1, "verifyVisibility needsExpand=%b, isExpanded=%b, state=%s"

    .line 463
    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 494
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setScreenOrientation(Z)V
    .locals 2

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenOrientation noSensor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScreenOrientationNoSensor:Z

    if-eq v1, p1, :cond_0

    .line 1330
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScreenOrientationNoSensor:Z

    .line 1331
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_0
    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    .line 1023
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method private updateUserActivityTimeout(Z)V
    .locals 5

    .line 1372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->getUserActivityTimeout()J

    move-result-wide v0

    .line 1373
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-wide v3, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    .line 1374
    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    if-nez p1, :cond_0

    .line 1375
    iget p1, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1376
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBouncer(Landroid/widget/FrameLayout;)V
    .locals 7

    .line 1576
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    .line 1577
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1578
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x7d9

    const v5, -0x7ffffeb8

    const/4 v6, -0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 1587
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x30

    .line 1588
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 1589
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "Bouncer"

    .line 1590
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1591
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1592
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1593
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1594
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1595
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1596
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1601
    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardUserActivityTimeout:J

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    move-wide v0, v3

    .line 1602
    :cond_1
    iput-wide v0, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    .line 1607
    iput-wide v0, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1609
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x4000400

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1610
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 1615
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void
.end method

.method public attach()V
    .locals 7

    .line 405
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f8

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 415
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "NotificationShade"

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 422
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_0

    .line 423
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_0
    const/16 v1, 0x2000

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 434
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onRootViewAttached(Landroid/view/ViewGroup;)V

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setNoSensorConsumer(Ljava/util/function/Consumer;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWideColorGamutConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationShadeWindowController:"

    .line 1126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardMaxRefreshRate="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardPreferredRefreshRate="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getCurrentConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1443
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getForcePluginOpen()Z
    .locals 0

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    return p0
.end method

.method public getKeyguardOrientation()I
    .locals 0

    .line 1354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1358
    :cond_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return p0
.end method

.method public getNotificationShadeView()Landroid/view/ViewGroup;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getPanelExpanded()Z
    .locals 0

    .line 1102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    return p0
.end method

.method protected getUserActivityTimeout()J
    .locals 6

    .line 1384
    sget v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    .line 1386
    :goto_0
    const-class v2, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-wide v2, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLockTimeOutValue:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1391
    :cond_1
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x2710

    .line 1396
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    const-wide/16 v3, 0xbb8

    if-eqz v2, :cond_3

    .line 1397
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1398
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1399
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    if-nez v2, :cond_4

    .line 1400
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 1402
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1403
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1409
    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    const-wide/32 v0, 0x927c0

    .line 1413
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserActivityTimeout()"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NotificationShadeWindowController"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public isConfigurationChanged()Z
    .locals 0

    .line 1449
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mConfigurationChanged:Z

    return p0
.end method

.method public isForceInvisible()Z
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    return p0
.end method

.method public isLaunchingActivity()Z
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    return p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    .line 1137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStateChangedCallbacks()V
    .locals 5

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;

    .line 858
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda7;

    .line 859
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 860
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 862
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mUiMode:I

    .line 1435
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentConfiguration:Landroid/content/res/Configuration;

    const/4 p1, 0x1

    .line 1436
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mConfigurationChanged:Z

    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    .line 1046
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 1148
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeBouncer()V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 1623
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    .line 1624
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    .line 1625
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public resetConfigurationChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1454
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mConfigurationChanged:Z

    return-void
.end method

.method public resetForceInvisible(Z)V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-eqz v0, :cond_0

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetForceInvisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisibleMonitor"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-eqz p1, :cond_0

    .line 1491
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_0
    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    .line 936
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBackgroundBlurRadius(I)V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-ne v1, p1, :cond_0

    return-void

    .line 992
    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    .line 993
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    .line 930
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setCoverState(ZZI)V
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsCoverClosed:Z

    .line 1550
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverAppShowing:Z

    .line 1551
    iput p3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mCoverType:I

    .line 1552
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 476
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    .line 1062
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setFaceAuthDisplayBrightness(F)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    .line 482
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    .line 1056
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForceInvisible(Z)V
    .locals 2

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceInVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisibleMonitor"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceInvisible:Z

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->requestChangeVisibility()V

    if-eqz p1, :cond_0

    .line 1476
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_0
    return-void
.end method

.method public setForcePluginOpen(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1069
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1073
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    .line 1075
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    if-eq p2, v0, :cond_1

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 1077
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    if-eqz p1, :cond_1

    .line 1078
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_1
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    .line 1034
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    .line 999
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setHideInformationMirroringState(Z)V
    .locals 2

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsHideInformationMirroring:Z

    if-eq v1, p1, :cond_0

    .line 1743
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mIsHideInformationMirroring:Z

    .line 1744
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_0
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    .line 949
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    .line 1157
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    .line 911
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    .line 905
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    .line 899
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setLaunchingActivity(Z)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    .line 967
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setLightKeyguardStatusBarFlag(Z)V
    .locals 2

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCachedLightStatusBar:Z

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 1729
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCachedLightStatusBar:Z

    .line 1730
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_1

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_1
    and-int/lit16 p1, v0, -0x2001

    .line 1736
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLightRevealScrimAmount(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1005
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    if-ne v1, p1, :cond_1

    return-void

    .line 1008
    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    .line 1009
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    .line 1094
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeFocusable(Z)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    .line 924
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 459
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 462
    const-class p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->registerMonitor(Landroid/view/View;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    .line 1040
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    .line 917
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    .line 918
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    .line 955
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setRequestTopUi(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1168
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1172
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    .line 978
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 979
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setScrimsVisibilityListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    if-eq v0, p1, :cond_0

    .line 393
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setStatusBarSplitTouchable(Z)V
    .locals 2

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarSplitTouchable:Z

    if-eq v1, p1, :cond_0

    .line 1558
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarSplitTouchable:Z

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    .line 1561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setStatusBarSplitTouchable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationShadeWindowController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mWallpaperSupportsAmbientMode:Z

    .line 1015
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setWideColorGamut(Z)V
    .locals 2

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWideColorGamut() enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    return-void
.end method

.method protected userActivityTimeoutChanged(Z)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1366
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public wallpaperTypeChanged()V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_1
    :goto_0
    return-void
.end method
