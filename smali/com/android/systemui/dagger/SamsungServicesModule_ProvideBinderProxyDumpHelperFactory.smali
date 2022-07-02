.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvideBinderProxyDumpHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/BinderProxyDumpHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
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
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBinderProxyDumpHelper(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BinderProxyDumpHelper;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule;->provideBinderProxyDumpHelper(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BinderProxyDumpHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/BinderProxyDumpHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/BinderProxyDumpHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;->provideBinderProxyDumpHelper(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BinderProxyDumpHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideBinderProxyDumpHelperFactory;->get()Lcom/android/systemui/BinderProxyDumpHelper;

    move-result-object p0

    return-object p0
.end method
