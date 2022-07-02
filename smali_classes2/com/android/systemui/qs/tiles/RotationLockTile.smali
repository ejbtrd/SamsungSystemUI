.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private final mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mResources:Landroid/content/res/Resources;

.field private mRotationLockTilePref:Landroid/content/SharedPreferences;

.field private mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mRotationLocked:Z

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 12

    move-object v9, p0

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 144
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 83
    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_autorotate:I

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_auto_to_portrait:I

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_auto_to_portrait_010:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_portrait_to_auto:I

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_portrait_to_auto_010:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 91
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_auto_to_landscape:I

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_auto_to_landscape_010:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 94
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_landscape_to_auto:I

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_rotation_lock_landscape_to_auto_010:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "accelerometer_rotation"

    .line 115
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsValueList:[Landroid/net/Uri;

    .line 118
    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 371
    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 146
    iput-object v11, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 147
    invoke-interface {v11, p0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-object v10, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p4

    .line 149
    iput-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mResources:Landroid/content/res/Resources;

    .line 152
    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$1;)V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    move-object/from16 v1, p12

    .line 156
    iput-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 159
    iget-object v1, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v10, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 163
    iget-object v0, v9, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "quick_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v1

    const-string v2, "QPDS1009"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v1

    const-string v2, "QPDS1010"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    const-string v2, "QPDS1011"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result v1

    const-string v2, "QPDS1012"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v0, v9, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isWallpaperRotatable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z
    .locals 3

    .line 313
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_1

    .line 316
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private isScreenRotationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isWallpaperRotatable()Z
    .locals 2

    .line 658
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 659
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isRotateMenuHide()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 662
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isRotateMenuHide()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showToast()V
    .locals 2

    .line 340
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_quick_settings_can_use_auto_rotate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 307
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b

    return p0
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

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_unlocked_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_locked_portrait_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_locked_landscape_label:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 2

    .line 198
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isScreenRotationSupported()Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->showToast()V

    return-void

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_2

    return-void

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 241
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isScreenRotationSupported()Z

    move-result p1

    if-nez p1, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->showToast()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    .line 258
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    .line 259
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z

    move-result v1

    .line 265
    sget v2, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_unlocked_label:I

    if-eqz p2, :cond_2

    if-eqz v1, :cond_0

    .line 267
    sget v3, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_locked_portrait_label:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/systemui/R$string;->sec_quick_settings_rotation_locked_landscape_label:I

    :goto_0
    if-eqz v1, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_1
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_2
    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move v3, v2

    .line 272
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isScreenRotationSupported()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x0

    .line 276
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_4

    .line 278
    :cond_4
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    :cond_5
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 282
    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/android/systemui/R$string;->accessibility_desc_on:I

    goto :goto_5

    :cond_6
    sget v4, Lcom/android/systemui/R$string;->accessibility_desc_off:I

    :goto_5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_8

    .line 287
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    sget v5, Lcom/android/systemui/R$string;->sec_accessibility_rotation_set_portrait:I

    goto :goto_6

    :cond_7
    sget v5, Lcom/android/systemui/R$string;->sec_accessibility_rotation_set_landscape:I

    :goto_6
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 293
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    .line 294
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " handleUpdateState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " orientation = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 179
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public sendTileStatusLog()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v0, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapValue(Z)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v1, "On"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v1, "portrait"

    goto :goto_0

    :cond_1
    const-string v1, "landscape"

    .line 227
    :goto_0
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method
