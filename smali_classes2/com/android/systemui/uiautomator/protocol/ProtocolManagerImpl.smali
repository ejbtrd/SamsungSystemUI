.class public final Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;
.super Ljava/lang/Object;
.source "ProtocolManagerImpl.kt"

# interfaces
.implements Lcom/android/systemui/uiautomator/protocol/ProtocolManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl$WhenMappings;
    }
.end annotation


# instance fields
.field private apiLogger:Lcom/android/systemui/uiautomator/ApiLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private plankDispatcherFactory:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private protocol:Lcom/android/systemui/uiautomator/protocol/Protocol;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private testInputMonitor:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/protocol/Protocol;Lcom/android/systemui/uiautomator/ApiLogger;Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;)V
    .locals 1
    .param p1    # Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/uiautomator/protocol/Protocol;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/uiautomator/ApiLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "testInputMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "plankDispatcherFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/uiautomator/protocol/Protocol;

    .line 22
    iput-object p3, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/uiautomator/ApiLogger;

    .line 23
    iput-object p4, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    return-void
.end method

.method private final onCalled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/uiautomator/protocol/Protocol;

    invoke-virtual {v0, p1}, Lcom/android/systemui/uiautomator/protocol/Protocol;->getCommand(Ljava/lang/String;)Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 53
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/uiautomator/ApiLogger;

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "key_long_type"

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/uiautomator/ApiLogger;->isLogged(Ljava/lang/String;J)Z

    move-result p0

    const-string p2, "key_boolean_type"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    invoke-virtual {p0, p2}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->get(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_1
    move-object p1, p0

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_3
    :goto_2
    return-object p1
.end method

.method private final onMonitoring(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/uiautomator/protocol/Protocol;

    invoke-virtual {v1, p1}, Lcom/android/systemui/uiautomator/protocol/Protocol;->getCommand(Ljava/lang/String;)Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "key_monitor_result"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 p0, 0x0

    .line 43
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget-object p1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->getEventList()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_monitor_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/uiautomator/ApiLogger;

    invoke-virtual {p1}, Lcom/android/systemui/uiautomator/ApiLogger;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_logging_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->stop()V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/uiautomator/ApiLogger;

    invoke-virtual {p1}, Lcom/android/systemui/uiautomator/ApiLogger;->clear()V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->start()V

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "__plank__"

    .line 64
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->onMonitoring(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;->onCalled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    .line 70
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x0

    const-string p2, "key_monitor_result"

    .line 71
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-object p0
.end method
