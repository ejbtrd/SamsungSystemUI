.class public Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;
.super Lcom/android/wifitrackerlib/NetworkDetailsTracker;
.source "PasspointNetworkDetailsTracker.java"


# instance fields
.field private final mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;


# direct methods
.method public static synthetic $r8$lambda$SfwTVxWb1Qj89Ge2xzZKFdV8FWo(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$3(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIKyFFp_tPQqRnx1jdrmfli3CQ4(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$2(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method

.method private cacheNewScanResults()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateConfig()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V

    .line 255
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 236
    :cond_0
    iget-wide v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->cacheNewScanResults()V

    goto :goto_0

    .line 242
    :cond_1
    iget-wide v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 245
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$conditionallyUpdateConfig$2(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 257
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$conditionallyUpdateConfig$3(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updatePasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method private updateOsuWifiEntryScans(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 189
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 192
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 195
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getOsuProvider()Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    .line 198
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 204
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v3, :cond_1

    .line 205
    iget-object v4, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    new-instance v0, Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/OsuWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 209
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 210
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->setAlreadyProvisioned(Z)V

    .line 211
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    return-void

    .line 218
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 219
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    .line 220
    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    :cond_3
    return-void
.end method

.method private updatePasspointWifiEntryScans(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 164
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 169
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 170
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iput-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 174
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const/4 v2, 0x0

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x1

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateStartInfo()V
    .locals 5

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    .line 149
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    .line 150
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 153
    iget-object v4, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v4, v1, v3}, Lcom/android/wifitrackerlib/WifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 154
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 156
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 157
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->setIsDefaultNetwork(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

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

    .line 116
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    return-object p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 142
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 134
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method
