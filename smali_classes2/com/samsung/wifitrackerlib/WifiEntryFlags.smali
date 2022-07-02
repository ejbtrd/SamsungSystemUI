.class public Lcom/samsung/wifitrackerlib/WifiEntryFlags;
.super Ljava/lang/Object;
.source "WifiEntryFlags.java"


# static fields
.field private static isSupportToShowUnsecuredNetworkString:I = -0x1

.field private static isTencentSecuritySupported:I = -0x1

.field private static isWapiSupported:I = -0x1

.field private static isWpa3OweSupported:I = -0x1

.field private static isWpa3SaeH2eSupported:I = -0x1

.field private static isWpa3SaeSupported:I = -0x1

.field private static isWpa3SuiteBSupported:I = -0x1

.field private static sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

.field private static sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field public has6EStandard:Z

.field public hasSamsungScore:Z

.field public hasVHTVSICapabilities:Z

.field public isCaptivePortal:Z

.field public isCarrierNetwork:Z

.field public isH2ENetwork:Z

.field public isLockedNetwork:Z

.field public isOAuthProvider:Z

.field public isSamsungMobileHotspot:Z

.field public isTencentRiskAp:Z

.field private final mVhtVsiBssids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maybeMobileHotspot:Z

.field public networkScoringUiEnabled:Z

.field public networkType:I

.field public passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final qoSScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifitrackerlib/WifiScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public staCount:I

.field public wifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->qoSScoredNetworkCache:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->mVhtVsiBssids:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    .line 98
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public static getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .locals 2

    .line 391
    sget-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOpBranding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointFlags"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    sget-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-object v0
.end method

.method public static getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
    .locals 1

    .line 310
    sget-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;-><init>()V

    sput-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    .line 313
    :cond_0
    sget-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    return-object v0
.end method

