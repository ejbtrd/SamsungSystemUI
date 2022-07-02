.class Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# instance fields
.field private final mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDualDarInnerLockScreenControllerFactory:Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

.field private final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mSecView:Lcom/android/keyguard/KeyguardSecSecurityContainer;

.field private final mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mView:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V
    .locals 2

    move-object v0, p0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 605
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object v1, p2

    .line 606
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    move-object v1, p3

    .line 607
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p4

    .line 608
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p5

    .line 609
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    move-object v1, p6

    .line 610
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v1, p7

    .line 611
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v1, p8

    .line 612
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p9

    .line 613
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    move-object v1, p10

    .line 614
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p11

    .line 616
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecView:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    move-object v1, p12

    .line 617
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v1, p13

    .line 618
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v1, p14

    .line 619
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v1, p15

    .line 620
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 622
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p16

    .line 623
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mDualDarInnerLockScreenControllerFactory:Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)Lcom/android/keyguard/KeyguardSecurityContainerController;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 630
    new-instance v18, Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecView:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mDualDarInnerLockScreenControllerFactory:Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;

    move-object/from16 v17, v0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V

    return-object v18
.end method
