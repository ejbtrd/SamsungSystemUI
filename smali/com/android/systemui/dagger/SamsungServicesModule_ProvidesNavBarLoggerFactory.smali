.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvidesNavBarLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/basic/util/LogWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final serviceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
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
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;->serviceLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;)",
            "Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesNavBarLogger(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule;->providesNavBarLogger(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;->serviceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/SamsungServiceLogger;

    invoke-static {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;->providesNavBarLogger(Lcom/android/systemui/log/SamsungServiceLogger;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesNavBarLoggerFactory;->get()Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object p0

    return-object p0
.end method
