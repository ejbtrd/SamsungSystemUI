.class public Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;
.super Ljava/lang/Object;
.source "SemWifiEntryFilter.java"


# instance fields
.field private final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field private final DISPLAY_SSID_STATUS_BAR_INFO:Z

.field public disableTencentSecurity:Z

.field private mFilterOAuthPasspointNetworks:Z

.field private mFilterTencentRiskNetworks:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getNotificationStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    return-void
.end method


# virtual methods
.method public isAllowToShowInScanList(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 92
    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    const/4 v0, 0x0

    const/16 v1, -0x4e

    if-ge p0, v1, :cond_0

    return v0

    .line 95
    :cond_0
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v1, 0x1388

    if-le p1, v1, :cond_1

    const/16 v1, 0x1770

    if-ge p1, v1, :cond_1

    const/16 p1, -0x4b

    if-ge p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isAllowToShowInWifiEntryList(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 3

    .line 104
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz p0, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Swisscom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerizonWiFi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->mFilterOAuthPasspointNetworks:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 119
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/SemWifiEntryFilter;->mFilterTencentRiskNetworks:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsTencentRiskAp()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
