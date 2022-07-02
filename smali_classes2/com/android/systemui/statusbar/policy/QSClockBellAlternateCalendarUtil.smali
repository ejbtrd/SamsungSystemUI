.class public Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
.super Ljava/lang/Object;
.source "QSClockBellAlternateCalendarUtil.java"


# static fields
.field private static final SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

.field private static final SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;


# instance fields
.field private final ALTERNATE_CALENDAR_SETTINGS_VALUE_LIST:[Landroid/net/Uri;

.field private mAlternateCalendarSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field protected mCachedAlternateCalendar:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-ZM9zG9CNun5WRWAUemssB_DiCQ(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aodlock_support_lunar"

    .line 23
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    const-string v0, "aodlock_support_hijri"

    .line 24
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mAlternateCalendarSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->ALTERNATE_CALENDAR_SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    .line 48
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz p1, :cond_0

    .line 49
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mAlternateCalendarSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 2

    const-string p1, "QSClockBellTower"

    const-string v0, "QSClockBellAlternateCalendarUtil receive SettingsHelper callback !"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v1, "."

    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlternateCalendar()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->updateAlternateCalendar(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    return-object p0
.end method

.method public isAlternateCalendarEnabled()Z
    .locals 1

    .line 72
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLunarCalendarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isHijriCalendarEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setUpdateNotifyNewClockTime(Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    return-void
.end method

.method public updateAlternateCalendar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "."

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIME_SET"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getAlternateCalendar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    :cond_1
    return-void
.end method
