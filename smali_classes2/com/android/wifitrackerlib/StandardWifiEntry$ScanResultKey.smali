.class Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;
.super Ljava/lang/Object;
.source "StandardWifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/StandardWifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanResultKey"
.end annotation


# instance fields
.field private mSecurityTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSsid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/ScanResult;Landroid/content/Context;)V
    .locals 1

    .line 1467
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1474
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object p1

    .line 1474
    invoke-direct {p0, v0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    .line 1432
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 1433
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1434
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1449
    :cond_0
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1453
    :cond_1
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1446
    :cond_2
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1456
    :cond_3
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1442
    :cond_4
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1439
    :cond_5
    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1529
    const-class v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1530
    :cond_1
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 1531
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    .line 1532
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getSecurityTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1523
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    return-object p0
.end method

.method getSsid()Ljava/lang/String;
    .locals 0

    .line 1519
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1537
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1500
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1502
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "SSID"

    .line 1503
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1505
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1506
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1507
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1508
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p0, "SECURITY_TYPES"

    .line 1510
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException while converting ScanResultKey to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StandardWifiEntry"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
