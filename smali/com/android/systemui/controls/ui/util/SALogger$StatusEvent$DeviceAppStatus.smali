.class public final Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;
.super Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceAppStatus"
.end annotation


# instance fields
.field private final appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 295
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 296
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(appList)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
