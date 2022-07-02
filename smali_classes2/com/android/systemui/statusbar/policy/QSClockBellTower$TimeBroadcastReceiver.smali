.class final Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSClockBellTower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeBroadcastReceiver"
.end annotation


# instance fields
.field private mTimeZoneString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method public static synthetic $r8$lambda$EIKsWRiA4jGbpTLM_CRqVmvbC_M(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lo4Qg4-SsFHDJxpvoP3C5OohzOY(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->lambda$onReceive$1()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->updateTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->resetClockFormatLocale()V

    return-void
.end method

.method private resetClockFormatLocale()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$1000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$1100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$1102(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Locale;)Ljava/util/Locale;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$1202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateTimeZone(Ljava/lang/String;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimeZone() getTimeZone(newTimezone):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", getTimeZone(getDefault()):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSClockBellTower"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 181
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p1

    const-string v0, "QSClockBellTower"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive() mHandler is null"

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") mTimeZoneString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 187
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "time-zone"

    .line 188
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quickpanel Indicator Clock TimeZone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->mTimeZoneString:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 194
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_3
    :goto_0
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz p2, :cond_4

    .line 197
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->updateAlternateCalendar(Ljava/lang/String;)V

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register()V
    .locals 7

    .line 206
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    .line 208
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 210
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 212
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz v3, :cond_0

    const-string v3, "android.intent.action.DATE_CHANGED"

    .line 214
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 217
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 216
    invoke-virtual {v3, p0, v1, v5, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 224
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 223
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    return-void
.end method
