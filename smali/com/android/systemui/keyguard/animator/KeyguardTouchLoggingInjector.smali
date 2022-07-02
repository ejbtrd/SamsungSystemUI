.class public Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;
.super Ljava/lang/Object;
.source "KeyguardTouchLoggingInjector.java"


# instance fields
.field private mFullscreenModeStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->mFullscreenModeStartTime:J

    return-void
.end method

.method private endFullscreenMode()V
    .locals 4

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->mFullscreenModeStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const-string p0, "2"

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const-string p0, "3"

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1b58

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    const-string p0, "4"

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    const-string p0, "5"

    goto :goto_0

    :cond_4
    if-ltz p0, :cond_5

    const-string p0, "6"

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 74
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1011"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onDumpableLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onFullscreenModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->mFullscreenModeStartTime:J

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->endFullscreenMode()V

    :goto_0
    return-void
.end method

.method onUnlockExecuted()V
    .locals 0

    .line 44
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    return-void
.end method
