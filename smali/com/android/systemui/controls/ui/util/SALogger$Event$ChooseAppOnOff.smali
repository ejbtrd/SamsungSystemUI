.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChooseAppOnOff"
.end annotation


# instance fields
.field private final checked:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;->checked:Z

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

    .line 88
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;

    .line 89
    sget-object v1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$ChooseAppsOnOff;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$ChooseAppsOnOff;

    .line 90
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;->checked:Z

    invoke-virtual {v2, p0}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;->toSALog(Z)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Ljava/lang/String;)V

    return-void
.end method
