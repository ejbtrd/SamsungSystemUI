.class public Lcom/android/systemui/qs/tiles/UiModeNightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "UiModeNightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field public static formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mIsNeedToBlockOnClick:Z

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh:mm a"

    .line 71
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0

    .line 103
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 76
    sget p2, Lcom/android/systemui/R$drawable;->sec_st_ic_display_night_theme:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p2, 0x0

    .line 84
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    .line 105
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 106
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 107
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 109
    new-instance p1, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p9, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/UiModeNightTile;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/Object;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/app/UiModeManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/UiModeNightTile;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->getDarkModeScheduledType()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/UiModeNightTile;J)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->getStringFromMillis(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isDarkModeScheduled()Z

    move-result p0

    return p0
.end method

.method private canChangeNightMode()Z
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_theme_support_night_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private getDarkModeScheduledType()I
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const-string v1, "display_night_theme_scheduled_type"

    .line 391
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getStringFromMillis(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x5a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    long-to-int p1, p1

    .line 399
    div-int/lit8 p2, p1, 0x3c

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 400
    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isDarkModeScheduled()Z
    .locals 2

    .line 382
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isMinimalBatteryUseEnabled()Z
    .locals 2

    .line 387
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "minimal_battery_use"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private showNightModeMenuDisabledReasonToast()V
    .locals 3

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_dark_mode_disabled_by_power_saving_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_dark_mode_disabled_by_open_theme:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 417
    new-instance v2, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DARK_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClick is blocked when tile state is unavailable"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p1, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClick is blocked when dark mode is updating"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick is blocked when device does not support dark mode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, p1

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isDarkModeScheduled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    if-eqz v0, :cond_5

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_dark_mode_scheduled_toast:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz v0, :cond_4

    const/4 p1, 0x2

    :cond_4
    invoke-virtual {v1, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 165
    :cond_5
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 170
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 171
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    .line 172
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p2, v2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 176
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    const/4 v2, 0x0

    .line 177
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 178
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 179
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_dark_mode_title:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 180
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->isMinimalBatteryUseEnabled()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    .line 182
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->canChangeNightMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 184
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    .line 186
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p2, :cond_3

    goto :goto_1

    .line 187
    :cond_3
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 190
    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    if-eqz p2, :cond_5

    .line 191
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p2, :cond_5

    .line 192
    new-instance v0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;-><init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 127
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
