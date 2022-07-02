.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;
    }
.end annotation


# instance fields
.field private final mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

.field private mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

.field private mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

.field private mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

.field private mIsInCalcMemInfo:Z

.field private mLastMemoryInfoCalcTime:Ljava/lang/Long;

.field private mLastMemoryInfoLogTime:Ljava/lang/String;

.field private final mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Ugyoiu4ffhwtTEF1aXSSNyC8bgE(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->lambda$handleMemoryInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kgIWV6HfBO73riGiJbOo_cozAvE(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->lambda$handleMemoryInfo$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/dump/DumpHandler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/LogBufferFreezer;Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/BinderProxyDumpHelper;Lcom/android/systemui/HeapDumpHelper;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/SystemUIService;->mIsInCalcMemInfo:Z

    const-wide/32 v0, -0x2bf20

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    .line 93
    iput-object p2, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 94
    iput-object p3, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 95
    iput-object p4, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 96
    iput-object p5, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    .line 98
    iput-object p6, p0, Lcom/android/systemui/SystemUIService;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 100
    sget-boolean p1, Lcom/android/systemui/BasicRune;->ENHANCEMENT_DUMP_HELPER:Z

    if-eqz p1, :cond_0

    .line 101
    iput-object p7, p0, Lcom/android/systemui/SystemUIService;->mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

    .line 103
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->ENHANCEMENT_HEAP_DUMP_HELPER:Z

    if-eqz p1, :cond_1

    .line 104
    iput-object p8, p0, Lcom/android/systemui/SystemUIService;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIService;)Lcom/android/systemui/BinderProxyDumpHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mBinderProxyDumpHelper:Lcom/android/systemui/BinderProxyDumpHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->printMemoryInfo()V

    return-void
.end method

.method private handleMemoryInfo()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    invoke-interface {v0}, Lcom/android/systemui/BootCompleteCache;->isBootComplete()Z

    move-result v0

    const-string v1, "SystemUIService"

    if-nez v0, :cond_0

    const-string p0, "didn\'t receive BOOT_COMPLETED"

    .line 218
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mLastMemoryInfoLogTime:Ljava/lang/String;

    aput-object p0, v0, v2

    const-string p0, "Last Info is %s. It still remains until reset time. So skip this."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIService;->mIsInCalcMemInfo:Z

    if-eqz v0, :cond_2

    const-string p0, "Already in calculating memory info. So skip this."

    .line 230
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/SystemUIService;->mIsInCalcMemInfo:Z

    const-string v0, "Starting getMemoryInfo in MemoryInfoReporter thread."

    .line 235
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SystemUIService;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$handleMemoryInfo$0()V
    .locals 4

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->printMemoryInfo()V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/systemui/SystemUIService;->mIsInCalcMemInfo:Z

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mLastMemoryInfoLogTime:Ljava/lang/String;

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    return-void
.end method

.method private synthetic lambda$handleMemoryInfo$1()V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SystemUIService;)V

    const-string p0, "handleMemoryInfo"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private printMemoryInfo()V
    .locals 5

    const-string v0, "SystemUIService"

    const-string v1, " - Memory Information -"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 253
    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summary.java-heap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "summary.java-heap"

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summary.native-heap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "summary.native-heap"

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summary.total-pss : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "summary.total-pss"

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "summary.total-swap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "summary.total-swap"

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, " - View count -"

    .line 260
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/view/View;

    invoke-static {v3}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ENHANCEMENT_HEAP_DUMP_HELPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/systemui/HeapDumpHelper;->isLeakSuspect(Landroid/os/Debug$MemoryInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    invoke-virtual {p0}, Lcom/android/systemui/HeapDumpHelper;->dumpHeap()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 275
    array-length v0, p3

    if-nez v0, :cond_0

    const-string p3, "--dump-priority"

    const-string v0, "CRITICAL"

    .line 276
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 113
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mLogBufferFreezer:Lcom/android/systemui/dump/LogBufferFreezer;

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/LogBufferFreezer;->attach(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationForUnknownBatteryState:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mBatteryStateNotifier:Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryStateNotifier;->startListening()V

    .line 124
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "debug.crash_sysui"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 130
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;

    .line 131
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/SystemUIService$SystemUIExceptionHandler;-><init>(Lcom/android/systemui/SystemUIService;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/SystemUIService$1;)V

    .line 132
    invoke-static {v0}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 137
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 140
    sget-boolean v0, Lcom/android/systemui/BasicRune;->ENHANCEMENT_DUMP_HELPER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 141
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x170c

    const/16 v1, 0x1518

    .line 142
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 143
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;)V

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 152
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 143
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 153
    :cond_3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4

    .line 155
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountEnabled(Z)V

    const/16 v0, 0x3e8

    const/16 v1, 0x384

    .line 156
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->nSetBinderProxyCountWatermarks(II)V

    .line 157
    new-instance v0, Lcom/android/systemui/SystemUIService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIService$2;-><init>(Lcom/android/systemui/SystemUIService;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUIService;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderInternal;->setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 169
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 169
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SystemUIService"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->handleMemoryInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
