.class public Lcom/android/systemui/util/QsStatusEventLog;
.super Ljava/lang/Object;
.source "QsStatusEventLog.java"


# static fields
.field private static final SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public static synthetic $r8$lambda$YK3ezhphiS7-5OGJjmcKVDJVo7Q(Lcom/android/systemui/util/QsStatusEventLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/QsStatusEventLog;->lambda$startTimer$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cUnZnvYMulc_sJBqh88UffcYisY(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/QsStatusEventLog;->lambda$sendStatusEventLog$1(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x240c8400

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 34
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/util/QsStatusEventLog;->startTimer()V

    return-void
.end method

.method private checkWeeklyStatus()V
    .locals 6

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    const-string v3, "QsStatusEventLog_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "big_data_weekly_time_stored_in_milliseconds"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/QsStatusEventLog;->updateTime(J)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v4, Lcom/android/systemui/util/QsStatusEventLog;->SA_SEVEN_DAYS_IN_MILLISECONDS:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "QsStatusEventLog"

    const-string v3, " time difference greater than seven days. Send Weekly status logs."

    .line 51
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/QsStatusEventLog;->updateTime(J)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/util/QsStatusEventLog;->sendStatusEventLog()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendStatusEventLog$1(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPBSE1001"

    const-string v1, "active"

    .line 69
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startTimer$0()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/util/QsStatusEventLog;->checkWeeklyStatus()V

    return-void
.end method

.method private sendStatusEventLog()V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    .line 67
    iget-object v4, p0, Lcom/android/systemui/util/QsStatusEventLog;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v1}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Ljava/lang/String;)V

    mul-int/lit8 v3, v2, 0x64

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTime(J)V
    .locals 2

    .line 58
    iget-object p0, p0, Lcom/android/systemui/util/QsStatusEventLog;->mContext:Landroid/content/Context;

    const-string v0, "QsStatusEventLog_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "big_data_weekly_time_stored_in_milliseconds"

    .line 59
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public startTimer()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/QsStatusEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/QsStatusEventLog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "WeeklySALogging"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
