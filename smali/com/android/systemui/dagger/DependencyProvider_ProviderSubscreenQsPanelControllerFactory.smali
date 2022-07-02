.class public final Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProviderSubscreenQsPanelControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qp/SubscreenQsPanelController;",
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

.field private final injectionInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenQsPanelController;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider;->providerSubscreenQsPanelController(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qp/SubscreenQsPanelController;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->injectionInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/InjectionInflationController;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->providerSubscreenQsPanelController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenQsPanelControllerFactory;->get()Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-result-object p0

    return-object p0
.end method
