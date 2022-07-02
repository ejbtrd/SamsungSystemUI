.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "KeyguardBottomAreaShortcutView.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
    }
.end annotation


# instance fields
.field private SHORTCUT_LEFT:I

.field private SHORTCUT_RIGHT:I

.field private mBottomDozeArea:Landroid/widget/FrameLayout;

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEasyMode:Z

.field protected mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mHelptextAnimSet:Landroid/animation/AnimatorSet;

.field private mIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsAllShortcutDisabled:Z

.field private mIsLastVisibility:I

.field private mIsPluginLockOverlayView:Z

.field protected mIsSecure:Z

.field private mIsUserUnlocked:Z

.field private mIsUsimTextAreaShowing:Z

.field private mKeyguardShowing:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastUpdatedDisplayHight:I

.field private mLastUpdatedDisplayOrientation:I

.field private mLastUpdatedDisplayWidth:I

.field private mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

.field private mLeftShortcutArea:Landroid/widget/LinearLayout;

.field private mPermDisableState:Z

.field private mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

.field private mRightShortcutArea:Landroid/widget/LinearLayout;

.field private mSavingMode:Z

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutBottomMargin:I

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

.field private mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

.field private mShortcutSideMargin:I

.field private mShortcutSize:I

.field private mTrusted:Z

.field private final mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mUsimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

