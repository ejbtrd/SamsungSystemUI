.class public Lcom/android/systemui/pluginlock/PluginLockUtils;
.super Ljava/lang/Object;
.source "PluginLockUtils.java"


# instance fields
.field private final mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

.field private final mExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$ZZ8jI8xZYMi_B5rMNW6hGukgbdY(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->lambda$addDump$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/utils/DumpUtils;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic lambda$addDump$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->addEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addDump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDump()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDumpLegacy()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDumpLegacy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDesktopMode(Landroid/content/Context;)Z
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isLockScreenEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
