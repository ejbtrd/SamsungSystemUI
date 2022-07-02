.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSecStatusBarKnoxMediator(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider;->provideSecStatusBarKnoxMediator(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->provideSecStatusBarKnoxMediator(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSecStatusBarKnoxMediatorFactory;->get()Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    move-result-object p0

    return-object p0
.end method
