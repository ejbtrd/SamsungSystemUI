.class public final Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProviderQsResetSettingsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/QsResetSettingsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providerQsResetSettingsManager(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/util/QsResetSettingsManager;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider;->providerQsResetSettingsManager(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/util/QsResetSettingsManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/QsResetSettingsManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/QsResetSettingsManager;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->providerQsResetSettingsManager(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/util/QsResetSettingsManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProviderQsResetSettingsManagerFactory;->get()Lcom/android/systemui/util/QsResetSettingsManager;

    move-result-object p0

    return-object p0
.end method
