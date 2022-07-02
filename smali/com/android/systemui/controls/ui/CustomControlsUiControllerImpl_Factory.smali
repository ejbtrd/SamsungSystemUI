.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
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

.field private final auiFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeSubjectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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

.field private final controlActionCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsActivityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsListingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final customControlActionCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final customControlsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final logWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final saLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->customControlsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 90
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 91
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 92
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsListingControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlActionCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->customControlActionCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 99
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 104
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 105
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->badgeSubjectProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 106
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->badgeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ">;)",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;"
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

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    .line 130
    new-instance v20, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v20
.end method

.method public static newInstance(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;"
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

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    .line 144
    new-instance v20, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;-><init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    return-object v20
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;
    .locals 21

    move-object/from16 v0, p0

    .line 111
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->customControlsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsListingControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/SharedPreferences;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlActionCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->customControlActionCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsMetricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/controls/ControlsMetricsLogger;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/controls/ui/util/AUIFacade;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/controls/ui/util/SALogger;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->badgeSubjectProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/controls/controller/util/BadgeSubject;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->badgeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/controls/controller/util/BadgeProvider;

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->newInstance(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl_Factory;->get()Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    move-result-object p0

    return-object p0
.end method
