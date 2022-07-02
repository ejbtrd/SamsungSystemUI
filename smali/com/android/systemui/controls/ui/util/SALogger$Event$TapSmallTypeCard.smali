.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapSmallTypeCard"
.end annotation


# instance fields
.field private final deviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;->deviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;->deviceType:Ljava/lang/String;

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

    .line 162
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    .line 163
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapSmallTypeCard;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapSmallTypeCard;

    .line 164
    sget-object v4, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;

    .line 165
    iget-object v5, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;->deviceName:Ljava/lang/String;

    .line 166
    sget-object v6, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;

    .line 167
    iget-object v7, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;->deviceType:Ljava/lang/String;

    move-object v1, p1

    .line 161
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;)V

    return-void
.end method
