.class public final Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainerController_Factory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final alarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final devicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final inputMethodManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardRotationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final secViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final securityViewFlipperControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 72
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 73
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 74
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 75
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 76
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 77
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 78
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 79
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 80
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->securityViewFlipperControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 81
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 82
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->secViewProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 83
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 84
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 85
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 86
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 87
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;",
            ">;)",
            "Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 111
    new-instance v17, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v17
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 125
    new-instance v17, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)V

    return-object v17
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;
    .locals 18

    move-object/from16 v0, p0

    .line 92
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->adminSecondaryLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->securityViewFlipperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->secViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/AlarmManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/keyguard/KeyguardRotationController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->dualDarInnerLockScreenControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;

    invoke-static/range {v2 .. v17}, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->newInstance(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/app/admin/DevicePolicyManager;Landroid/view/inputmethod/InputMethodManager;Landroid/app/AlarmManager;Lcom/android/keyguard/KeyguardRotationController;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;)Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController_Factory_Factory;->get()Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;

    move-result-object p0

    return-object p0
.end method
