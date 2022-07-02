.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/settingslib/SignalIcon$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mHasMobileDataFeature:Z

.field private mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private final mProviderModelSetting:Z

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field private mWifiIconInfo:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

.field private mWifiIconResource:Lcom/android/systemui/statusbar/utils/WifiIconResource;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public static synthetic $r8$lambda$Z4-p5zzA9Fv3s3CeygZbi0Jxwk0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/NetworkDependency;Landroid/os/Looper;)V
    .locals 9

    move-object v6, p0

    move-object v7, p5

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 73
    sget-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 98
    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v8, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, v8

    move-object v2, p5

    move-object/from16 v3, p7

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    move v0, p2

    .line 105
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v7, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {p5, v0, v1}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 111
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->SAMSUNG_WIFI_SIGNAL_STRENGTH:[[I

    iput-object v1, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->sbIcons:[[I

    .line 114
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    move-object/from16 v0, p9

    .line 115
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    move-object/from16 v0, p10

    .line 116
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 117
    const-class v0, Lcom/android/systemui/statusbar/utils/WifiIconResource;

    move-object/from16 v1, p11

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NetworkDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/WifiIconResource;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconResource:Lcom/android/systemui/statusbar/utils/WifiIconResource;

    .line 120
    :cond_1
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v2, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v2, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 121
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/statusbar/FeatureFlags;->isProviderModelSettingEnabled()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModelSetting:Z

    .line 124
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 125
    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiIconVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    .line 128
    :cond_3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    .line 132
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconInfo:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    .line 135
    new-instance v0, Landroid/os/Handler;

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v8, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setHandler(Landroid/os/Handler;)V

    .line 136
    invoke-virtual {v8, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    return-void
.end method

.method private copyWifiStates()V
    .locals 7

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 356
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    .line 357
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 358
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 359
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    .line 360
    iget v0, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyWifiLevelChangeIfNecessary(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 362
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 363
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    .line 364
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 365
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 366
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iput-object v0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->customWifi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWifiGiga()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIsGigaAp:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkId:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    .line 376
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWiFi6G()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v5, v4, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiStandard:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    .line 381
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    if-eqz v0, :cond_3

    iget v0, v4, Lcom/android/settingslib/wifi/WifiStatusTracker;->frequency:I

    .line 382
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWiFiFlashing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-nez v3, :cond_5

    .line 387
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    goto :goto_3

    .line 388
    :cond_5
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    if-nez v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_6

    .line 390
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received report from WifiManager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_6

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    :cond_6
    :goto_3
    return-void
.end method

.method private getCurrentIconIdForCarrierWifi()I
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 302
    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v3, :cond_1

    .line 303
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 304
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz p0, :cond_2

    .line 305
    invoke-static {v1}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_2
    return v4
.end method

.method private getQsCurrentIconIdForCarrierWifi()I
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result p0

    return p0
.end method

.method private handleStatusUpdated()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 18

    move-object/from16 v0, p0

    .line 264
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 269
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 268
    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v5, :cond_0

    .line 271
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v11, v3

    .line 273
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v5, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 275
    :goto_0
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v6

    invoke-direct {v5, v3, v6, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    if-eqz v3, :cond_2

    .line 277
    iget v6, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 281
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 282
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconIdForCarrierWifi()I

    move-result v8

    invoke-direct {v4, v6, v8, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move v8, v3

    move-object v6, v4

    goto :goto_2

    :cond_3
    move v8, v4

    .line 285
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 286
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getNetworkNameForCarrierWiFi(I)Ljava/lang/String;

    move-result-object v13

    .line 287
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v3, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v10, v3, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    iget-boolean v14, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v15, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    move-object/from16 v0, p1

    .line 293
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V

    return-void
.end method

.method private notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 14

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isFakeConditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->getFakeNetworkConditions()Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->getFakeWifiStateConditions(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->copyFrom(Lcom/android/settingslib/SignalIcon$State;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showWifiIndicatorWhenEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->hideWiFiDuringSwitchToMobile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    move-object v11, v2

    goto :goto_2

    :cond_5
    move-object v11, v1

    :goto_2
    if-eqz v0, :cond_6

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v4

    .line 190
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 191
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v6, v6, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v6, :cond_7

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModelSetting:Z

    if-eqz v6, :cond_d

    .line 195
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v6

    invoke-direct {v7, v0, v6, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRadioOn()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 199
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEthernetDefault()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move-object v8, v1

    goto :goto_7

    .line 200
    :cond_9
    :goto_5
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 201
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v8, v8, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v8, :cond_a

    sget v8, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_6

    .line 202
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v8

    :goto_6
    invoke-direct {v1, v6, v8, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_4

    .line 204
    :goto_7
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v2, :cond_b

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v9, :cond_b

    move v9, v3

    goto :goto_8

    :cond_b
    move v9, v4

    :goto_8
    if-eqz v2, :cond_c

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v2, :cond_c

    move v10, v3

    goto :goto_9

    :cond_c
    move v10, v4

    :goto_9
    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v12, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v13, v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 210
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V

    goto :goto_d

    .line 212
    :cond_d
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v1

    invoke-direct {v7, v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 214
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 215
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v6, v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v6, :cond_e

    sget v6, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_a

    .line 216
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v6

    :goto_a
    invoke-direct {v8, v1, v6, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 217
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v2, :cond_f

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v9, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v9, :cond_f

    move v9, v3

    goto :goto_b

    :cond_f
    move v9, v4

    :goto_b
    if-eqz v2, :cond_10

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v2, :cond_10

    move v10, v3

    goto :goto_c

    :cond_10
    move v10, v4

    :goto_c
    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v12, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v13, v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getActivityIcon()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->activityIcon:I

    .line 226
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V

    .line 230
    :goto_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyListener: visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", connected="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", inetCondition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDefault="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", receivedCR="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", receivedIC="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", shouldForceHide="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", emptyConnected="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportMultiPathTCPIcon()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 248
    :cond_11
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME_AS_PLMN:Z

    if-eqz p1, :cond_14

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v0, :cond_13

    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->wifi_connected_notification_title:I

    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateApName(Ljava/lang/String;)V

    goto :goto_e

    .line 254
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateApName(Ljava/lang/String;)V

    goto :goto_e

    .line 257
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateApName(Ljava/lang/String;)V

    :cond_14
    :goto_e
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 471
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/settingslib/SignalIcon$State;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0

    .line 142
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 460
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 461
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fetchInitialState()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method getActivityIcon()I
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconInfo:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 417
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v2, :cond_3

    .line 418
    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    .line 419
    aget v1, v0, p0

    goto :goto_0

    .line 420
    :cond_0
    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    .line 421
    aget v1, v0, p0

    goto :goto_0

    .line 422
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 423
    aget v1, v0, p0

    goto :goto_0

    .line 425
    :cond_2
    aget v1, v0, v1

    :cond_3
    :goto_0
    return v1
.end method

.method public getCurrentIconId()I
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconResource:Lcom/android/systemui/statusbar/utils/WifiIconResource;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconInfo:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->sbIcons:[[I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->updateWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;[[I)V

    .line 438
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiIconInfo:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 3

    .line 328
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWiFiFlashing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.WIFI_CONNECTIVITY_ACTION"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    .line 333
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, -0x1

    const-string/jumbo v2, "valid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_WIFI_CONNECTIVITY_REPORT receivedInetCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "com.sec.android.WIFI_ICON_HIDE_ACTION"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI_ICON_HIDE_ACTION received: shouldForceHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->shouldForceHide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method isCarrierMergedWifi(I)Z
    .locals 1

    .line 408
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method notifyWifiLevelChangeIfNecessary(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    if-eq p1, v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyWifiLevelChange(I)V

    :cond_0
    return-void
.end method

.method refreshLocale()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 453
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isEmptyConnectedTransport:Z

    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-void
.end method

.method public declared-synchronized updateEpdgConnectionState(Z)V
    .locals 1

    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
