.class public Lcom/android/keyguard/KeyguardInputViewController$Factory;
.super Ljava/lang/Object;
.source "KeyguardInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 2

    move-object v0, p0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 262
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p2

    .line 263
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p3

    .line 264
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object v1, p4

    .line 265
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v1, p5

    .line 266
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p6

    .line 267
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v1, p7

    .line 268
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    move-object v1, p8

    .line 269
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    move-object v1, p9

    .line 270
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v1, p11

    .line 271
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    move-object v1, p10

    .line 272
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object v1, p12

    .line 274
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p13

    .line 275
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v1, p14

    .line 276
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object/from16 v1, p15

    .line 279
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p16

    .line 281
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    move-object/from16 v1, p17

    .line 282
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v1, p18

    .line 283
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 289
    iget-object v2, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    sget v3, Lcom/android/systemui/R$id;->emergency_call_button:I

    .line 291
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/EmergencyButton;

    .line 290
    invoke-virtual {v2, v3}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    move-result-object v2

    .line 292
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPatternView;

    if-eqz v3, :cond_0

    .line 295
    new-instance v3, Lcom/android/keyguard/KeyguardSecPatternViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v12, v2

    move-object/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/keyguard/KeyguardSecPatternViewController;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;)V

    return-object v3

    .line 305
    :cond_0
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    if-eqz v3, :cond_2

    .line 308
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v3, :cond_1

    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    if-eqz v3, :cond_1

    .line 310
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    return-object v3

    .line 318
    :cond_1
    new-instance v3, Lcom/android/keyguard/KeyguardSecPasswordViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardSecPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;)V

    return-object v3

    .line 334
    :cond_2
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPINView;

    if-eqz v3, :cond_4

    .line 337
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v3, :cond_3

    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    if-eqz v3, :cond_3

    .line 339
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v3

    .line 346
    :cond_3
    new-instance v3, Lcom/android/keyguard/KeyguardSecPinViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPINView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v3

    .line 361
    :cond_4
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    if-eqz v3, :cond_5

    .line 364
    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPinViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v20, v0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v15, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardSecSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v3

    .line 381
    :cond_5
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v3, :cond_6

    instance-of v4, v1, Lcom/android/keyguard/KeyguardSimPukTMOView;

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_6
    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    if-eqz v4, :cond_8

    :goto_0
    if-eqz v3, :cond_7

    .line 385
    new-instance v3, Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSimPukTMOView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardSimPukTMOViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    return-object v3

    .line 390
    :cond_7
    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPukViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v20, v0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v15, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardSecSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v3

    .line 407
    :cond_8
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v3, :cond_9

    instance-of v3, v1, Lcom/android/keyguard/KeyguardSimPersoView;

    if-eqz v3, :cond_9

    .line 408
    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v4, v3

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardSimPersoViewController;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v3

    .line 413
    :cond_9
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_a

    instance-of v3, v1, Lcom/android/keyguard/KeyguardSwipeView;

    if-eqz v3, :cond_a

    .line 414
    new-instance v3, Lcom/android/keyguard/KeyguardSwipeViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSwipeView;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    move-object v4, v3

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/keyguard/KeyguardSwipeViewController;-><init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V

    return-object v3

    .line 417
    :cond_a
    instance-of v3, v1, Lcom/android/keyguard/KeyguardAdminView;

    if-eqz v3, :cond_b

    .line 418
    new-instance v0, Lcom/android/keyguard/KeyguardAdminViewController;

    check-cast v1, Lcom/android/keyguard/KeyguardAdminView;

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    invoke-direct {v0, v1, v3, v9, v2}, Lcom/android/keyguard/KeyguardAdminViewController;-><init>(Lcom/android/keyguard/KeyguardAdminView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    return-object v0

    :cond_b
    move-object/from16 v3, p2

    move-object/from16 v9, p3

    .line 420
    instance-of v4, v1, Lcom/android/keyguard/KeyguardFMMView;

    if-eqz v4, :cond_c

    .line 421
    new-instance v19, Lcom/android/keyguard/KeyguardFMMViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardFMMView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v4, v19

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardFMMViewController;-><init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v19

    .line 426
    :cond_c
    instance-of v4, v1, Lcom/android/keyguard/KeyguardRMMView;

    if-eqz v4, :cond_d

    .line 427
    new-instance v19, Lcom/android/keyguard/KeyguardRMMViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardRMMView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v4, v19

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardRMMViewController;-><init>(Lcom/android/keyguard/KeyguardRMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v19

    .line 432
    :cond_d
    instance-of v4, v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    if-eqz v4, :cond_e

    .line 433
    new-instance v21, Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    move-object/from16 v4, v21

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v20, v0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v13, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-object v21

    .line 439
    :cond_e
    instance-of v4, v1, Lcom/android/keyguard/KeyguardCarrierView;

    if-eqz v4, :cond_f

    .line 440
    new-instance v11, Lcom/android/keyguard/KeyguardCarrierViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardCarrierView;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v4, v11

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/KeyguardCarrierViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;)V

    return-object v11

    .line 442
    :cond_f
    instance-of v4, v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    if-eqz v4, :cond_10

    .line 443
    new-instance v19, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v4, v19

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v19

    .line 449
    :cond_10
    instance-of v4, v1, Lcom/android/keyguard/KeyguardUCMView;

    if-eqz v4, :cond_11

    .line 450
    new-instance v19, Lcom/android/keyguard/KeyguardUCMViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardUCMView;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v4, v19

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardUCMViewController;-><init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v19

    .line 457
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find controller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
