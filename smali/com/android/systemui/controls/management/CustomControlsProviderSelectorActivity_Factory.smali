.class public final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;
.super Ljava/lang/Object;
.source "CustomControlsProviderSelectorActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final backExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final controlsUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
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

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final listingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->backExecutorProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->listingControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->customControlsControllerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p10, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p11, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->badgeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/CustomControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ">;)",
            "Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;"
        }
    .end annotation

    .line 83
    new-instance v12, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;

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

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;
    .locals 13

    .line 92
    new-instance v12, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

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

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;
    .locals 12

    .line 71
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->backExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->listingControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->customControlsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/controls/controller/CustomControlsController;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/controls/ui/util/SALogger;

    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->badgeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/controls/controller/util/BadgeProvider;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->newInstance(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity_Factory;->get()Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    move-result-object p0

    return-object p0
.end method
