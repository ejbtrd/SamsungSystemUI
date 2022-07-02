.class public final Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;
.super Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseWhileUnlockedActive"
.end annotation


# instance fields
.field private final active:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;->active:Z

    return-void
.end method


# virtual methods
.method public getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 300
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$UseWhileUnlockedOnOff;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$UseWhileUnlockedOnOff;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 301
    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;->active:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;->toSALog(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
