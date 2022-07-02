.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/LinearLayout;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;
    }
.end annotation


# static fields
.field private static sActiveInterface:Ljava/lang/String; = null

.field private static sNetspeedSwitch:Z = false

.field private static sVpnConnected:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttached:Z

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private mContentMarginEnd:I

.field private mContentView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkModeFillColor:I

.field private mInStatusBar:Z

.field private mLightModeFillColor:I

.field private mMaxWidth:I

.field private mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

.field private mNetworkStats:Z

.field private mNetworkStatsHandler:Landroid/os/Handler;

.field private mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mNonAdaptedSingleToneColor:I

.field private mRegisterReceiver:Z

.field private mScreenOn:Z

.field private mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

.field private mSmallestScreenWidthDp:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "NetworkSpeedView"

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 99
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 217
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSmallestScreenWidthDp:I

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "NetworkSpeedView"

    .line 82
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 87
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 90
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 97
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 98
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    .line 101
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 217
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSmallestScreenWidthDp:I

    .line 505
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "NetworkSpeedView"

    .line 82
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 87
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 p3, 0x0

    .line 89
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 90
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 97
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 98
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    .line 101
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 129
    new-instance p3, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance p3, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 217
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSmallestScreenWidthDp:I

    .line 505
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sActiveInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    sput-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sActiveInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getActiveInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sVpnConnected:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 76
    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sVpnConnected:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 76
    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private getActiveInterface(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 517
    const-class p0, Landroid/net/VpnManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/VpnManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 518
    iget-object p0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 334
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getExcludeCutoutOffset()I
    .locals 4

    .line 306
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->excludeCutoutArea()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 310
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInputProperty()Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayCutoutRect()Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return v1

    .line 317
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 319
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_3

    return v1

    .line 322
    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    invoke-virtual {v2, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 324
    iget p0, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v3

    if-ltz p0, :cond_5

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, p0

    :cond_5
    :goto_0
    return v1
.end method

.method private initView()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_light_mode_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_dark_mode_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_dark_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    return-void
.end method

.method private registerListener()V
    .locals 3

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->registerToHelper()V

    .line 174
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private setNetworkSpeed()V
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sNetspeedSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/16 v0, 0x8

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 179
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$SettingObserver;->unregisterToHelper()V

    .line 183
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    .line 198
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNetworkSpeedInStatusBar()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->sNetspeedSwitch:Z

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->registerListener()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 202
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 223
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_0

    .line 225
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mSmallestScreenWidthDp:I

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->updateScale()V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 253
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 256
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    iget p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    sub-float/2addr p3, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    goto :goto_1

    :cond_1
    const p1, 0x3f3d70a4    # 0.74f

    .line 257
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 258
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    iget p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getColorForDarkIntensity(FII)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedSingleToneColor:I

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 237
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 239
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_netspeed_size:I

    .line 243
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 244
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    mul-float/2addr v2, v0

    .line 242
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_netspeed_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->unregisterListener()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    .line 213
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 188
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 189
    sget v0, Lcom/android/systemui/R$id;->network_speed_contentview:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 286
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 287
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getExcludeCutoutOffset()I

    move-result p1

    .line 289
    iget p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    if-eq p1, p2, :cond_0

    .line 290
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    const/4 p2, 0x0

    .line 291
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 292
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 294
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 266
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 270
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    add-int v0, p1, v1

    .line 274
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    if-le v0, p1, :cond_1

    .line 275
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mMaxWidth:I

    if-eq p1, v0, :cond_2

    .line 278
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public setInStatusBar(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDensityOrFontScaleChanged()V

    return-void
.end method
