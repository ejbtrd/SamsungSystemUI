.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
.super Ljava/lang/Object;
.source "LooperSlowLogController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;,
        Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cancelRunnable:[Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final choreographer:Landroid/view/Choreographer;

.field private final choreographerCallStackCnt$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curSlowDeliveryMs:J

.field private curSlowDispatchMs:J

.field private final debugCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpBuf$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final execRunnable:[Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainLooper:Landroid/os/Looper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final types:[[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->Companion:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mainLooper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->mainLooper:Landroid/os/Looper;

    const/16 p1, 0x8

    new-array p2, p1, [[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 32
    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->types:[[J

    new-array p2, p1, [Ljava/lang/Runnable;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->cancelRunnable:[Ljava/lang/Runnable;

    new-array p1, p1, [Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->execRunnable:[Ljava/lang/Runnable;

    .line 37
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographer:Landroid/view/Choreographer;

    .line 38
    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$debugCallback$1;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->debugCallback:Ljava/util/function/BiConsumer;

    .line 41
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$dumpBuf$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->dumpBuf$delegate:Lkotlin/Lazy;

    .line 42
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerCallStackCnt$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerCallStackCnt$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    .line 43
    sget-object p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;->INSTANCE:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$choreographerSlowDispatchMs$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    .line 46
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz p1, :cond_1

    const-string p1, "LooperSlowLogController"

    .line 48
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNsDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$appendBuffer(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->appendBuffer(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateSlowDispatchOnChoreographer(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->updateSlowDispatchOnChoreographer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final appendBuffer(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getDumpBuf()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getDumpBuf()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getDumpBuf()Lkotlin/collections/ArrayDeque;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getChoreographerCallStackCnt()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographerCallStackCnt$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getChoreographerSlowDispatchMs()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographerSlowDispatchMs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic getCurSlowDeliveryMs$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurSlowDispatchMs$annotations()V
    .locals 0

    return-void
.end method

.method private final getDumpBuf()Lkotlin/collections/ArrayDeque;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->dumpBuf$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method private final getTypeRunnable(I)Ljava/lang/Runnable;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->execRunnable:[Ljava/lang/Runnable;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$TypeRunnable;-><init>(ILcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V

    aput-object v1, v0, p1

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->execRunnable:[Ljava/lang/Runnable;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final update()V
    .locals 11

    .line 124
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->types:[[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-ge v4, v1, :cond_3

    aget-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 125
    aget-wide v9, v8, v2

    cmp-long v9, v9, v5

    if-gtz v9, :cond_1

    aget-wide v9, v8, v7

    cmp-long v5, v9, v5

    if-lez v5, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    const/4 v5, 0x2

    .line 126
    aget-wide v6, v3, v5

    aget-wide v9, v8, v5

    cmp-long v5, v6, v9

    if-gez v5, :cond_0

    :cond_2
    move-object v3, v8

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    move-wide v0, v5

    goto :goto_1

    .line 131
    :cond_4
    aget-wide v0, v3, v2

    :goto_1
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDispatchMs:J

    if-nez v3, :cond_5

    move-wide v0, v5

    goto :goto_2

    .line 132
    :cond_5
    aget-wide v0, v3, v7

    :goto_2
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDeliveryMs:J

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDispatchMs:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDeliveryMs:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    move v1, v7

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LooperSlow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->mainLooper:Landroid/os/Looper;

    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDispatchMs:J

    iget-wide v8, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDeliveryMs:J

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->choreographer:Landroid/view/Choreographer;

    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDispatchMs:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    move v2, v7

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->debugCallback:Ljava/util/function/BiConsumer;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getChoreographerCallStackCnt()I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getChoreographerSlowDispatchMs()I

    move-result p0

    .line 138
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/view/Choreographer;->setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V

    return-void
.end method

.method private final updateSlowDispatchOnChoreographer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "LooperSlow"

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v7, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final disable(I)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->types:[[J

    aget-object v2, v1, p1

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 109
    aget-object v0, v1, p1

    const/4 v2, 0x1

    aput-wide v3, v0, v2

    .line 110
    aget-object v0, v1, p1

    const/4 v1, 0x2

    aput-wide v3, v0, v1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->cancelRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->cancelRunnable:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->update()V

    .line 116
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    return v0
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

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getDumpBuf()Lkotlin/collections/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final enable(IJJ)Z
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 62
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->enable(IJJJ)Z

    move-result p0

    return p0
.end method

.method public final enable(IJJJ)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_6

    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_1

    cmp-long v4, p4, v1

    if-gtz v4, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->disable(I)Z

    return v0

    .line 76
    :cond_1
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->types:[[J

    aget-object v5, v4, p1

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p2, v1

    .line 78
    :goto_0
    aput-wide p2, v5, v0

    .line 79
    aget-object p2, v4, p1

    cmp-long p3, p4, v1

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    move-wide p4, v1

    :goto_1
    const/4 p3, 0x1

    .line 80
    aput-wide p4, p2, p3

    .line 81
    aget-object p2, v4, p1

    const/4 p4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    aput-wide v3, p2, p4

    .line 82
    iget-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->cancelRunnable:[Ljava/lang/Runnable;

    aget-object p2, p2, p1

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->cancelRunnable:[Ljava/lang/Runnable;

    const/4 p4, 0x0

    aput-object p4, p2, p1

    cmp-long p4, p6, v1

    if-lez p4, :cond_5

    .line 87
    iget-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->getTypeRunnable(I)Ljava/lang/Runnable;

    move-result-object p5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    invoke-interface {p4, p5, p6, p7, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p4

    aput-object p4, p2, p1

    .line 91
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->update()V

    .line 92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_3
    return v0
.end method

.method public final isEnabled()Z
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDispatchMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->curSlowDeliveryMs:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
