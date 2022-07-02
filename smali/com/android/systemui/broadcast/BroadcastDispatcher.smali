.class public Lcom/android/systemui/broadcast/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final bgExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgLooper:Landroid/os/Looper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiversByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/broadcast/UserBroadcastDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/settings/UserTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgLooper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->bgLooper:Landroid/os/Looper;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 76
    iput-object p6, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 80
    new-instance p1, Landroid/util/SparseArray;

    const/16 p3, 0x14

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 204
    new-instance p1, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    return-void
.end method

.method public static final synthetic access$getReceiversByUser$p(Lcom/android/systemui/broadcast/BroadcastDispatcher;)Landroid/util/SparseArray;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method private final checkFilter(Landroid/content/IntentFilter;)V
    .locals 4

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Filter must contain at least one action. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Filter cannot contain DataAuthorities. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Filter cannot contain DataPaths. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    .line 152
    :cond_4
    sget-object v3, Lcom/android/systemui/broadcast/BroadcastDispatcher$checkFilter$actionCount$1;->INSTANCE:Lcom/android/systemui/broadcast/BroadcastDispatcher$checkFilter$actionCount$1;

    invoke-static {v1, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_6

    goto :goto_2

    .line 153
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "Filter cannot contain DataSchemes without android.intent.action.PACKAGE_* action"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_2
    const-string v1, "package"

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    :cond_8
    const-string v0, "Filter needs only \"package\" data scheme"

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Filter cannot contain DataTypes. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_a
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Filter cannot modify priority. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 126
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerReceiver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 102
    iget-object p4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {p4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p4

    const-string p5, "fun registerReceiverWithHandler(\n        receiver: BroadcastReceiver,\n        filter: IntentFilter,\n        handler: Handler,\n        user: UserHandle = context.user\n    ) {\n        registerReceiver(receiver, filter, HandlerExecutor(handler), user)\n    }"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerReceiverWithHandler"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected createUBRForUser(I)Lcom/android/systemui/broadcast/UserBroadcastDispatcher;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 191
    new-instance v6, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->bgLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->bgExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;-><init>(Landroid/content/Context;ILandroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
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

    const-string v0, "Broadcast dispatcher:"

    .line 194
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 197
    iget-object p2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 198
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "User "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    if-lt v2, p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 201
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final initialize()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javaClass.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public final registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 8
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V
    .locals 3
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/UserHandle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->checkFilter(Landroid/content/IntentFilter;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    .line 134
    new-instance v1, Lcom/android/systemui/broadcast/ReceiverData;

    if-nez p3, :cond_0

    .line 137
    iget-object p3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    :cond_0
    const-string v2, "executor ?: context.mainExecutor"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p4

    :cond_1
    const-string/jumbo p0, "user ?: context.user"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/systemui/broadcast/ReceiverData;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V
    .locals 8
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/UserHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method