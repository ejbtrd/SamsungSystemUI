.class public final Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;
.super Ljava/lang/Object;
.source "DozeModule_ProvidesAODMachinePartesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "[",
        "Lcom/android/systemui/doze/DozeMachine$Part;",
        ">;"
    }
.end annotation


# instance fields
.field private final aodDozeUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODUi;",
            ">;"
        }
    .end annotation
.end field

.field private final aodScreenBrightnessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODScreenBrightness;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeFalsingManagerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeScreenStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeScreenState;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeWallpaperStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeWallpaperState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeFalsingManagerAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODUi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeScreenState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODScreenBrightness;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeWallpaperState;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->aodDozeUiProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeScreenStateProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->aodScreenBrightnessProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeWallpaperStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeFalsingManagerAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODUi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeScreenState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/AODScreenBrightness;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeWallpaperState;",
            ">;)",
            "Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;"
        }
    .end annotation

    .line 55
    new-instance v6, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static providesAODMachinePartes(Lcom/android/systemui/doze/DozeFalsingManagerAdapter;Lcom/android/systemui/doze/AODUi;Lcom/android/systemui/doze/DozeScreenState;Lcom/android/systemui/doze/AODScreenBrightness;Lcom/android/systemui/doze/DozeWallpaperState;)[Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/doze/dagger/DozeModule;->providesAODMachinePartes(Lcom/android/systemui/doze/DozeFalsingManagerAdapter;Lcom/android/systemui/doze/AODUi;Lcom/android/systemui/doze/DozeScreenState;Lcom/android/systemui/doze/AODScreenBrightness;Lcom/android/systemui/doze/DozeWallpaperState;)[Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/doze/DozeMachine$Part;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->get()[Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object p0

    return-object p0
.end method

.method public get()[Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->aodDozeUiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/AODUi;

    iget-object v2, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeScreenStateProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeScreenState;

    iget-object v3, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->aodScreenBrightnessProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/AODScreenBrightness;

    iget-object p0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->dozeWallpaperStateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeWallpaperState;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesAODMachinePartesFactory;->providesAODMachinePartes(Lcom/android/systemui/doze/DozeFalsingManagerAdapter;Lcom/android/systemui/doze/AODUi;Lcom/android/systemui/doze/DozeScreenState;Lcom/android/systemui/doze/AODScreenBrightness;Lcom/android/systemui/doze/DozeWallpaperState;)[Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object p0

    return-object p0
.end method
