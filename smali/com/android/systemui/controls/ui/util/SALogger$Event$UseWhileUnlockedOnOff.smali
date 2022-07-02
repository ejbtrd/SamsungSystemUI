.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseWhileUnlockedOnOff"
.end annotation


# instance fields
.field private final checked:Z

.field private final screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;Z)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SALogger$Screen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;->screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;->checked:Z

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 3
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemUIAnalyticsWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;->screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$UseWhileUnlockedOnOff;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$UseWhileUnlockedOnOff;

    .line 251
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;->checked:Z

    invoke-virtual {v2, p0}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;->toSALog(Z)Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Ljava/lang/String;)V

    return-void
.end method
