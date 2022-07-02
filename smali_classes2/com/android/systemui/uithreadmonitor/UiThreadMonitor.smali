.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private anrCount:I

.field private final asyncRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private awakeCount:I

.field private final blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isDreaming:Z

.field private volatile isPaused:Z

.field private lastAsyncMsgHandledTimed:J

.field private lastAwakeTime:J

.field private lastStackTrace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastStackTraceTime:J

.field private final looper:Landroid/os/Looper;

.field private final looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private looperMsgLog:Z

.field private looperSlowLog:Z

.field private final mainThread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final monitorThread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "looperLogController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    .line 51
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "looper.thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    .line 69
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    .line 72
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Ljava/lang/Runnable;

    .line 73
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->callback:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;

    return-void
.end method

.method public static final synthetic access$isPaused$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    return p0
.end method

.method public static final synthetic access$pause(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->pause()V

    return-void
.end method

.method public static final synthetic access$resume(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->resume()V

    return-void
.end method

.method public static final synthetic access$run(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->run()V

    return-void
.end method

.method public static final synthetic access$sendAsyncMsg(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->sendAsyncMsg()V

    return-void
.end method

.method public static final synthetic access$setAwake(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    return-void
.end method

.method public static final synthetic access$setDreaming$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isDreaming:Z

    return-void
.end method

.method public static final synthetic access$setLastAsyncMsgHandledTimed$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    return-void
.end method

.method private final isDisabled()Z
    .locals 1

    const-string p0, "debug.sysui.anr_detector.disabled"

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "UiThreadMonitor"

    const-string v0, "UiThreadMonitor is disabled"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private final pause()V
    .locals 1

    const-string/jumbo v0, "pause"

    .line 128
    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    return-void
.end method

.method private final resume()V
    .locals 1

    const-string/jumbo v0, "resume"

    .line 134
    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    return-void
.end method

.method private final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "   "

    const-string v3, "element"

    const-string v4, " ms) ***\n"

    const-string v5, ", "

    const-string v6, "*** Traced call stack: "

    const-string v7, "UiThreadMonitor"

    const/4 v8, 0x0

    .line 167
    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    const/16 v0, 0x13

    .line 168
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 171
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->updateLooperMsgLog()V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->updateShowLooperSlowLog()V

    .line 174
    iget-boolean v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    if-eqz v9, :cond_0

    const-wide/32 v10, 0x5265c00

    goto :goto_1

    :cond_0
    const-wide/16 v10, 0x1770

    .line 177
    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v12, "run "

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 179
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v9, :cond_1

    .line 181
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->runnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0xbb8

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 v12, 0xa

    const/16 v13, 0x28

    const/4 v14, 0x1

    :try_start_0
    const-string/jumbo v0, "wait "

    .line 186
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 187
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11, v15}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_4

    if-nez v0, :cond_4

    .line 192
    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    add-int/2addr v0, v14

    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 195
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v14, v15}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    move-object/from16 v16, v9

    iget-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v13, v8

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v0, v9

    add-int/lit8 v9, v9, 0x1

    .line 201
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, v16

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move-object/from16 v13, v16

    .line 204
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_3
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    const-string/jumbo v8, "run exception: "

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_4

    .line 192
    iget v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 195
    iget-object v0, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v11, v12}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v14, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v11, v14

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_3

    aget-object v12, v0, v11

    add-int/lit8 v11, v11, 0x1

    .line 201
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 204
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 210
    :cond_4
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    .line 212
    iput-boolean v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    return-void

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-nez v9, :cond_7

    .line 192
    iget v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    .line 195
    iget-object v8, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v5, v6}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v12, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v5, v12

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v8

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_6

    aget-object v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 204
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object v2, v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    .line 204
    :cond_7
    throw v0
.end method

.method private final sendAsyncMsg()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->asyncRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final setAwake(I)V
    .locals 6

    if-nez p1, :cond_1

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 144
    iget-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isDreaming:Z

    if-nez p1, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAwake "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    sub-long v3, v0, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UiThreadMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    .line 148
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->awakeCount:I

    .line 152
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final updateLooperMsgLog()V
    .locals 3

    const-string v0, "debug.sysui.looper.msg_log"

    const/4 v1, 0x0

    .line 216
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    sget-object v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;->INSTANCE:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$updateLooperMsgLog$1;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    goto :goto_0

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looper:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperMsgLog:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateShowLooperSlowLog()V
    .locals 12

    const-string v0, "debug.sysui.looper.slow_log"

    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_0

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    if-nez v0, :cond_1

    const-string v0, "debug.sysui.looper.slow_dispatch"

    const-wide/16 v1, 0x1e

    .line 236
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "debug.sysui.looper.slow_delivery"

    .line 238
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    move-wide v10, v6

    goto :goto_1

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    if-eqz v0, :cond_1

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperSlowLog:Z

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    move-wide v10, v2

    :goto_1
    cmp-long v0, v10, v4

    if-lez v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateShowLooperSlowLog dispatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiThreadMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v6, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v7, 0x0

    move-wide v8, v10

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->enable(IJJ)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
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

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UiThreadMonitor state:\n  monitorThread state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", paused="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->anrCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n  mainThread state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\n  lastAsyncMsgHandledTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    iget-object p3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    if-nez p3, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n  lastStackTrace=[\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  ], "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {p0, p1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UiThreadMonitor"

    const-string/jumbo v1, "start"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastAwakeTime:J

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->sendAsyncMsg()V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 121
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->callback:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "init exception: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
