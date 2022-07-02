.class public Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;
.super Ljava/lang/Object;
.source "NotificationRankingManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationRanker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationRankingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationRankingManager.kt\ncom/android/systemui/statusbar/notification/collection/NotificationRankingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1819#2,2:346\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationRankingManager.kt\ncom/android/systemui/statusbar/notification/collection/NotificationRankingManager\n*L\n208#1,2:346\n*E\n"
.end annotation


# instance fields
.field private final groupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mNewGutsStyle:Z

.field private mNotificationNumberSum:I

.field private mNotificationSortOrder:I

.field private mNotificationSumCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;)V
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/NotificationFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;",
            "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "mediaManagerLazy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notifFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sectionsFeatureManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "peopleNotificationIdentifier"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highPriorityProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardEnvironment"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManagerLazy:Ldagger/Lazy;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->groupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 66
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    .line 67
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    .line 68
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    .line 69
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 70
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 72
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->keyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    .line 77
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$mediaManager$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManager$delegate:Lkotlin/Lazy;

    .line 82
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingComparator:Ljava/util/Comparator;

    .line 300
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSumCallback:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$filter(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->filter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public static final synthetic access$getMNotificationSortOrder$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSortOrder:I

    return p0
.end method

.method public static final synthetic access$getMediaManagerLazy$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Ldagger/Lazy;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getPeopleNotificationIdentifier$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    return-object p0
.end method

.method public static final synthetic access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getUsePeopleFiltering(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getUsePeopleFiltering()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method private final filter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->notifFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetInitializationTime()V

    :cond_0
    return p0
.end method

.method private final filterAndSortLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->logger:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->logFilterAndSort(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->getNotificationSortOrderValue()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSortOrder:I

    .line 201
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isNewNotiGutsEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNewGutsStyle:Z

    .line 204
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingComparator:Ljava/util/Comparator;

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 207
    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p2

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 208
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getBucketForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setBucket(I)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private final getBucketForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 7

    .line 223
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isImportantCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    .line 224
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    .line 226
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    .line 227
    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSortOrder:I

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x3

    if-eqz v0, :cond_1

    :goto_0
    move v5, v4

    goto :goto_1

    .line 234
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSemPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 235
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getUsePeopleFiltering()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    goto :goto_1

    .line 236
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNewGutsStyle:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x6

    :cond_6
    :goto_1
    return v5
.end method

.method private final getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mediaManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method private final getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method

.method private final getUsePeopleFiltering()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result p0

    return p0
.end method

.method private final isConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method private final isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 287
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getMediaManager()Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final updateRankingForEntries(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 244
    :cond_0
    monitor-enter p1

    .line 247
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 248
    new-instance v5, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v5}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 249
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 254
    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 256
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v7

    .line 258
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 259
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->groupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    .line 265
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->number:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_0

    .line 273
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationNumberSum:I

    if-eq v0, v3, :cond_7

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getMNotificationSumCallback()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getMNotificationSumCallback()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    :goto_1
    add-int/lit8 v1, v2, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getMNotificationSumCallback()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;->onNotificationSumChanged(I)V

    if-lt v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_1

    .line 279
    :cond_6
    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationNumberSum:I

    .line 282
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p1

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final getMNotificationSumCallback()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSumCallback:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getNotificationSum()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationNumberSum:I

    return p0
.end method

.method public getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method public isNotificationForCurrentProfiles(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->keyguardEnvironment:Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public final removeNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSumCallback:Ljava/util/ArrayList;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->mNotificationSumCallback:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1    # Landroid/service/notification/NotificationListenerService$RankingMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/service/notification/NotificationListenerService$RankingMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->setRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 177
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->updateRankingForEntries(Ljava/lang/Iterable;)V

    .line 179
    :cond_0
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->filterAndSortLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
