.class public Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;
.super Ljava/lang/Object;
.source "WifiQoSScoredCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
    }
.end annotation


# static fields
.field private static final SUPPORT_COMCAST_WIFI:Z


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifitrackerlib/WifiScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

.field private final mLock:Ljava/lang/Object;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->SUPPORT_COMCAST_WIFI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    const-string/jumbo v0, "sem_wifi"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 84
    iput-object p2, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    return-void
.end method

.method private static DBG()Z
    .locals 2

    .line 62
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "WifiTracker.WifiWifiQoSScoreCache"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearScores()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScoredNetwork(Landroid/net/wifi/ScanResult;)Lcom/samsung/wifitrackerlib/WifiScoredNetwork;
    .locals 1

    .line 183
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    .line 188
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public makeScoredNetworkforBssid(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/wifitrackerlib/WifiScoredNetwork;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/wifitrackerlib/WifiScoredNetwork;"
        }
    .end annotation

    const-string/jumbo p0, "networkType"

    .line 134
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "levelMax-2"

    .line 135
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "levelMax-1"

    .line 136
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "levelMax"

    .line 137
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 138
    new-instance p2, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    invoke-direct {p2, p1, p0, v0}, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;-><init>(Ljava/lang/String;I[I)V

    return-object p2
.end method

.method public networkScoreEnablingCheck()Z
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    sget-boolean v1, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->SUPPORT_COMCAST_WIFI:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string/jumbo v3, "sem_wifi_network_rating_scorer_enabled"

    .line 143
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 146
    invoke-static {v3}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSupportQosNetworkRating(Lcom/samsung/android/wifi/SemWifiManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 149
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network Score Enabling Check "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public requestScoresForBssid(Ljava/util/Collection;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    .line 99
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkKey;

    .line 102
    iget-object v5, v4, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v5, v5, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v4, v4, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v4, v4, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->clearScores()V

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    .line 114
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->DBG()Z

    move-result v3

    const-string v4, "WifiTracker.WifiWifiQoSScoreCache"

    if-eqz v3, :cond_4

    const-string v3, "------ Add scored data start -----"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->makeScoredNetworkforBssid(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/wifitrackerlib/WifiScoredNetwork;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->updateScores(Ljava/lang/String;Lcom/samsung/wifitrackerlib/WifiScoredNetwork;)V

    .line 119
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_6
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->DBG()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "------ Add scored data end -----"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key set are removed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    if-eqz p1, :cond_8

    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    if-eqz p0, :cond_8

    .line 127
    invoke-virtual {p1}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->post()V

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v1
.end method

.method public updateScores(Ljava/lang/String;Lcom/samsung/wifitrackerlib/WifiScoredNetwork;)V
    .locals 2

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget v0, p2, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->networkType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->DBG()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "WifiTracker.WifiWifiQoSScoreCache"

    invoke-virtual {p2}, Lcom/samsung/wifitrackerlib/WifiScoredNetwork;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->mUpdated:Z

    return-void

    :catchall_0
    move-exception p0

    .line 164
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
