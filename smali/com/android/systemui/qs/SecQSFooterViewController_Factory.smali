.class public final Lcom/android/systemui/qs/SecQSFooterViewController_Factory;
.super Ljava/lang/Object;
.source "SecQSFooterViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/SecQSFooterViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
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

.field private final qsDetailDisplayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;"
        }
    .end annotation
.end field

.field private final qsPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final quickQSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field private final userInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQSFooterView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQSFooterView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userInfoControllerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->qsDetailDisplayerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p9, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p10, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p11, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/SecQSFooterViewController_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQSFooterView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)",
            "Lcom/android/systemui/qs/SecQSFooterViewController_Factory;"
        }
    .end annotation

    .line 83
    new-instance v12, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newInstance(Lcom/android/systemui/qs/SecQSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/qs/SecQSFooterViewController;
    .locals 13

    .line 92
    new-instance v12, Lcom/android/systemui/qs/SecQSFooterViewController;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQSFooterViewController;-><init>(Lcom/android/systemui/qs/SecQSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/SecQSFooterViewController;
    .locals 12

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/SecQSFooterView;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userInfoControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->qsDetailDisplayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/QSDetailDisplayer;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/internal/logging/MetricsLogger;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->newInstance(Lcom/android/systemui/qs/SecQSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/qs/SecQSFooterViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSFooterViewController_Factory;->get()Lcom/android/systemui/qs/SecQSFooterViewController;

    move-result-object p0

    return-object p0
.end method
