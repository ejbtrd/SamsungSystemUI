.class public Lcom/android/systemui/qs/tiles/SoundModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

.field private static final SOUNDMODE_SETTINGS:Landroid/content/Intent;

.field static final SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

.field public static final SOUND_MODE_TEXT:[I


# instance fields
.field final SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

.field private mListening:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSound:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private mSoundModeTilePref:Landroid/content/SharedPreferences;

.field private mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field private final mSoundMute:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mSoundVibrate:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;


# direct methods
.method public static synthetic $r8$lambda$tE-Ee2lrtfRAo9ZBx-XwZ5Y63eo(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->lambda$handleUpdateState$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->DEBUG:Z

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 98
    sget v1, Lcom/android/systemui/R$string;->quick_settings_sound_mode_mute_label:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->quick_settings_sound_mode_vibrate_label:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->quick_settings_sound_mode_sound_label:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    const-string v0, "2"

    const-string v1, "0"

    const-string v2, "1"

    .line 117
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 147
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 104
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound:I

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_011:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSound:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 106
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_vibrate:I

    sget v3, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_vibrate_015:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundVibrate:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 108
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v3, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_mute:I

    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_mute_008:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundMute:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 111
    iput-object v3, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 119
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$1;)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    .line 150
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 153
    iget-object v0, v9, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "quick_pref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Intent;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SoundModeTile;IZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->setSoundProfile(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$handleUpdateState$0()V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->access$600(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    return-void
.end method

.method private setSoundProfile(IZ)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSoundProfile(soundProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", detailSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-class p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->setRingerModeInternal(I)V

    return-void
.end method

.method private updateNextProfile(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method protected composeChangeAnnouncement(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 1

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
    .locals 0

    .line 454
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 273
    sget-object p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138a

    return p0
.end method

.method public getSearchTitle()Ljava/lang/String;
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchWords()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 332
    :goto_0
    sget-object v2, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTileMapValue(Z)I
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result p0

    if-eqz p1, :cond_0

    .line 309
    sget-object p1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 3

    .line 200
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 204
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x1040449

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->updateNextProfile(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->setSoundProfile(IZ)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 240
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x1040449

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick(Landroid/view/View;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    .line 181
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 182
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 184
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p2

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 287
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 288
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 289
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    aget-object p2, v1, p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 290
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_desc_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 292
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 294
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->isDetailViewAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTile$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isSystemSettingAllSoundOff()Z
    .locals 2

    .line 316
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "all_sound_off"

    const/4 v1, 0x0

    .line 316
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 167
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public sendTileStatusLog()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mute"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "vibrate"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "sound"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method
