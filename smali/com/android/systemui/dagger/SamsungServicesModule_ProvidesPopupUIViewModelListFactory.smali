.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvidesPopupUIViewModelListFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final dataConnectionViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileDeviceWarningViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mwOverheatWarningViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final simTrayProtectionViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final simTrayReverseProtectionViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final simTrayWaterProtectionViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;",
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
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->dataConnectionViewModelProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->mwOverheatWarningViewModelProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayWaterProtectionViewModelProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayReverseProtectionViewModelProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayProtectionViewModelProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->mobileDeviceWarningViewModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;"
        }
    .end annotation

    .line 64
    new-instance v7, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static providesPopupUIViewModelList(Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;",
            "Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/dagger/SamsungServicesModule;->providesPopupUIViewModelList(Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->dataConnectionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->mwOverheatWarningViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;

    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayWaterProtectionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;

    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayReverseProtectionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;

    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->simTrayProtectionViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;

    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->mobileDeviceWarningViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUIViewModelListFactory;->providesPopupUIViewModelList(Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayReverseProtectionViewModel;Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