.method private hasKtVhtVsiCapabilities(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 259
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    new-array v0, p0, [B

    .line 260
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    .line 261
    aget-byte v2, v0, v1

    if-eqz v2, :cond_2

    :cond_0
    const/16 v2, 0x18

    if-le p0, v2, :cond_1

    aget-byte p0, v0, v2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method public static isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 344
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3OweSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3OweSupported:I

    .line 347
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3OweSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportQosNetworkRating(Lcom/samsung/android/wifi/SemWifiManager;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "AccessPointFlags"

    const-string v0, "SemWifiManager: null"

    .line 384
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedQoSProvider()Z

    move-result p0

    return p0
.end method

.method public static isSupportToShowUnsecuredSummary()Z
    .locals 4

    .line 375
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSupportToShowUnsecuredNetworkString:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 377
    sget-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v3, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSupportToShowUnsecuredNetworkString:I

    .line 379
    :cond_1
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSupportToShowUnsecuredNetworkString:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isTencentSecuritySupported()Z
    .locals 2

    .line 367
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentSecuritySupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 369
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentSecuritySupported:I

    .line 371
    :cond_0
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentSecuritySupported:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWapiSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 360
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWapiSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWapiSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWapiSupported:I

    .line 363
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWapiSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SaeH2eSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 336
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeH2eSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeH2eSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeH2eSupported:I

    .line 339
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeH2eSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 329
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeSupported:I

    .line 332
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 352
    sget v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SuiteBSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p0

    sput p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SuiteBSupported:I

    .line 355
    :cond_0
    sget p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SuiteBSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetSupportedFlags()V
    .locals 1

    const/4 v0, -0x1

    .line 317
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeSupported:I

    .line 318
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SaeH2eSupported:I

    .line 319
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3OweSupported:I

    .line 320
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWpa3SuiteBSupported:I

    .line 321
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isWapiSupported:I

    .line 322
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentSecuritySupported:I

    .line 323
    sput v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSupportToShowUnsecuredNetworkString:I

    const/4 v0, 0x0

    .line 324
    sput-object v0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->sVendor:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method


# virtual methods
.method public checkAndSetRisk(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentRiskAp:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isRiskAp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentRiskAp:Z

    :cond_0
    return-void
.end method

.method public getSemDisableReason()I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    iget v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->wifiStandard:I

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->has6EStandard:Z

    if-eqz v1, :cond_0

    const-string v1, "E"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "G"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    iget v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    if-ltz v1, :cond_2

    const-string v1, " STAs:"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_3

    const-string v1, " hs20"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->hasVHTVSICapabilities:Z

    if-eqz v1, :cond_4

    const-string v1, " giga"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSamsungMobileHotspot:Z

    if-eqz v1, :cond_5

    const-string v1, " sec-mhs"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->maybeMobileHotspot:Z

    if-eqz v1, :cond_6

    const-string v1, " mhs"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v1, :cond_7

    const-string v1, " carrier"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isOAuthProvider:Z

    if-eqz v1, :cond_8

    const-string v1, " oauth"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_8
    iget-boolean p0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentRiskAp:Z

    if-eqz p0, :cond_9

    const-string p0, " risk"

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllCapabilities()V
    .locals 2

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->hasVHTVSICapabilities:Z

    .line 118
    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->mVhtVsiBssids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 119
    iput v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->wifiStandard:I

    .line 120
    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->has6EStandard:Z

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    return-void
.end method

.method public updateFlags(Landroid/net/wifi/ScanResult;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v0

    .line 179
    iget v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->wifiStandard:I

    if-ge v1, v0, :cond_1

    .line 180
    iput v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->wifiStandard:I

    .line 182
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->has6EStandard:Z

    const/4 v2, 0x0

    const-string v3, "AccessPointFlags"

    const/4 v4, 0x1

    if-nez v1, :cond_3

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 183
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->has6EStandard:Z

    if-nez v0, :cond_3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid Wi-Fi 6E network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isTencentSecuritySupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v5}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->checkAndSetRisk(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 193
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v5

    const/16 v6, 0xb

    const-string v7, " BufferUnderflowException ie:"

    if-eq v5, v6, :cond_c

    const/16 v6, 0x32

    if-eq v5, v6, :cond_8

    const/16 v6, 0xdd

    if-eq v5, v6, :cond_6

    goto :goto_1

    .line 226
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const v8, 0xffffff

    and-int/2addr v8, v6

    const v9, 0x321600

    if-ne v8, v9, :cond_7

    ushr-int/lit8 v1, v6, 0x18

    const/16 v6, 0x80

    if-ne v1, v6, :cond_5

    .line 231
    iput-boolean v4, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isSamsungMobileHotspot:Z

    goto :goto_1

    .line 233
    :cond_7
    sget-object v8, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-static {}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v9

    if-ne v8, v9, :cond_5

    iget v8, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v9, 0x1324

    if-le v8, v9, :cond_5

    const v8, 0x11c31700

    if-ne v6, v8, :cond_5

    .line 236
    invoke-direct {p0, v1}, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->hasKtVhtVsiCapabilities(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->mVhtVsiBssids:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iput-boolean v4, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->hasVHTVSICapabilities:Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_8
    iget-object v6, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-eqz v6, :cond_b

    array-length v8, v6

    const/16 v9, 0x8

    if-gt v8, v9, :cond_b

    array-length v6, v6

    if-ge v6, v4, :cond_9

    goto :goto_3

    .line 212
    :cond_9
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v8, v2

    .line 213
    :goto_2
    iget-object v9, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 214
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_a

    .line 216
    iput-boolean v4, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isH2ENetwork:Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 221
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    :goto_3
    return-void

    .line 199
    :cond_c
    :try_start_2
    iget v6, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    if-gez v6, :cond_d

    iput v2, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    .line 200
    :cond_d
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 201
    iget v6, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v8, 0xffff

    and-int/2addr v1, v8

    add-int/2addr v6, v1

    iput v6, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->staCount:I
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 203
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public updateFlags(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isCarrierNetwork:Z

    :cond_1
    return-void
.end method

.method public updateFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2

    .line 129
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung.openroaming.net"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpenRoaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isOAuthProvider:Z

    :cond_1
    return-void
.end method

.method public updateFlags(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 1

    .line 148
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p1, :cond_0

    .line 150
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean v0, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isLockedNetwork:Z

    .line 151
    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isCaptivePortal:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isLockedNetwork:Z

    .line 154
    iput-boolean p1, p0, Lcom/samsung/wifitrackerlib/WifiEntryFlags;->isCaptivePortal:Z

    :goto_0
    return-void
.end method
