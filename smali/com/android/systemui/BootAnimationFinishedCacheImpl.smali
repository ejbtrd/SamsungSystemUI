.class public final Lcom/android/systemui/BootAnimationFinishedCacheImpl;
.super Ljava/lang/Object;
.source "BootAnimationFinishedCacheImpl.kt"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache;
.implements Lcom/android/systemui/BootAnimationFinishedTrigger;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BootAnimationFinishedCacheImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBootAnimationFinishedCacheImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BootAnimationFinishedCacheImpl.kt\ncom/android/systemui/BootAnimationFinishedCacheImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1819#2,2:163\n1819#2,2:165\n1819#2,2:167\n1819#2,2:169\n1819#2,2:171\n1819#2,2:173\n*E\n*S KotlinDebug\n*F\n+ 1 BootAnimationFinishedCacheImpl.kt\ncom/android/systemui/BootAnimationFinishedCacheImpl\n*L\n74#1,2:163\n77#1,2:165\n80#1,2:167\n149#1,2:169\n152#1,2:171\n155#1,2:173\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/BootAnimationFinishedCacheImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final directListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "directListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frontQueueListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "frontQueueListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final postlisteners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "postlisteners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->Companion:Lcom/android/systemui/BootAnimationFinishedCacheImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dumpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "BootAnimationFinishedCacheImpl"

    .line 48
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->directListeners:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->postlisteners:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->frontQueueListeners:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;I)Z

    move-result p0

    return p0
.end method

.method public addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;I)Z
    .locals 2
    .param p1    # Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V

    return v1

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {p1}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return v1

    :cond_1
    if-eq p2, v1, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->frontQueueListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->postlisteners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->directListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p1, 0x0

    .line 124
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit p0

    throw p1
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

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "BootAnimationFinishedCache state:"

    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  boot animation finished: "

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->isBootAnimationFinished()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->isBootAnimationFinished()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "  listeners:"

    .line 147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->directListeners:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    const-string v0, "    "

    .line 150
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->postlisteners:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    const-string v0, "    "

    .line 153
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->frontQueueListeners:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    const-string v0, "    "

    .line 156
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 158
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public isBootAnimationFinished()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public setBootAnimationFinished()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->directListeners:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    .line 75
    invoke-interface {v1}, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;->onBootAnimationFinished()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->postlisteners:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$2$1;-><init>(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->frontQueueListeners:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;

    .line 81
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$3$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl$setBootAnimationFinished$1$3$1;-><init>(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->directListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->postlisteners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->frontQueueListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_3
    return-void
.end method
