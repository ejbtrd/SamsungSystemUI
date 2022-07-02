.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;,
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
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
.field private static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$m1-sbPHaW7NAgWvZDeH5ibhjh4o()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->lambda$handleSecondaryClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$y5DsJE7k5dJaWjXRzJRLg956Dfc(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->lambda$handleClick$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 184
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 126
    sget p1, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 128
    sget p1, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifihotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 133
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 140
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "com.android.settings"

    const-string p5, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-direct {p3, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    .line 186
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 187
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 188
    invoke-interface {p9, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {p10, p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 192
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 193
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 194
    iput-object p7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 196
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 197
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 198
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, " HotspotTile  : "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100()Ljava/lang/Object;
    .locals 1

    .line 122
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->launchWifiApWarning()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 122
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private checkWhetherWifiApWarningNeedToLaunch()Z
    .locals 7

    .line 739
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 742
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, " checkWhetherWifiApWarningNeedToLaunch mSemWifiManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDualAPConfiguration()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_2

    .line 746
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "DualAP with Wi-Fi Enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 749
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSmartViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 750
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "smartView Enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 753
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWirelessDexEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "WirelessDex Enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 758
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isNanEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 759
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "NAN Enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 763
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 764
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "P2p Enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    if-eq v0, v5, :cond_8

    .line 769
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 770
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "WifiSharingLite model"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 773
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 774
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Wifi is not disabled and wifisharing is not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 778
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 779
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0xa

    const-string/jumbo v6, "wifi_ap_wifi_sharing"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 780
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 781
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 782
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Wi-Fi Sharing First dialog"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_a
    return v2
.end method

.method private getIcon()I
    .locals 0

    .line 400
    invoke-static {}, Lcom/android/systemui/CvOperator;->getHotspotTileIcon()I

    move-result p0

    return p0
.end method

.method private getSecondaryLabel(ZZZI)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 649
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private isAirplaneModeEnabled()Z
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_toast_disable_airplne_mode:I

    invoke-static {p0, v0, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    return v2
.end method

.method private isBlockedByEASPolicy()Z
    .locals 1

    .line 834
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBlockedByOthers()Z
    .locals 5

    .line 842
    sget-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.sys.tether_data_wifi"

    const/4 v2, -0x1

    .line 844
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 845
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBlockedByOthers : SPRINT_EXTENSION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method private isDataSaverEnabled()Z
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDualAPConfiguration()Z
    .locals 1

    .line 735
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNanEnabled()Z
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifiaware"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/aware/WifiAwareManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 615
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->semIsEnabled()Z

    move-result p0

    return p0
.end method

.method private isOperatorRequiresProvisioning()Z
    .locals 3

    .line 1216
    sget-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vendor.wifiap.provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Skip isProvisioningCheck"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1220
    :cond_0
    sget-object v0, Lcom/android/systemui/CvRune;->TETHERING_PROVISION_APP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1221
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "provisioning app is not set in CSCfeature"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, ","

    .line 1225
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1226
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "Calling UTP apk"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isP2pConnected()Z
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 675
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->semIsWifiP2pConnected()Z

    move-result v0

    .line 676
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isP2PConnected = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSimCheck()Z
    .locals 1

    const-string/jumbo p0, "vendor.wifiap.simcheck.disable"

    .line 1209
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 1210
    sget-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSmartViewEnabled()Z
    .locals 5

    .line 694
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 695
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 696
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v1

    .line 697
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartViewEnabled:p2pstatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 700
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isSmartViewEnabled:true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 703
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isSmartViewEnabled:false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isWifiApBlocked()Z
    .locals 7

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 816
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 817
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isWifiTetheringEnabled"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 821
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiTetheringEnabled"

    .line 822
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 827
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    .line 727
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private isWirelessDexEnabled()Z
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 683
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 686
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isWirelessDexEnabled:true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 689
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isWirelessDexEnabled:false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleClick$0(Landroid/view/View;)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$handleSecondaryClick$1()V
    .locals 0

    return-void
.end method

.method private launchWifiApWarning()V
    .locals 3

    .line 711
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 714
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    const/4 v2, 0x5

    .line 716
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    .line 718
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 719
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "launchWifiApWarning start for USA or SBM"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHotspotEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 790
    invoke-static {}, Lcom/android/systemui/CvOperator;->ignoreFirstPopup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkWhetherWifiApWarningNeedToLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isOperatorRequiresProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "enable hotspot for USA or SBM"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->launchWifiApWarning()V

    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotspotEnabled -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 798
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 801
    :cond_2
    sget-object v0, Lcom/android/systemui/CvRune;->HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->wifi_ap_warn_toast_lgt:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 805
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 806
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method private showDataSaverToast()V
    .locals 2

    .line 858
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->supportSmartManagerForChina()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 859
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040761

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 861
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 863
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040760

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 865
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private showNoSIMDialog()V
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 622
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title:I

    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    move-result v0

    .line 623
    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message:I

    invoke-static {v1}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    move-result v1

    .line 625
    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 626
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->ok:I

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 642
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private supportSmartManagerForChina()Z
    .locals 2

    .line 661
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    .line 663
    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "trafficmanager"

    .line 665
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkWhetherWifiApWarningNeedToLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "WifiApWarningNeedToLaunch"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 213
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HotspotTile  getDetailAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 228
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/CvOperator;->isNoSimDialogNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-object v2

    .line 233
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 234
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUserWifiHotspotRestricted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v2

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-object v2

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 250
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v2

    .line 253
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object p0

    .line 236
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 393
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label:I

    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, " handleClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 271
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, " handleClick SemWifiManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "Checking WifiAp State"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    if-nez v0, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    .line 278
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "return , wifiapstate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 281
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "return, wifiapstate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-void

    .line 292
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    .line 297
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 298
    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 300
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 301
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    .line 305
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, " handleClick  : isWifiApBlocked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 311
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, " handleClick  : isBlockedByOthers"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 315
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 316
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 317
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 324
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSecure() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 325
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canSkipBouncer() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 326
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLockFunctionsEnabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 327
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    goto :goto_0

    .line 330
    :cond_a
    sget-object p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotspotEnabled() is called in handleClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, v0, 0x1

    .line 332
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void

    .line 302
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 222
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleSecondaryClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/systemui/CvOperator;->isNoSimDialogNeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 358
    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 359
    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUserWifiHotspotRestricted()Z

    move-result p1

    if-nez p1, :cond_6

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 362
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 366
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 371
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 372
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 373
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 374
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 375
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 376
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void

    .line 363
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    .line 406
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "no_config_tethering"

    .line 410
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 411
    instance-of v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v3, :cond_1

    .line 412
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 413
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 414
    iget v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 415
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    goto :goto_1

    .line 417
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 418
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v3

    .line 419
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p2

    .line 421
    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 423
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 424
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :goto_3
    if-nez v0, :cond_6

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 428
    :cond_4
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    :cond_5
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_5

    .line 426
    :cond_6
    :goto_4
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 431
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getIcon()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 432
    invoke-direct {p0, v4, v0, p2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 207
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
    .locals 0

    .line 262
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