.field private mUsimTextArea:Landroid/widget/LinearLayout;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public static synthetic $r8$lambda$4k1P6lG5_h3_2ibeoK3bTZaTtsE(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->lambda$onDensityOrFontScaleChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    const/4 p2, 0x1

    .line 104
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    .line 108
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 p4, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p4, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 121
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    const/16 p3, 0x8

    .line 128
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsLastVisibility:I

    .line 147
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUsimTextAreaShowing:Z

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    const/4 p3, -0x1

    .line 158
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayWidth:I

    .line 160
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayHight:I

    .line 162
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayOrientation:I

    .line 175
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 204
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 653
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 253
    const-class p3, Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/ShortcutManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 254
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    .line 255
    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 256
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 257
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p2

    :goto_1
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    .line 258
    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz p3, :cond_2

    const-class p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 259
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, p2

    goto :goto_2

    :cond_2
    move p3, p1

    :goto_2
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    .line 260
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {p3, p4}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {p3, p4}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result p3

    if-nez p3, :cond_3

    move p3, p2

    goto :goto_3

    :cond_3
    move p3, p1

    :goto_3
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsAllShortcutDisabled:Z

    const/4 p3, 0x6

    new-array p3, p3, [Landroid/net/Uri;

    const-string/jumbo p4, "ultra_powersaving_mode"

    .line 262
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p3, p1

    const-string/jumbo p1, "minimal_battery_use"

    .line 263
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p3, p2

    const/4 p1, 0x2

    const-string p2, "emergency_mode"

    .line 264
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    const/4 p1, 0x3

    const-string p2, "easy_mode_switch"

    .line 265
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    const/4 p1, 0x4

    const-string p2, "lock_shortcut_type"

    .line 266
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    const/4 p1, 0x5

    const-string p2, "display_cutout_hide_notch"

    .line 267
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    .line 269
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 271
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 289
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 290
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/ShortcutManager;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsAllShortcutDisabled:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsAllShortcutDisabled:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIndicationPosition()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUserUnlocked:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUserUnlocked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->startIndicationAppearAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setIndicationUpdatable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    return p0
.end method

.method private getBottomAreaType()I
    .locals 1

    .line 965
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 966
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 967
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .line 1286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getMainStackSlotId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    return-object p0
.end method

.method private getIndicationTextAreaBottomMargin(Z)I
    .locals 1

    .line 1276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 1280
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_bottom_margin_land:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1282
    :cond_1
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_bottom_margin:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getShortcutBottomMargin(Z)I
    .locals 1

    .line 1263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1264
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1266
    sget p1, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_land_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1267
    :cond_0
    sget p1, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_port_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1269
    sget p1, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_land:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 1270
    :cond_2
    sget p1, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_port:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method private getShortcutSidePadding(Z)I
    .locals 1

    .line 1248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1249
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1250
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_land_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1252
    :cond_0
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1255
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_land:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 1257
    :cond_2
    sget p1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method private hideSoftInput()V
    .locals 0

    .line 631
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    return-void
.end method

.method private isSecure()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onDensityOrFontScaleChanged$0()V
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method private setIndicationUpdatable(Z)V
    .locals 2

    .line 1239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationUpdatable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanIndicationAreaUpdate set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBottomAreaShortcutView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationUpdatable:Z

    return-void
.end method

.method private setUsimTextAreaVisibility()V
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v1, :cond_6

    .line 1047
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUsimTextAreaShowing:Z

    if-eqz p0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1053
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-nez v0, :cond_5

    .line 1054
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUsimTextAreaShowing:Z

    if-eqz v0, :cond_4

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1057
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1059
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1062
    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1063
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    :goto_0
    return-void
.end method

.method private shouldDisableShortcut()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ShortcutManager;->shouldDisableShortcutWithMdm()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 310
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isKidsMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUserUnlocked:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

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

.method private showShortcutsIfPossible()V
    .locals 3

    .line 736
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    return-void
.end method

.method private startIndicationAppearAnimation()V
    .locals 7

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    .line 554
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 555
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 556
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 557
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    aput-object v0, v5, v2

    .line 560
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V
    .locals 6

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 324
    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 325
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 330
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutForCamera(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-nez v0, :cond_6

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 335
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$bool;->config_keyguardShowCameraAffordance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 336
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungCameraPackageLockTaskPermitted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 338
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCameraVisibility isCameraDisabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " visible:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KeyguardBottomAreaShortcutView"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    move p3, v1

    :cond_6
    const/16 v0, 0x8

    if-eqz p3, :cond_8

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isUserSetupComplete()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    .line 344
    :goto_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 345
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 348
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateIndicationPosition()V
    .locals 8

    .line 908
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 909
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 914
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 915
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 917
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-nez v4, :cond_1

    .line 918
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 919
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 920
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 923
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 926
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 927
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 928
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    sget v7, Lcom/android/systemui/R$dimen;->keyguard_indication_text_bottom_margin_sub_closed:I

    .line 929
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 930
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v4, :cond_2

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 931
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v1, :cond_2

    .line 933
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 934
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_bottom_margin_sub_closed_usimtext:I

    .line 935
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 938
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_bottom_margin_tablet_land:I

    .line 940
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 944
    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_5

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 945
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 946
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 947
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v1

    if-nez v1, :cond_5

    .line 948
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_indication_margin_bottom_fingerprint_low:I

    .line 949
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 952
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const-string v1, "KeyguardBottomAreaShortcutView"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LockStar is avaiable bottom : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingBottom(I)I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 956
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 957
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    add-int/2addr v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 958
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIndicationArea margin start : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", end : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bottom : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method private updateShortcutPosition()V
    .locals 4

    .line 851
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 853
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayOrientation:I

    .line 855
    sget v2, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    .line 869
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 870
    sget v2, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_bottom_margin_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    if-ne v1, v3, :cond_0

    .line 872
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_side_margin_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 873
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_side_margin_land_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    .line 874
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_size_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    .line 877
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 878
    :cond_2
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_side_margin_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    .line 879
    sget v1, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    .line 883
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 884
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 885
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 890
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutBottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 891
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSideMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 892
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 896
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 897
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 902
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 903
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    return-void
.end method

.method private updateWindowMetrics()V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method protected canLaunchVoiceAssist()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cancelIndicationAreaAnim()V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mHelptextAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p1, "KeyguardBottomAreaShortcutView state:"

    .line 978
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSavingMode = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mEasyMode = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPermDisableState = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTrusted = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDozing = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsPluginLockOverlayView = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurrentOrientation = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsUserUnlocked = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUserUnlocked:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsAllShortcutDisabled = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsAllShortcutDisabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardShowing = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsLastVisibility = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsLastVisibility:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  getBottomAreaType() = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getBottomAreaType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  getShortcutAreaSize() = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  last updated display info"

    .line 994
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    display width = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayWidth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    display height = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayHight:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    orientation = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLastUpdatedDisplayOrientation:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  updateIndicationPosition() info"

    .line 999
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p1

    const-string p3, "      layout param null"

    const-string v0, "      null"

    if-eqz p1, :cond_1

    .line 1002
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    layout param height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    layout param startMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    layout param endMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    layout param bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string p1, "  updateShortcutPosition() info"

    .line 1015
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    left shortcut"

    .line 1016
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    const-string v1, "      layout param bottomMargin = "

    if-eqz p1, :cond_3

    .line 1018
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      layout param startMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1023
    :cond_2
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1026
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const-string p1, "    right shortcut"

    .line 1028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_5

    .line 1030
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_4

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      layout param endMargin = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1035
    :cond_4
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1038
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected getCameraIntent()Landroid/content/Intent;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 0

    .line 1068
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0
.end method

.method public bridge synthetic getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0
.end method

.method public hasCameraShortcutForLeft()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutForCamera(I)Z

    move-result p0

    return p0
.end method

.method public hasPhoneShortcutForLeft()Z
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result p0

    return p0
.end method

.method public hasPhoneShortcutForRight()Z
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isRightShortcutForPhone()Z

    move-result p0

    return p0
.end method

.method public initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz p0, :cond_0

    .line 1234
    invoke-virtual {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    return-void
.end method

.method public isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1214
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1215
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1216
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 1217
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1221
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 4

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoUnlockNeed mIsSecure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyguardBottomAreaShortcutView"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 1119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz p0, :cond_1

    .line 1120
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public launchApp(I)V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1165
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isNoUnlockNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v1, "isSecure"

    .line 1166
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1167
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$7;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Landroid/content/Intent;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public launchApp(Landroid/content/ComponentName;)V
    .locals 4

    .line 1125
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchApp pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "KeyguardBottomAreaShortcutView"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.sec.android.app.camera"

    .line 1127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getNoUnlockNeedAppIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isSecure"

    .line 1131
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1132
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public launchLeftAffordance()V
    .locals 5

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchLeftAffordance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardBottomAreaShortcutView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 490
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutProperty(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ShortcutManager;->launchAffordanceForTask(I)V

    return-void

    .line 500
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1007"

    const-string v4, "1"

    invoke-static {v0, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    .line 504
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1008"

    .line 503
    invoke-static {v0, v4, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hideSoftInput()V

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftIsVoiceAssist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "lockscreen_affordance"

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 516
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchApp(I)V

    :goto_0
    return-void
.end method

.method public launchPhone()V
    .locals 0

    .line 523
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    return-void
.end method

.method public launchRightAffordance()V
    .locals 5

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchRightAffordance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardBottomAreaShortcutView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraPreview()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 601
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutProperty(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ShortcutManager;->launchAffordanceForTask(I)V

    return-void

    .line 611
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1007"

    const-string v4, "2"

    invoke-static {v0, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    .line 615
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1009"

    .line 614
    invoke-static {v0, v4, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hideSoftInput()V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutForCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 625
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchApp(I)V

    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 841
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 842
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateShortcutPosition()V

    .line 844
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIndicationPosition()V

    .line 847
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onAttachedToWindow()V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ShortcutManager;->registerCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 765
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    .line 768
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onDensityOrFontScaleChanged(Z)V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Z)V
    .locals 2

    .line 805
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    if-eqz p1, :cond_1

    .line 807
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    if-eqz p1, :cond_1

    .line 808
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    .line 809
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    goto :goto_0

    .line 811
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->onDensityOrFontScaleChanged()V

    .line 812
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->onDensityOrFontScaleChanged()V

    .line 815
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManagerCallback:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->unregisterCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V

    .line 473
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 475
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 407
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 409
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsUserUnlocked:Z

    .line 411
    sget v0, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 412
    sget v0, Lcom/android/systemui/R$id;->camera_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 414
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->init()V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setRight(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->init()V

    .line 421
    sget v0, Lcom/android/systemui/R$id;->right_shortcut_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    .line 422
    sget v0, Lcom/android/systemui/R$id;->left_shortcut_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    .line 423
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 424
    sget v0, Lcom/android/systemui/R$id;->keyguard_upper_fingerprint_indication:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_2

    .line 427
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 428
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 427
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 430
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isTrusted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 433
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    .line 434
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 437
    sget v0, Lcom/android/systemui/R$id;->keyguard_bottom_doze_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    .line 438
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAllowedPokeDrawLock(Z)V

    .line 441
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 442
    sget v0, Lcom/android/systemui/R$id;->usim_text_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    .line 443
    sget v0, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 444
    sget v0, Lcom/android/systemui/R$id;->stub_keyguard_usim_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 446
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 447
    sget v0, Lcom/android/systemui/R$id;->keyguard_usim_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUsimCarrierText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBottomAreaShortcutView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_3
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public onStateChanged(ZZ)V
    .locals 0

    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onStateChanged(ZZ)V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setUsimTextAreaVisibility()V

    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 4

    .line 1082
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1084
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_show_shortcut"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string/jumbo v3, "shortcut_enable"

    .line 1086
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_application_shortcut"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "shortcut_info"

    .line 1090
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getShortcutBottomMargin(Z)I

    move-result v1

    const-string/jumbo v3, "shortcut_bottom"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getShortcutSidePadding(Z)I

    move-result v1

    const-string/jumbo v3, "shortcut_side"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutSize:I

    const-string/jumbo v3, "shortcut_size"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1096
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V

    .line 1097
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    const-string v3, "finger_print_height"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v1

    const-string v3, "finger_print_image_size"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintMarginBottom()I

    move-result v1

    const-string v3, "finger_print_margin"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    const-string v3, "finger_print_enabled"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "help_text_visibility"

    .line 1102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_text_default_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const-string v2, "help_text_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getIndicationTextAreaBottomMargin(Z)I

    move-result p0

    const-string p1, "help_text_margin"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onUiInfoRequested() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBottomAreaShortcutView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onUnlockedChanged()V
    .locals 3

    .line 776
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 778
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onUnlockedChanged()V

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    .line 780
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isTrusted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 781
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    .line 782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setUsimTextAreaVisibility()V

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockMethodStateChanged old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", new="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBottomAreaShortcutView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKeyguardShowing:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "onUnlockMethodStateChanged not keyguadShowing status return!"

    .line 785
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1074
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onViewModeChanged() ShortcutInvisible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsPluginLockOverlayView:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardBottomAreaShortcutView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-ne p1, p0, :cond_0

    .line 754
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsLastVisibility:I

    if-eq p1, p2, :cond_0

    .line 755
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsLastVisibility:I

    if-nez p2, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setUsimTextAreaVisibility()V

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    :cond_0
    return-void
.end method

.method public setAffordanceAlpha(F)V
    .locals 1

    .line 721
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->cancelIndicationAreaAnim()V

    :cond_2
    return-void
.end method

.method public setAllChildEnabled(Landroid/view/View;Z)V
    .locals 3

    .line 827
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 828
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 829
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 830
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setAllChildEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAntiBurnInOffsetX(I)V
    .locals 0

    return-void
.end method

.method public setBottomDozeArea(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1294
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 1

    .line 529
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 531
    sget-boolean p2, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz p2, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setUsimTextAreaVisibility()V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 543
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mBottomDozeArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPluginLockData(Lcom/android/systemui/pluginlock/PluginLockData;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    return-void
.end method

.method public setShortcutBlurPanel(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setShortcutBlurPanel(Landroid/widget/FrameLayout;)V

    .line 1322
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setShortcutBlurPanel(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public updateBottomView()V
    .locals 2

    const-string v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "updateBottomView"

    .line 1112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIndicationPosition()V

    return-void
.end method

.method protected updateCameraVisibility()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    return-void
.end method

.method protected updateLayout()V
    .locals 0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateWindowMetrics()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateShortcutPosition()V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIndicationPosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    return-void
.end method
