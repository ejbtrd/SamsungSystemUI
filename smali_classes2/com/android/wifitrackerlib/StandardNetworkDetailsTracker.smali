.class public Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;
.super Lcom/android/wifitrackerlib/NetworkDetailsTracker;
.source "StandardNetworkDetailsTracker.java"


# instance fields
.field private final mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private final mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;


# direct methods
.method public static synthetic $r8$lambda$HPzvZMo4sSoedq8K9zIWbnkPocc(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$1(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VNJx-BfZ-i5neJn83Hm7x-OwKCs(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->configMatches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gGuXyKnEqhcJgu-vi5B7wy_RNck(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->lambda$cacheNewScanResults$2(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uwDsEET44k56EhRocr4DVGQHq9A(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$0(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cacheNewScanResults()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;)V

    .line 186
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 187
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 185
    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateConfig()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 173
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;)V

    .line 174
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 175
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 176
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;

    .line 178
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 177
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 176
    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSemConfig(Ljava/util/Map;)V

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void

    .line 156
    :cond_0
    iget-wide v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->cacheNewScanResults()V

    goto :goto_0

    .line 162
    :cond_1
    iget-wide v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 164
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private configMatches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 191
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->isTargetingNewNetworks()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$cacheNewScanResults$2(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 186
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->getScanResultKey()Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$conditionallyUpdateConfig$0(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$conditionallyUpdateConfig$1(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 0

    return-object p0
.end method

.method private updateStartInfo()V
    .locals 5

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateConfig()V

    .line 135
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 138
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {v4, v1, v3}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 139
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 140
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 141
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 142
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->setIsDefaultNetwork(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setIsLowQuality(Z)V

    return-void
.end method


# virtual methods
.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    return-object p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 121
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateConfig()V

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onScoreCacheUpdated()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 113
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method
