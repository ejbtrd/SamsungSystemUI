.class public final Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProviderSubscreenSignalInfoControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;",
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

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providerSubscreenSignalInfoController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider;->providerSubscreenSignalInfoController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->providerSubscreenSignalInfoController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderSubscreenSignalInfoControllerFactory;->get()Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;

    move-result-object p0

    return-object p0
.end method
