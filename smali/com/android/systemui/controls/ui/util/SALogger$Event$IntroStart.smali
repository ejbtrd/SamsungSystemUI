.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntroStart"
.end annotation


# instance fields
.field private final selectedApps:I

.field private final totalApps:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->selectedApps:I

    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->totalApps:I

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 8
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemUIAnalyticsWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;

    .line 98
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;

    .line 99
    sget-object v4, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;

    .line 100
    iget v0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->selectedApps:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    sget-object v6, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;

    .line 102
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->totalApps:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;)V

    return-void
.end method
