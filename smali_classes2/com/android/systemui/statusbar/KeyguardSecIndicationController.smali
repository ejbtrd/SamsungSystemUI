.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/IndicationChangeListener;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyguardSecIndicationController"


# instance fields
.field private final KEY_HELP_TEXT_BOTTOM:Ljava/lang/String;

.field private final KEY_HELP_TEXT_TOP:Ljava/lang/String;

.field private final KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mErrorColor:Landroid/content/res/ColorStateList;

.field private final mIndicationHandler:Landroid/os/Handler;

.field private mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field private mIsDefaultLockViewMode:Z

.field private mIsEmergencyMode:Z

.field private mIsLockIconVisible:Z

.field private mIsLockLockstarVisible:Z

.field private mIsPowerSavingMode:Z

.field private mIsScreenOn:Z

.field private mLockHelpTextVisible:Z

.field private mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field private mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

.field private mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 18

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v16, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    .line 246
    const-class v17, Lcom/android/systemui/util/SettingsHelper;

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    .line 123
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "powersaving_switch"

    .line 134
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "psm_switch"

    .line 135
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "low_power"

    .line 136
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "emergency_mode"

    .line 137
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    .line 147
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 151
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 153
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsLockLockstarVisible:Z

    const-string v0, "help_text_visibility"

    .line 155
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    const-string v0, "help_text_top"

    .line 157
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->KEY_HELP_TEXT_TOP:Ljava/lang/String;

    const-string v0, "help_text_bottom"

    .line 159
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->KEY_HELP_TEXT_BOTTOM:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 512
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 250
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 251
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 252
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addListener(Lcom/android/systemui/statusbar/IndicationChangeListener;)V

    move-object/from16 v2, p19

    .line 253
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 255
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    const-string v4, "KeyguardSecIndicationController"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z

    .line 265
    const-class v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 267
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 269
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DUAL_LCD_FOLDER:Z

    if-eqz v0, :cond_0

    .line 270
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p14

    .line 274
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 275
    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v0, p15

    .line 278
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 280
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsPowerSavingMode:Z

    .line 281
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsEmergencyMode:Z

    const/4 v0, -0x1

    .line 282
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setupInitialIndications()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsPowerSavingMode:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isStrongAuth()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->startCountdownTimer(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->startBiometricCountdownTimer(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isBouncerShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isRunningCountdownState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeBiometricErrorIndicationAnimation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isLockscreenVisibleAndScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updateDefaultIndications()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setBiometricErrorIndicationAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/SecLockIconViewController;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addBatteryIndication()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    return-object p0
.end method

.method private addBatteryIndication()V
    .locals 12

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object v7

    if-nez v7, :cond_0

    .line 794
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    const-string v1, "addBatteryIndication no status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isPowerPluggedIn()Z

    move-result v0

    .line 799
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isBatteryLow()Z

    move-result v1

    .line 800
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->getChargingType()I

    move-result v2

    .line 801
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->getChargeEnabled()Z

    move-result v3

    .line 802
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->getSwellingMode()I

    move-result v4

    .line 803
    iget-wide v5, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    .line 805
    const-class v8, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v8}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    .line 807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isPowerPluggedIn()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isProtectedFully()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_1
    if-eqz v3, :cond_3

    .line 808
    invoke-direct {p0, v5, v6, v2, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getChargingText(JII)Ljava/lang/String;

    move-result-object v8

    .line 809
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isPowerPluggedInWired()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    move v6, v10

    :goto_0
    move-object v0, p0

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 810
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_connect_charger:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 813
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isPowerPluggedInWired()Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v10

    :goto_1
    move-object v0, p0

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 814
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 816
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 817
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 820
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBatteryIndication() status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeBiometricErrorIndication(Ljava/lang/CharSequence;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 381
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private changeBiometricErrorIndicationAnimation()V
    .locals 6

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1294
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->initBiometricErrorIndicationAnimationValue()V

    .line 1295
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43af0000    # 350.0f

    .line 1297
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v3, 0x3f47ae14    # 0.78f

    .line 1298
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1296
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 1301
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 1303
    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 1304
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 1302
    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    .line 1306
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v4, p0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 1308
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    .line 1309
    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    .line 1307
    invoke-virtual {v4, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1310
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1311
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1312
    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private changeIndication(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez v0, :cond_0

    .line 1217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1222
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1225
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "UpdatehelptextScale"

    invoke-virtual {p2, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->updateFontSize()V

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1231
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "UpdatehelptextColor"

    invoke-virtual {p2, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1237
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private changeUpperIndication(Ljava/lang/CharSequence;)V
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :cond_1
    return-void
.end method

.method private getBatteryLevel()I
    .locals 0

    .line 1254
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p0
.end method

.method private getChargingText(JII)Ljava/lang/String;
    .locals 5

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isPowerCharged()Z

    move-result v0

    const-string v1, "Fail to getChargingText"

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 944
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 945
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 948
    :cond_0
    sget p1, Lcom/android/systemui/R$string;->kg_power_fully_charged:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 951
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isProtectedFully()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    .line 953
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 956
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->kg_power_charging_paused:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_power_charging_limit_85:I

    .line 957
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 965
    :pswitch_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_super_fast_charging_20:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 962
    :pswitch_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_super_fast_charging:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 976
    :pswitch_2
    sget-boolean p3, Lcom/android/systemui/LsRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_fast_charging_wirelessly_chn:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 977
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_fast_charging_wirelessly:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v2, p3

    goto :goto_1

    .line 972
    :pswitch_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_charging_wirelessly:I

    new-array v3, v1, [Ljava/lang/Object;

    .line 973
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 972
    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 968
    :pswitch_4
    sget-boolean p3, Lcom/android/systemui/LsRune;->LOCKUI_HELP_TEXT_FOR_CHN:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_fast_charging_chn:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 969
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_fast_charging:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 980
    :pswitch_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_charging:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 984
    :goto_1
    sget-boolean p3, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz p3, :cond_7

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-lez p3, :cond_6

    if-nez p4, :cond_6

    .line 986
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getEstimateChargingTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/16 p1, 0x10

    if-ne p4, p1, :cond_7

    .line 988
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->common_battery_slow_charging:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBatteryLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultInstruction(I)I
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_unlock_smart_lock_instructions:I

    return p0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result p0

    const/16 p1, 0x100

    if-eq p0, p1, :cond_1

    .line 923
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_unlock_instructions:I

    return p0

    .line 925
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    return p0
.end method

.method private getEstimateChargingTime(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 996
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 1000
    div-long v4, p1, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v0, 0x3c

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    .line 1004
    div-long v4, p1, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p1, v5

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    long-to-int p1, p1

    const/4 p2, 0x2

    if-nez v2, :cond_2

    if-lt v4, p2, :cond_2

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/4 p1, 0x1

    if-lez v2, :cond_3

    if-lez v4, :cond_3

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_power_time_format_hour_minute:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    .line 1015
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p1

    .line 1014
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    .line 1018
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_power_time_format_hour:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1020
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_power_time_format_minute:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getInitialTextColorState()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1212
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private getUnlockGuideText(Z)Ljava/lang/CharSequence;
    .locals 8

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isShowEmptyMessage()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 832
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 833
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 834
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 836
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 837
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 838
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 839
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 840
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 842
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    const/16 v6, 0x100

    if-nez v5, :cond_7

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    .line 886
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 887
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 888
    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v7

    if-eq v7, v6, :cond_6

    .line 890
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 893
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getDefaultInstruction(I)I

    move-result v6

    goto :goto_6

    :cond_7
    :goto_3
    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    if-eqz p1, :cond_10

    .line 848
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    if-eqz v3, :cond_8

    goto :goto_4

    .line 851
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 853
    sget v6, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    goto :goto_5

    .line 854
    :cond_9
    sget v6, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_instructions:I

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_d

    if-eqz p1, :cond_c

    .line 862
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    if-eqz v3, :cond_b

    .line 864
    sget v6, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_active_voice_assistant_instructions:I

    goto :goto_5

    .line 865
    :cond_b
    sget v6, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_instructions:I

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_10

    .line 868
    sget v6, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_voice_assistant_instructions:I

    goto :goto_5

    :cond_d
    if-eqz v2, :cond_10

    if-eqz p1, :cond_10

    .line 873
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    if-eqz v3, :cond_e

    goto :goto_4

    .line 875
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v7

    if-ne v7, v6, :cond_f

    .line 877
    sget v6, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    goto :goto_5

    .line 878
    :cond_f
    sget v6, Lcom/android/systemui/R$string;->kg_swipe_unlock_instructions:I

    goto :goto_5

    :cond_10
    :goto_4
    move v6, v4

    :goto_5
    if-eqz v6, :cond_11

    .line 882
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_6
    if-eqz v3, :cond_19

    if-eqz p1, :cond_12

    .line 897
    sget v6, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    goto :goto_9

    .line 899
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_14

    if-nez v5, :cond_13

    if-eqz v2, :cond_14

    .line 900
    :cond_13
    sget v6, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_strong_auth_instructions:I

    goto :goto_9

    .line 902
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_16

    if-nez v5, :cond_16

    if-eqz v2, :cond_15

    goto :goto_7

    .line 903
    :cond_15
    sget v4, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_instructions:I

    .line 904
    :cond_16
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_8

    :cond_17
    move v6, v4

    goto :goto_9

    .line 905
    :cond_18
    :goto_8
    sget v6, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    :cond_19
    :goto_9
    if-eqz v6, :cond_1a

    .line 912
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v1
.end method

.method private initBiometricErrorIndicationAnimationValue()V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsLockIconVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method private initTextView()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1345
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;Z)V

    .line 1346
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeUpperIndication(Ljava/lang/CharSequence;)V

    .line 1347
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeBiometricErrorIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isAuthenticatedWithBiometric()Z
    .locals 1

    .line 1269
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result p0

    return p0
.end method

.method private isBouncerShowing()Z
    .locals 0

    .line 1258
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p0, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLockscreenVisibleAndScreenOn()Z
    .locals 1

    .line 1058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedToShowEmptyMessage()Z
    .locals 1

    .line 1051
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPowerCharged()Z
    .locals 0

    .line 1250
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p0
.end method

.method private isPowerPluggedIn()Z
    .locals 0

    .line 1242
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p0
.end method

.method private isPowerPluggedInWired()Z
    .locals 0

    .line 1246
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p0
.end method

.method private isProtectedFully()Z
    .locals 0

    .line 1351
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mProtectedFullyCharged:Z

    return p0
.end method

.method private isRunningCountdownState()Z
    .locals 4

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1204
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1205
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isShowEmptyMessage()Z
    .locals 2

    .line 930
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 934
    :cond_0
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 935
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isStrongAuth()Z
    .locals 1

    .line 1036
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1037
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1038
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 1039
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x20

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

.method private isVisible()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBiometricErrorIndicationAnimation()V
    .locals 3

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setWakeLockAcquire(Z)V
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p0, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_0
    return-void
.end method

.method private setupInitialIndications()V
    .locals 13

    .line 288
    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v6, ""

    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 289
    sget-object v8, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isNeedToShowEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v9, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v9, v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v11

    const/4 v12, 0x0

    const-string v10, ""

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :cond_0
    return-void
.end method

.method private showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1339
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1341
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->giggle:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1265
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private startBiometricCountdownTimer(J)V
    .locals 9

    .line 1071
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBiometricCountdownTimer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1077
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1081
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 1090
    new-instance v8, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    .line 1141
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private startCountdownTimer(J)V
    .locals 9

    .line 1145
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCountdownTimer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1150
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1152
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 1153
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    .line 1154
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1157
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$8;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    .line 1194
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateDefaultIndications()V
    .locals 2

    .line 785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addBatteryIndication()V

    .line 786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    goto :goto_0

    .line 788
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 786
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePluginLockVisibility()V
    .locals 2

    .line 1324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 1325
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-eq v1, v0, :cond_1

    .line 1326
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    .line 1327
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_1

    .line 1329
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    if-nez v0, :cond_1

    .line 1331
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V
    .locals 6

    .line 412
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 6

    .line 416
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 8

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    const-string p1, "addIndication() returned - unlocking"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_1

    const-wide/16 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    .line 426
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_1
    return-void
.end method

.method public addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 8

    .line 431
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    return-void
.end method

.method public addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 8

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    const-string p1, "addIndicationTimeout() returned - unlocking"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    .line 441
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1063
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    .line 1066
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    return-object p0
.end method

.method public hideTransientIndication()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 452
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 453
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 454
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_lock_icon_error_text_start_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->kg_lock_icon_error_text_end_padding:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 3

    const-string v0, ", item = "

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 342
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIndicationChanged() return - keyguard is not visible, pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    sget-object p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onIndicationChanged() returned - unlocking"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->initTextView()V

    return-void

    .line 353
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getPriority()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setWakeLockAcquire(Z)V

    .line 355
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    .line 358
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->isAnimation()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeIndication(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeBiometricErrorIndication(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeUpperIndication(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    .line 337
    :cond_6
    :goto_2
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIndicationChanged() return - pos or item is null, pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotiActivated()V
    .locals 7

    .line 824
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 3

    .line 167
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewModeChanged mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    if-eq v0, p1, :cond_1

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updatePluginLockVisibility()V

    :cond_1
    return-void
.end method

.method public removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 1

    .line 402
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_0
    return-void
.end method

.method public setBiometricErrorTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-void
.end method

.method public setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 223
    sget v0, Lcom/android/systemui/R$id;->keyguard_upper_fingerprint_indication:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-void
.end method

.method public setLockIconViewController(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    return-void
.end method

.method public setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockHelpTextVisible:Z

    and-int/2addr p1, v0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 309
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsDefaultLockViewMode:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 312
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    if-eqz p1, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addBatteryIndication()V

    .line 315
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz p1, :cond_2

    .line 316
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateBiometricTextVisibility(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricErrorTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_1

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsLockIconVisible:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 204
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
