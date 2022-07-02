.class public final Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;
.super Ljava/lang/Object;
.source "ProtocolManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/ApiLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final plankDispatcherFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final protocolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final testInputMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/Protocol;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/ApiLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->testInputMonitorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->protocolProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->apiLoggerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->plankDispatcherFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/Protocol;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/ApiLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;",
            ">;)",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/protocol/Protocol;Lcom/android/systemui/uiautomator/ApiLogger;Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;)Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;-><init>(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/protocol/Protocol;Lcom/android/systemui/uiautomator/ApiLogger;Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->testInputMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    iget-object v1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->protocolProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/uiautomator/protocol/Protocol;

    iget-object v2, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->apiLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/uiautomator/ApiLogger;

    iget-object p0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->plankDispatcherFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->newInstance(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/protocol/Protocol;Lcom/android/systemui/uiautomator/ApiLogger;Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;)Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl_Factory;->get()Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;

    move-result-object p0

    return-object p0
.end method
