.class public final Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;
.super Ljava/lang/Object;
.source "StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final jankAnalyzerHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final leboMirroringManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SecHideInformationMirroringController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final touchProximityHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final twoPhoneModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
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
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SecHideInformationMirroringController;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->settingsListenerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->touchProximityHelperProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->indicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->twoPhoneModeControllerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->jankAnalyzerHelperProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->leboMirroringManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SecHideInformationMirroringController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;"
        }
    .end annotation

    .line 81
    new-instance v10, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;

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

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static provideSecStatusBarSetupFactory(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;
    .locals 0

    .line 93
    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule;->provideSecStatusBarSetupFactory(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;
    .locals 10

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/BootAnimationFinishedCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->settingsListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->touchProximityHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->indicatorGardenIconManagerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->twoPhoneModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->jankAnalyzerHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->leboMirroringManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->provideSecStatusBarSetupFactory(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideSecStatusBarSetupFactoryFactory;->get()Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;

    move-result-object p0

    return-object p0
.end method
