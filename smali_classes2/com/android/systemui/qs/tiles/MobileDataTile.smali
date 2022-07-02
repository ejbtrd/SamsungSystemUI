.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;"
    }
.end annotation


# static fields
.field static final DATA_SETTINGS:Landroid/content/Intent;

.field static final DATA_SETTINGS_UPSM:Landroid/content/Intent;


# instance fields
.field private final SIM_1:I

.field private final SIM_2:I

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mIsVoLteCall:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$-PBk5TARzmCbniTNRrxl8KvhXJk(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$14183FrS_-PZe6wqw0xhmfxfb40(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1SxShVLH5aB0uUBSyExaWkOdZFY(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ugkURy5RNwVPF3998Qh-oNOhNg(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BzFTh44Y9dphOoDQpFQXM3xRdXg(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JzoyXffeLGiVeINDhaoqo65qUik(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4iNMkjuRwKqq0WL9-XOo2z03_M(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$getLongClickIntent$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$USYozyk6UdW2dmgQf1ZscfX2vhM(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$setDataRoaming$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8R8YhaRF-uXcFbW3hXHM5qEZVc(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$9(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dYkT9o95tEEE5IzBjBtkRA5SFmk(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsgq3rAqkSNr-m2gn7q-wrT_JXY(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$showPopupDialog$13(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kutcsKK3MvsxFpojLG7_lccYjoc(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$setDataRoaming$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mkjq_PxgMJhzurDB66zz-N_9j8E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofL0cyYp8oitVUa28KA9ZBbDzqQ(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3R9giLLCExKZhjvnp7pIDYrWfA(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleSecondaryClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2RcPWD1Ol9o5yjV7u8QEm5M6Q0(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->lambda$handleClick$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.DATA_USAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 124
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->SIM_1:I

    const/4 p1, 0x1

    .line 108
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->SIM_2:I

    .line 499
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 583
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 126
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo p4, "mobile_data"

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 133
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string p4, "airplane_mode_on"

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 140
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 141
    invoke-interface {p9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 142
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 143
    iput-object p7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 144
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 145
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 147
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 151
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    return p1
.end method

.method private isDataRoamingEnabled()Z
    .locals 2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_roaming"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isNetworkRoaming()Z
    .locals 2

    .line 527
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    .line 535
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isNetworkRoaming : Roaming state"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private synthetic lambda$getLongClickIntent$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$11(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 417
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$3(Landroid/view/View;)V
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleClick$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 372
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleClick$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private static synthetic lambda$handleClick$8(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$handleClick$9(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 402
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 403
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string/jumbo p3, "mobile_data_off_popup_show_again"

    .line 402
    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$handleSecondaryClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$setDataRoaming$14(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 559
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "data_roaming"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$setDataRoaming$15(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private synthetic lambda$showPopupDialog$13(Landroid/content/DialogInterface;)V
    .locals 0

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 607
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x801

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 9

    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataRoaming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 554
    invoke-static {}, Lcom/android/systemui/Operator;->shouldShowRoamingEnabledPopup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_data_roaming_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_roaming_enable:I

    .line 556
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->quick_settings_allow:I

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    sget v6, Lcom/android/systemui/R$string;->quick_settings_block:I

    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v8, 0x0

    move-object v1, p0

    .line 555
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    const-string p1, "content://com.samsung.android.app.telephonyui.internal"

    .line 567
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 569
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "roaming_data_popup"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    invoke-static {p1}, Lcom/android/systemui/Operator;->getIntentForDisabledSetDataRoaming(Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 578
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->mobile_data_roaming_disable_toast_lgt:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_1

    .line 485
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 486
    sget p2, Lcom/android/systemui/R$dimen;->checkbox_popup_text_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 487
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p7

    .line 486
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 490
    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    .line 492
    invoke-virtual {v0, p5, p6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 493
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 495
    new-instance p1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 496
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 11

    .line 220
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 221
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 222
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUserMobileDataRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRoamingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v2

    .line 231
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->insert_sim_card:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->insert_sim_card_message:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    .line 236
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-object v2

    .line 244
    :cond_3
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-object p0

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 247
    invoke-static {}, Lcom/android/systemui/Operator;->getMobileDataRoamingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 249
    :cond_5
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    return-object p0

    .line 223
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_data_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 12

    .line 296
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-eqz v1, :cond_1

    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_toast_not_disable_during_voltecall:I

    invoke-static {p0, p1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 306
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_toast_airplane_mode:I

    invoke-static {p0, p1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " is enabled :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v1, :cond_3

    return-void

    .line 314
    :cond_3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    if-nez v1, :cond_5

    .line 319
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->insert_sim_card:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->insert_sim_card_message:I

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 319
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void

    .line 327
    :cond_5
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRoamingAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 332
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 333
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v1, v3, :cond_7

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_8

    .line 336
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOnOffPopup()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataConnectionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 344
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKeyguardVisible() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSecure() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 345
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSkipBouncer() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 346
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockFunctionsEnabled() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOnOffPopup()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto/16 :goto_1

    .line 353
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 355
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    move-result p1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_data_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_turn_off:I

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    sget v7, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda11;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v9, 0x0

    move-object v2, p0

    .line 356
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto/16 :goto_1

    .line 367
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    move-result p1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_data_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    sget v7, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v9, 0x0

    move-object v2, p0

    .line 368
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto/16 :goto_1

    .line 379
    :cond_b
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffDontShowPopup()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "mobile_data_off_popup_show_again"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    move v3, v2

    .line 382
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClick : doNotShowAgainChecked :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_d

    .line 384
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto/16 :goto_1

    .line 389
    :cond_d
    sget p1, Lcom/android/systemui/R$string;->mobile_data_turn_off_title:I

    .line 390
    invoke-static {}, Lcom/android/systemui/Operator;->getMessageIdMobileDataOff()I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 392
    sget v2, Lcom/android/systemui/R$layout;->sec_mobile_data_dont_show_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 393
    sget v1, Lcom/android/systemui/R$id;->mobile_data_message_text:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 394
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    sget v0, Lcom/android/systemui/R$id;->do_not_show_again:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 396
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_turn_off:I

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda12;

    invoke-direct {v8, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    sget v9, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto :goto_1

    .line 410
    :cond_e
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffPopup()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 411
    sget p1, Lcom/android/systemui/R$string;->mobile_data_title:I

    .line 412
    invoke-static {}, Lcom/android/systemui/Operator;->getMessageIdMobileDataOff()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_turn_off:I

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    sget v7, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    new-instance v8, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v9, 0x0

    move-object v2, p0

    .line 413
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto :goto_1

    .line 429
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 9

    .line 260
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 264
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_toast_airplane_mode:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 268
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUserMobileDataRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->insert_sim_card:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->insert_sim_card_message:I

    .line 276
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 275
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void

    .line 284
    :cond_3
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRoamingAllowed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 289
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void

    .line 270
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5

    .line 184
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-eqz p1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    .line 197
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    .line 199
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 198
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    .line 208
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportDataRoamingInMobileData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 215
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    .line 440
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 441
    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_data_connection:I

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 443
    sget v0, Lcom/android/systemui/R$string;->quick_settings_data_roaming_label:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 444
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p2

    if-eq p2, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoamingEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_2

    .line 446
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_data_label:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 447
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p2

    if-eq p2, v2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 449
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState : state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_3

    :cond_3
    move p2, v2

    :goto_3
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 452
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 454
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 455
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-eqz p2, :cond_4

    .line 456
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 459
    :cond_4
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 460
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :cond_5
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 159
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

    .line 171
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
