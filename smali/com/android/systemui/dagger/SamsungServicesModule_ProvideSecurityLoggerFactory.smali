.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvideSecurityLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/log/SamsungServiceLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSecurityLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/systemui/dagger/SamsungServicesModule;->provideSecurityLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/SamsungServiceLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogcatEchoTracker;

    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->provideSecurityLogger(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/SamsungServiceLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideSecurityLoggerFactory;->get()Lcom/android/systemui/log/SamsungServiceLogger;

    move-result-object p0

    return-object p0
.end method
