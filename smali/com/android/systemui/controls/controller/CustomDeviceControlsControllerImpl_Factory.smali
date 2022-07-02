.class public final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;
.super Ljava/lang/Object;
.source "CustomDeviceControlsControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final controlsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;",
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

.field private final userContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->controlsComponentProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->userContextProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;)",
            "Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;"
        }
    .end annotation

    .line 59
    new-instance v7, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/controls/ui/util/SALogger;)Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;
    .locals 8

    .line 66
    new-instance v7, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/controls/ui/util/SALogger;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->controlsComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/settings/UserContextProvider;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/controls/ui/util/SALogger;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/controls/ui/util/SALogger;)Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl_Factory;->get()Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    move-result-object p0

    return-object p0
.end method
