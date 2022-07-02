.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;
.super Ljava/lang/Object;
.source "KeyguardFastBioUnlockController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
        ">;"
    }
.end annotation


# instance fields
.field private final binderCallMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final choreographerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final displayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final looperSlowLogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorHelperLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final visibilityMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->visibilityMonitorProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->choreographerProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p10, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p11, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->viewControllerLazyProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p12, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p13, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->keyguardUpdateMonitorLazyProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p14, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->viewMediatorHelperLazyProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p15, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;"
        }
    .end annotation

    .line 112
    new-instance v16, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;

    move-object/from16 v0, v16

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

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v16
.end method

.method public static newInstance(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Landroid/view/Choreographer;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Landroid/view/Choreographer;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;"
        }
    .end annotation

    .line 125
    new-instance v16, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v0, v16

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

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Landroid/view/Choreographer;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v16
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 17

    move-object/from16 v0, p0

    .line 94
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->visibilityMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->choreographerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/Choreographer;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->sysuiStatusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->viewControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->keyguardUpdateMonitorLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->viewMediatorHelperLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v15

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->notificationShadeWindowControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->newInstance(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Landroid/view/Choreographer;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController_Factory;->get()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-result-object p0

    return-object p0
.end method
