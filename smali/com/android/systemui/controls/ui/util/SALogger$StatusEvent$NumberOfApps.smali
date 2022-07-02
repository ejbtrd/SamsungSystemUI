.class public final Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;
.super Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumberOfApps"
.end annotation


# instance fields
.field private final selectedApps:I

.field private final totalApps:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    return-void
.end method


# virtual methods
.method public getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 290
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
