.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
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

.field private final indicatorRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesSlimIndicatorViewMediator(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/systemui/dagger/SamsungServicesModule;->providesSlimIndicatorViewMediator(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->providesSlimIndicatorViewMediator(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesSlimIndicatorViewMediatorFactory;->get()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    return-object p0
.end method
