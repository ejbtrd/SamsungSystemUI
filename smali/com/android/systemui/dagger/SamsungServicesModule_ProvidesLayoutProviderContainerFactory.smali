.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvidesLayoutProviderContainerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesLayoutProviderContainer(Landroid/content/Context;)Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule;->providesLayoutProviderContainer(Landroid/content/Context;)Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;->providesLayoutProviderContainer(Landroid/content/Context;)Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesLayoutProviderContainerFactory;->get()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    move-result-object p0

    return-object p0
.end method
