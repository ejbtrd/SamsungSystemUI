.class public final Lcom/android/systemui/media/MediaDeviceManager;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDeviceManager$Listener;,
        Lcom/android/systemui/media/MediaDeviceManager$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n1819#2,2:277\n1819#2,2:279\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n*L\n138#1,2:277\n160#1,2:279\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaDeviceManager$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fgExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intentReceiver:Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDeviceManager$Listener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mr2manager:Landroid/media/MediaRouter2Manager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/media/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/LocalMediaManagerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaRouter2Manager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controllerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localMediaManagerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mr2manager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    .line 55
    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p7, p0, Lcom/android/systemui/media/MediaDeviceManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string p1, "MediaDeviceManager:MediaLogger"

    .line 62
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance p1, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->intentReceiver:Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;

    .line 84
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 85
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 88
    const-class p2, Lcom/android/systemui/media/MediaDeviceManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "javaClass.name"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 90
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p3, 0x0

    invoke-virtual {p7, p1, p0, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static final synthetic access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getEntries$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$processDevice(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method private final processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 5

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    new-instance v1, Lcom/android/systemui/media/MediaDeviceData;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    if-nez p3, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 161
    invoke-interface {p3, p1, p2, v1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onMediaDeviceChanged(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDeviceManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDeviceManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MediaDeviceManager state:"

    .line 147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;

    invoke-direct {v0, p2, p1, p2, p3}, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;-><init>(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p4, "key"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "data"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    monitor-enter p4

    if-eqz p2, :cond_1

    .line 113
    :try_start_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 114
    iget-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-nez p5, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    .line 117
    :cond_1
    :goto_0
    iget-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-eqz p5, :cond_2

    .line 118
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    if-nez p5, :cond_3

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    .line 120
    :goto_1
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p5

    if-nez p5, :cond_4

    const/4 p5, 0x0

    :goto_2
    move-object v4, p5

    goto :goto_3

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v0, p5}, Lcom/android/systemui/media/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object p5

    goto :goto_2

    .line 123
    :goto_3
    new-instance p5, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/systemui/media/LocalMediaManagerFactory;->create(Ljava/lang/String;)Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v5

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaDeviceManager$Entry;-><init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->start()V

    .line 130
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 139
    invoke-interface {v1, p1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onKeyRemoved(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/SmartspaceMediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onSmartspaceMediaDataLoaded(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onSmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Z)V

    return-void
.end method
