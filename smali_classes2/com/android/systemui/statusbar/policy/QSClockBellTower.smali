.class public Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;,
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;,
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

.field private mAudienceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mContext:Landroid/content/Context;

.field private final mCurrentDate:Ljava/util/Date;

.field private final mCurrentShortenDate:Ljava/util/Date;

.field private mDateStringFormat:Ljava/lang/String;

.field private mDateStringPattern:Ljava/lang/String;

.field public mDemoMode:Z

.field private mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field private mHandler:Landroid/os/Handler;

.field private mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field private mLocale:Ljava/util/Locale;

.field private mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShortenDateStringFormat:Ljava/lang/String;

.field private mShortenDateStringPattern:Ljava/lang/String;

.field private mSlimIndicatorSubscriber:Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;

.field protected mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

.field private mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$10g5TLUuBlal5S8L_DZxq8BDuGQ(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$HIbsTKknlkRuVVNgBD8br6aRpkw(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->lambda$onDemoModeFinished$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eq8vEBqEHiuCL7Wysec0a1rHmhQ(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->lambda$dispatchDemoCommand$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 164
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    .line 174
    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    .line 120
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeBroadcastReceiver:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->register()V

    .line 126
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    .line 130
    :cond_0
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 133
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->setUpdateNotifyNewClockTime(Ljava/lang/Runnable;)V

    .line 138
    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mSlimIndicatorSubscriber:Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->updateQSClockBellSound()Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Constructor ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSClockBellTower"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Locale;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->putLastTimeZoneChangeLog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$dispatchDemoCommand$1()V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->putFirstTimeZoneChangeLog()V

    return-void
.end method

.method private synthetic lambda$onDemoModeFinished$2()V
    .locals 0

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void
.end method

.method private putFirstTimeZoneChangeLog()V
    .locals 4

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "First TimeZoneChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Calendar.getTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Calendar.getTimeZone():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FIRST TIME BELL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private putLastTimeZoneChangeLog(Ljava/lang/String;)V
    .locals 4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putLastTimeZoneChangeLog("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Last TimeZoneChange"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (currentTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Calendar.getTime():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Calendar.getTimeZone():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    if-eqz p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LAST TIME BELL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private ringBellOfTower(Z)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->updateQSClockBellSound(Z)Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "He is ready to ring the bell. ((("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;

    .line 274
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateQSClockBellSound()Lcom/android/systemui/statusbar/policy/QSClockBellSound;
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->updateQSClockBellSound(Z)Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    move-result-object p0

    return-object p0
.end method

.method private updateQSClockBellSound(Z)Lcom/android/systemui/statusbar/policy/QSClockBellSound;
    .locals 7

    .line 291
    new-instance v6, Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getShortenDateViewText()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    return-object v6
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo p1, "millis"

    .line 389
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hhmm"

    .line 390
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 392
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 393
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 394
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 395
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->is24Format(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 401
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 403
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 422
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 424
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    const-string v0, "   "

    if-eqz p3, :cond_0

    .line 425
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 428
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p0, "    mAudienceList("

    .line 430
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 432
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 434
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, ")\n"

    .line 437
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getAlternateCalendar()Ljava/lang/String;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->getAlternateCalendar()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method protected getDateViewText()Ljava/lang/String;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->system_ui_quick_panel_date_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    .line 345
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    const-string p0, ""

    return-object p0

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->isAlternateCalendarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getAlternateCalendar()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQSClockBellSound()Lcom/android/systemui/statusbar/policy/QSClockBellSound;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    return-object p0
.end method

.method protected getShortenDateViewText()Ljava/lang/String;
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_panel_shorten_date_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    .line 373
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    const-string p0, ""

    return-object p0

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmallTime()Ljava/lang/String;
    .locals 7

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    const-string p0, "12:34"

    return-object p0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->is24Format(Landroid/content/Context;)Z

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    const-string v2, "Hm"

    const-string v3, "hm"

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 308
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmallTime recalculate time format (mClockFormatString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", format:+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QSClockBellTower"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    .line 310
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 318
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xef00

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const v1, 0xef01

    .line 320
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v0, :cond_7

    if-le v1, v0, :cond_7

    .line 322
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    .line 323
    invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x0

    .line 324
    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, p0

    .line 327
    :goto_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-le v1, v0, :cond_5

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 330
    :cond_5
    invoke-virtual {v2, p0, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 332
    :cond_6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public onDemoModeFinished()V
    .locals 2

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDemoModeStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    return-void
.end method

.method public registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getQSClockBellSound()Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    return-void
.end method

.method public ringBellOfTower()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
