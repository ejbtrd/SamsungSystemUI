.class public final Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
.super Ljava/lang/Object;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemUIAnalyticsWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemUIAnalyticsWrapper.kt\ncom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,271:1\n1147#2,2:272\n1221#2,4:274\n*E\n*S KotlinDebug\n*F\n+ 1 SystemUIAnalyticsWrapper.kt\ncom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper\n*L\n269#1,2:272\n269#1,4:274\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatusEventId(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "statusEventId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;->getStatusEventId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "screenId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key1"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "value1"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key2"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "value2"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p3}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p5}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v4

    move-object v3, p4

    move-object v5, p6

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;)V
    .locals 9
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "screenId"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key1"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value1"

    move-object v4, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key2"

    move-object v5, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value2"

    move-object v6, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key3"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value3"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {p3}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {p5}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;",
            "Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "screenId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "customDimen"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    const/16 p3, 0xa

    .line 1147
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p3

    const/16 v0, 0x10

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    .line 1148
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1221
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1222
    check-cast p3, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "eventId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "screenId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "screenId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "detail"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendScreenViewLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "screenId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method
