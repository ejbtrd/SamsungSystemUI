.class public final Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;
.super Ljava/lang/Object;
.source "PlankModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/dagger/PlankModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApiLogger()Lcom/android/systemui/uiautomator/ApiLogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    sget-object p0, Lcom/android/systemui/uiautomator/ApiLogger;->INSTANCE:Lcom/android/systemui/uiautomator/ApiLogger;

    return-object p0
.end method

.method public final providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    new-instance p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    invoke-direct {p0}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;-><init>()V

    return-object p0
.end method

.method public final provideProtocol()Lcom/android/systemui/uiautomator/protocol/Protocol;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    new-instance p0, Lcom/android/systemui/uiautomator/protocol/Protocol;

    invoke-direct {p0}, Lcom/android/systemui/uiautomator/protocol/Protocol;-><init>()V

    return-object p0
.end method

.method public final provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final providesPlankFeatureEnabled()Z
    .locals 0

    .line 30
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_TEST_FOR_PLANK:Z

    return p0
.end method
