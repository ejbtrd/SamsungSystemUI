.class public abstract Lcom/android/systemui/uiautomator/dagger/PlankModule;
.super Ljava/lang/Object;
.source "PlankModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    return-void
.end method

.method public static final provideApiLogger()Lcom/android/systemui/uiautomator/ApiLogger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;->provideApiLogger()Lcom/android/systemui/uiautomator/ApiLogger;

    move-result-object v0

    return-object v0
.end method

.method public static final providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;->providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final provideProtocol()Lcom/android/systemui/uiautomator/protocol/Protocol;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;->provideProtocol()Lcom/android/systemui/uiautomator/protocol/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static final provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;->provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public static final providesPlankFeatureEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule;->Companion:Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule$Companion;->providesPlankFeatureEnabled()Z

    move-result v0

    return v0
.end method
