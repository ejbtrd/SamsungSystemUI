.class public final Lcom/android/systemui/media/MediaPlayerData;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,903:1\n1#2:904\n1828#3,3:905\n1517#3:908\n1588#3,3:909\n1828#3,3:912\n1819#3,2:915\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n*L\n845#1,3:905\n860#1:908\n860#1,3:909\n868#1,3:912\n878#1,2:915\n*E\n"
.end annotation


# static fields
.field private static final EMPTY:Lcom/android/systemui/media/MediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/systemui/media/MediaPlayerData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mediaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mediaPlayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static shouldPrioritizeSs:Z

.field private static smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    .line 781
    new-instance v0, Lcom/android/systemui/media/MediaData;

    move-object v1, v0

    .line 782
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v13, "INVALID"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/high16 v27, 0xfe0000

    const/16 v28, 0x0

    .line 781
    invoke-direct/range {v1 .. v28}, Lcom/android/systemui/media/MediaData;-><init>(IIZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/MediaData;

    .line 797
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;-><init>()V

    .line 798
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 799
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    .line 800
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    .line 801
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$4;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$4;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->comparator:Ljava/util/Comparator;

    .line 803
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 804
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaControlPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    .line 808
    new-instance p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-interface {p4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    const/4 p4, 0x0

    invoke-direct {p0, p4, p2, v0, v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/MediaData;J)V

    .line 809
    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addMediaRecommendation(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Lcom/android/systemui/media/MediaControlPanel;ZLcom/android/systemui/util/time/SystemClock;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/SmartspaceMediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaControlPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    sput-boolean p4, Lcom/android/systemui/media/MediaPlayerData;->shouldPrioritizeSs:Z

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    .line 822
    new-instance p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    sget-object p4, Lcom/android/systemui/media/MediaPlayerData;->EMPTY:Lcom/android/systemui/media/MediaData;

    invoke-interface {p5}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    const/4 p5, 0x1

    invoke-direct {p0, p5, p4, v0, v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/MediaData;J)V

    .line 823
    sget-object p4, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sput-object p2, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    return-void
.end method

.method public final clear()V
    .locals 0

    .line 888
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 889
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final firstActiveMediaIndex()I
    .locals 4

    .line 868
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "mediaPlayers.entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Ljava/util/Map$Entry;

    .line 869
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->getData()Lcom/android/systemui/media/MediaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    return-object p0
.end method

.method public final getShouldPrioritizeSs$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 0

    .line 784
    sget-boolean p0, Lcom/android/systemui/media/MediaPlayerData;->shouldPrioritizeSs:Z

    return p0
.end method

.method public final getSmartspaceMediaData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 786
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    return-object p0
.end method

.method public final hasActiveMediaOrRecommendationCard()Z
    .locals 2

    .line 894
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 897
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->firstActiveMediaIndex()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final mediaData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 860
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Ljava/util/Map$Entry;

    .line 860
    new-instance v2, Lkotlin/Triple;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->getData()Lcom/android/systemui/media/MediaData;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final moveIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "newKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 829
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p1, :cond_1

    goto :goto_0

    .line 834
    :cond_1
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0, p2}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    .line 835
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    :cond_2
    :goto_0
    return-void
.end method

.method public final playerKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 864
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "mediaPlayers.keys"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final players()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 862
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "mediaPlayers.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    sput-object p1, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    .line 857
    :cond_1
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    return-object p1
.end method

.method public final smartspaceMediaKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 878
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 879
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
