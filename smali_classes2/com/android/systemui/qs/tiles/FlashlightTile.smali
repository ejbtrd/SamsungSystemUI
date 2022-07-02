.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "FlashlightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;"
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field private final mFeatureEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mFlashlightTilePref:Landroid/content/SharedPreferences;

.field private mFlashlightTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mIsLowBattery:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 129
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 86
    sget p1, Lcom/android/systemui/R$drawable;->quick_panel_icon_flashlight:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 90
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget p2, Lcom/android/systemui/R$drawable;->quick_panel_icon_flashlight_on:I

    sget p3, Lcom/android/systemui/R$drawable;->quick_panel_icon_flashlight_on_010:I

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 93
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    sget p2, Lcom/android/systemui/R$drawable;->quick_panel_icon_flashlight_off:I

    sget p3, Lcom/android/systemui/R$drawable;->quick_panel_icon_flashlight_off_010:I

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    .line 357
    new-instance p2, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance p3, Lcom/android/systemui/qs/tiles/FlashlightTile$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$2;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 131
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 136
    invoke-interface {p9, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 137
    new-instance p3, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/qs/tiles/FlashlightTile$1;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    .line 138
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 139
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 140
    invoke-interface {p9}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature()V

    .line 144
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "android.intent.action.ACTION_SHUTDOWN"

    .line 145
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.BATTERY_CHANGED"

    .line 146
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    .line 147
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p11, p2, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 159
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "quick_pref"

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightTilePref:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {p9}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getFlashlightLevel()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string p3, "QPDS1014"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/util/HashMap;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/FlashlightTile;Ljava/lang/CharSequence;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method private addFeature()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "flashlight_sos_enabled"

    .line 625
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature(Ljava/lang/String;)V

    return-void
.end method

.method private addFeature(Ljava/lang/String;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isFlashLightSOSEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private showWarningMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateFlashlightNotification(Z)V
    .locals 9

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    :cond_0
    const/16 v0, 0x1234

    const-string v1, "Flashlight"

    if-eqz p1, :cond_2

    .line 435
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyNotification!!!"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotification due to Emergency Mode!!!"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    .line 442
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    .line 443
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    invoke-static {v2, v4, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 446
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->flash_light_notification_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    sget v5, Lcom/android/systemui/R$drawable;->stat_notify_assistivelight:I

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 450
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 451
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v7, 0x0

    .line 452
    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 453
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->flash_light_notification_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 456
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotification!!!"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77

    return p0
.end method

.method public getSearchWords()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$array;->quick_settings_flashlight_proper_noun_search_keywords:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 344
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 345
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 260
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->sec_quick_settings_flashlight_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isCameraManagerReady()Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "CameraManager is not ready"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateTorchCallback()V

    .line 233
    :cond_0
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isFlashlightTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->flash_light_disabled_by_low_battery:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void

    .line 250
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p1, p1, 0x1

    .line 254
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void

    .line 238
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isThermalRestricted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 239
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->unable_to_turn_on_by_high_temperature:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 241
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->unable_to_turn_on_being_used_by_camera:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 408
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isThermalRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->unable_to_turn_on_by_high_temperature:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->unable_to_turn_on_being_used_by_camera:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/systemui/R$string;->sec_quick_settings_flashlight_label:I

    .line 412
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 411
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    .line 415
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->flash_light_disabled_by_low_battery:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    if-eqz v0, :cond_3

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->tryInitCamera()V

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 282
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 283
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 284
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_0

    return-void

    .line 287
    :cond_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    .line 289
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 291
    :goto_0
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 298
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$string;->sec_quick_settings_flashlight_label:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 299
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 304
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 305
    :goto_2
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature()V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->hasFlashlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 196
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    :cond_0
    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 1

    .line 317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 322
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V

    :cond_0
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    :cond_0
    return-void
.end method
