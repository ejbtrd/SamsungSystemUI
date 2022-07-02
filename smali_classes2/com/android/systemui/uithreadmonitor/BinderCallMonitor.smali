.class public Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;
.super Ljava/lang/Object;
.source "BinderCallMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;,
        Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;
    }
.end annotation


# static fields
.field public static final MAX_BUF_COUNT:I

.field private static final MAX_DURATION:J

.field public static final STRICT_MODE_ENABLED:Z

.field private static sIsTraceBinderCall:Z = false

.field private static sTraceBinderCallCount:I


# instance fields
.field private mDuration:J

.field private final mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

.field private final mMonitorInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "persist.sysui.ipc_monitor.enabled"

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "persist.sysui.strictmode"

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->STRICT_MODE_ENABLED:Z

    const/16 v0, 0x1e

    const-string v2, "debug.sysui.ipc_monitor.dur"

    .line 51
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_DURATION:J

    const/16 v0, 0x32

    const-string v2, "debug.sysui.ipc_monitor.max"

    .line 52
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2

    move v1, v0

    .line 53
    :cond_2
    sput v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_BUF_COUNT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/SamsungServiceLogger;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    const-wide/16 v0, 0x1

    .line 58
    iput-wide v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mDuration:J

    .line 63
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->sIsTraceBinderCall:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->updateMonitorInfo()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 26
    sget v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->sTraceBinderCallCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->sTraceBinderCallCount:I

    return v0
.end method

.method static synthetic access$500(IILjava/lang/String;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->getCallers(IILjava/lang/String;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)Lcom/android/systemui/log/SamsungServiceLogger;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    return-object p0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p1, p1, 0x4

    .line 87
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    aget-object p0, p0, p1

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCallers(IILjava/lang/String;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;)Ljava/lang/String;
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, p0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 72
    invoke-static {v0, v3}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, p0, :cond_1

    move-object v2, v4

    .line 79
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$Item;->stackTrace:Ljava/lang/String;

    return-object v2
.end method

.method private updateMonitorInfo()I
    .locals 12

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    sget-wide v2, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_DURATION:J

    .line 210
    iget-object v4, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    monitor-enter v4

    .line 211
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_2

    .line 212
    iget-object v9, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;

    .line 213
    iget-boolean v10, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->enabled:Z

    if-eqz v10, :cond_0

    iget-boolean v10, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->infinite:Z

    if-nez v10, :cond_0

    iget-wide v10, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->timeOut:J

    cmp-long v10, v10, v0

    if-gtz v10, :cond_0

    .line 214
    iput-boolean v6, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->enabled:Z

    .line 216
    :cond_0
    iget-boolean v10, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->enabled:Z

    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 219
    iget-wide v9, v9, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->duration:J

    cmp-long v11, v9, v2

    if-gez v11, :cond_1

    move-wide v2, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 224
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iput-wide v2, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mDuration:J

    return v8

    :catchall_0
    move-exception p0

    .line 224
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 107
    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_DURATION:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_BUF_COUNT:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BinderCallMonitor"

    const-string/jumbo v1, "start"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;-><init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)V

    invoke-static {v0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startMonitoring(I)Z
    .locals 10

    .line 153
    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_DURATION:J

    const-wide/32 v2, 0xf4240

    div-long v6, v0, v2

    const-wide/16 v8, 0x1f40

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(IJJ)Z

    move-result p0

    return p0
.end method

.method public startMonitoring(IJ)Z
    .locals 10

    .line 158
    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->MAX_DURATION:J

    const-wide/32 v2, 0xf4240

    div-long v6, v0, v2

    move-object v4, p0

    move v5, p1

    move-wide v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(IJJ)Z

    move-result p0

    return p0
.end method

.method public startMonitoring(IJJ)Z
    .locals 4

    if-ltz p1, :cond_3

    const/4 v0, 0x6

    if-ge p1, v0, :cond_3

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0xbb8

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x1f40

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;-><init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$1;)V

    :cond_1
    const-wide/32 v2, 0xf4240

    mul-long/2addr p2, v2

    .line 178
    iput-wide p2, v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->duration:J

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 180
    iput-boolean p2, v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->infinite:Z

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p4

    iput-wide v2, v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->timeOut:J

    .line 184
    :goto_0
    iput-boolean p2, v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor$MonitorInfo;->enabled:Z

    .line 185
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    const-string p0, "BinderCallMonitor"

    const-string/jumbo p1, "not monitoring started"

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
