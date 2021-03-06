.class public final Lcom/android/systemui/doze/AODMachine_Factory;
.super Ljava/lang/Object;
.source "AODMachine_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/AODMachine;",
        ">;"
    }
.end annotation


# instance fields
.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final dockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private final partsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "[",
            "Lcom/android/systemui/doze/DozeMachine$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeLockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "[",
            "Lcom/android/systemui/doze/DozeMachine$Part;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/doze/AODMachine_Factory;->serviceProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/doze/AODMachine_Factory;->configProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/doze/AODMachine_Factory;->wakeLockProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/android/systemui/doze/AODMachine_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/android/systemui/doze/AODMachine_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dozeHostProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p9, p0, Lcom/android/systemui/doze/AODMachine_Factory;->partsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/AODMachine_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "[",
            "Lcom/android/systemui/doze/DozeMachine$Part;",
            ">;)",
            "Lcom/android/systemui/doze/AODMachine_Factory;"
        }
    .end annotation

    .line 67
    new-instance v10, Lcom/android/systemui/doze/AODMachine_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/AODMachine_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;)Lcom/android/systemui/doze/AODMachine;
    .locals 11

    .line 74
    new-instance v10, Lcom/android/systemui/doze/AODMachine;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/AODMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/AODMachine;
    .locals 10

    .line 58
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->wakeLockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/doze/DozeLog;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/dock/DockManager;

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->dozeHostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/doze/DozeHost;

    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine_Factory;->partsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, [Lcom/android/systemui/doze/DozeMachine$Part;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/doze/AODMachine_Factory;->newInstance(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;)Lcom/android/systemui/doze/AODMachine;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine_Factory;->get()Lcom/android/systemui/doze/AODMachine;

    move-result-object p0

    return-object p0
.end method
