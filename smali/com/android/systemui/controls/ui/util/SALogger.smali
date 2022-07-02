.class public final Lcom/android/systemui/controls/ui/util/SALogger;
.super Ljava/lang/Object;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SALogger$Companion;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event;,
        Lcom/android/systemui/controls/ui/util/SALogger$AppStatus;,
        Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;,
        Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemUIAnalyticsWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SALogger$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;->sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V

    return-void
.end method

.method public final sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SALogger$Screen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendScreenViewLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;)V

    return-void
.end method

.method public final sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsPreference;->Companion:Lcom/android/systemui/controls/ui/util/ControlsPreference$Companion;

    .line 312
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;->getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->getStatusEventId(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;)Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/systemui/controls/ui/util/ControlsPreference$Companion;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
