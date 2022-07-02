.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideCarrierInformationNetworkHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final indicatorRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCarrierInformationNetworkHelper(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider;->provideCarrierInformationNetworkHelper(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->provideCarrierInformationNetworkHelper(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideCarrierInformationNetworkHelperFactory;->get()Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    move-result-object p0

    return-object p0
.end method
