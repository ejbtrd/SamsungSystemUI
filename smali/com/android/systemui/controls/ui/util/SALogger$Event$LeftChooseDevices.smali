.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeftChooseDevices"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final numberOfSelectedControls:I

.field private final numberOfStructures:I

.field private final numberOfTotalControls:I

.field private final numberOfZones:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    .line 119
    iput p3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    .line 120
    iput p4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    .line 121
    iput p5, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 5
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemUIAnalyticsWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;

    .line 126
    sget-object v1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AppName;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AppName;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;

    iget v4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AllControls;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AllControls;

    iget v4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Structure;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Structure;

    iget v4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Zone;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Zone;

    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Ljava/util/Map;)V

    return-void
.end method
