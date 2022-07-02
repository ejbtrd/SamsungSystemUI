.class public Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDScheduler;
.super Ljava/lang/Object;
.source "GEDScheduler.java"


# static fields
.field private static final GED_SCHEDULING_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/diagmonagent/log/ged/scheduler/GEDScheduler;->GED_SCHEDULING_INTERVAL:J

    return-void
.end method

.method public static isPDIntervalPassed(Landroid/content/Context;)Z
    .locals 7

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getLastPDUpdatedTime(Landroid/content/Context;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getPollingInterval(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v5, p0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
